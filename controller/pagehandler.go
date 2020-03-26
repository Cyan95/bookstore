package controller

import (
	"github.com/Cyan95/day02/bookstore0612/dao"
	"github.com/Cyan95/day02/bookstore0612/model"
	"html/template"
	"log"
	"net/http"
)

func GetPageBooks(w http.ResponseWriter, r *http.Request) {
	//调用bookdao中获取所有图书的函数
	pageNo := r.FormValue("pageNo")
	if pageNo == "" {
		pageNo = "1"
	}
	page, _ := dao.GetPageBooks(pageNo)
	//解析模板文件
	t := template.Must(template.ParseFiles("views/pages/manager/book_manager.html"))
	//执行
	t.Execute(w, page)
}

//
//func GetPageBooksByPrice(w http.ResponseWriter, r *http.Request) {
//	//调用bookdao中获取所有图书的函数
//	pageNo:=r.FormValue("pageNo")
//	minPrice:=r.FormValue("min")
//	maxPrice:=r.FormValue("max")
//	if pageNo==""{
//		pageNo="1"
//	}
//	page, _ := dao.GetPageBooksByPrice(pageNo,minPrice,maxPrice)
//	//解析模板文件
//	t := template.Must(template.ParseFiles("views/index.html"))
//	//执行
//	t.Execute(w, page)
//}

//GetPageBooksByPrice 获取带分页和价格范围的图书
func GetPageBooksByPrice(w http.ResponseWriter, r *http.Request) {
	//获取页码
	pageNo := r.FormValue("pageNo")
	//获取价格范围
	minPrice := r.FormValue("min")
	maxPrice := r.FormValue("max")
	log.Println("pageNo", pageNo, ",min", minPrice, ",max", maxPrice)
	if pageNo == "" {
		pageNo = "1"
	}
	var page *model.Page
	if minPrice == "" && maxPrice == "" {
		//调用bookdao中获取带分页的图书的函数
		page, _ = dao.GetPageBooks(pageNo)
	} else {
		//调用bookdao中获取带分页和价格范围的图书的函数
		page, _ = dao.GetPageBooksByPrice(pageNo, minPrice, maxPrice)
		//将价格范围设置到page中
		page.MinPrice = minPrice
		page.MaxPrice = maxPrice
	}
	//调用IsLogin函数判断是否已经登录
	//log.Println("正在验证cookie...")
	flag, sess := dao.IsLogin(r)

	if flag {
		//已经登录，设置page中的IsLogin字段和Username的字段值
		page.IsLogin = true
		page.Username = sess.UserName

		//log.Println(page.Username,"登录成功")
	}

	//解析模板文件
	t := template.Must(template.ParseFiles("views/index.html"))
	//执行
	t.Execute(w, page)
}
