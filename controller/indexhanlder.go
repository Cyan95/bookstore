package controller

import (
	"github.com/Cyan95/day02/bookstore0612/dao"
	"html/template"
	"net/http"
)

// IndexHandler 去首页
func IndexHandler(w http.ResponseWriter, r *http.Request) {
	//调用bookdao中获取所有图书的函数
	pageNo := r.FormValue("pageNo")
	if pageNo == "" {
		pageNo = "1"
	}
	page, _ := dao.GetPageBooks(pageNo)
	//解析模板文件
	t := template.Must(template.ParseFiles("views/index.html"))
	//执行
	t.Execute(w, page)
}
