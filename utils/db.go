package utils

import (
	"database/sql"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
)

var (
	Db  *sql.DB
	err error
)

func init() {
	Db, err = sql.Open("mysql", "root:123456@tcp(172.16.65.239:3306)/bookstore")
	if err != nil {
		panic(err.Error())
	} else {
		fmt.Println("数据库连接成功！")
	}
}
