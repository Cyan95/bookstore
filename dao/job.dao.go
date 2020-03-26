package dao

import (
	"fmt"
	"github.com/Cyan95/day02/bookstore0612/model"
	"github.com/Cyan95/day02/bookstore0612/utils"
)

func SelectJobWithInviteCode(inviteCode string) (job *model.Job, err error) {
	sql := "select * from jobs where id=?"
	fmt.Println("sql")
	row := utils.Db.QueryRow(sql, inviteCode)
	if row == nil {
		return nil, err
	}
	job = &model.Job{}
	err = row.Scan(&job.ID, &job.Company, &job.Post, &job.Slogan)
	fmt.Println(job.ID, job.Company, job.Post, job.Slogan)
	return
}
