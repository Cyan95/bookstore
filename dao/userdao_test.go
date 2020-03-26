package dao

import (
	"fmt"
	"github.com/Cyan95/day02/bookstore0612/model"
	"testing"
)

func TestUser(t *testing.T) {
	//fmt.Println("测试userdao中的函数")
	//t.Run("验证用户名或密码：", testLogin)
	//t.Run("验证用户名：", testRegist)
	//t.Run("保存用户：", testSave)
	//t.Run("查询岗位：", testSelectJobWithInviteCode)
	t.Run("查询所有图书：", testGetCartByUserID)
}

func testLogin(t *testing.T) {
	user, _ := CheckUserNameAndPassword("admin", "123456")
	fmt.Println("获取用户信息是：", user)
}
func testRegist(t *testing.T) {
	user, _ := CheckUserName("admin")
	fmt.Println("获取用户信息是：", user)
}
func testSave(t *testing.T) {
	SaveUser("admin3", "123456", "admin@atguigu.com")
}

func testSelectJobWithInviteCode(t *testing.T) {
	SelectJobWithInviteCode("10")
}
func testGetPageBooks(t *testing.T) {
	books, _ := GetPageBooks("3")
	fmt.Println("获取所有的书！")
	for _, book := range books.Books {
		fmt.Println(*book)
	}
}

func testAddCart(t *testing.T) {
	book := &model.Book{
		ID:    1,
		Price: 100,
	}
	book2 := &model.Book{
		ID:    2,
		Price: 20,
	}
	cartitem := model.CartItem{
		Book:  book,
		Count: 2,
	}
	cartitem2 := model.CartItem{
		Book:   book2,
		Count:  3,
		CartID: "ass",
	}
	items := []*model.CartItem{}
	items = append(items, &cartitem)
	items = append(items, &cartitem2)
	cart := model.Cart{
		CartID:    "ass",
		CartItems: items,
		UserID:    3,
	}
	AddCart(&cart)
}
func testGetCartByUserID(t *testing.T) {
	cart, _ := GetCartByUserID(3)
	fmt.Println(cart)
}
