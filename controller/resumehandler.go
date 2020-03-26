package controller

import (
	"github.com/Cyan95/day02/bookstore0612/dao"
	"html/template"
	"log"
	"net/http"
)

//Login 处理用户登录的函数
func ResumeHandler(w http.ResponseWriter, r *http.Request) {
	//获取用户名和密码
	inviteCode := r.FormValue("inviteCode")
	if inviteCode == "" {
		inviteCode = r.PostFormValue("invitecode")
	}
	log.Println("inviteCode=", inviteCode)
	//调用userdao中验证用户名和密码的方法

	job, err := dao.SelectJobWithInviteCode(inviteCode)
	if err != nil {
		t := template.Must(template.ParseFiles("views/pages/resume/loadError.html"))
		t.Execute(w, "邀请码无效，请重新输入：")
		return
	}
	//fmt.Println(job.Company, " HR,欢迎！")
	t := template.Must(template.ParseFiles("views/pages/resume/resume.html"))
	t.Execute(w, job)
	return
}
