/*
iweb项目的后台动态Web服务器
功能：
	接收客户端提交的HTTP请求(request)，
	读取请求中客户端提交出来的数据；
	向数据库服务器提交SQL命令以操作底层数据；
	最后想客户端发送HTTP响应(response)，说明执行成功还是失败
*/
//引入第三方提供的express模块
const express = require('express')

//使用第三方模块创建一个Web服务器
let app = express()
//让Web服务器监听的指定的端口上,即启动Web服务器
let port = 5050  //提示：此处在为新浪云服务器做铺垫
app.listen(port,()=>{
	console.log('Server Listening on Port: ',port)
})
/*
//让Web服务器接收一个特定的请求，并回复该请求
app.get('/index',(req,res)=>{
	res.send('Welcome to My Site Index!')
})
//让Web服务器接收一个特定的请求，并回复该请求
app.get('/login',(req,res)=>{
	res.send('Welcome to My Login Page!')
})
*/


/*
	API1.1:向客户端输出“排名前12位的最新课程”
	请求方法：GET
	请求地址：/course/newest
	请求参数：无
	响应数据：
	{
		{
			cid:3,
			cname:'微信小程序开发',
			pic:'img/course/3.jpg',
			tname:'程涛',
			tid:5,
			price:599
		},
		{
			...
		}
	}
*/


/*
	创建数据库的连接池，其中包含10个链接，用于连接到数据库
*/
// 导入第三方模块mysql
const mysql = require('mysql')
//使用第三方模块mysql创建数据库连接池
let pool = mysql.createPool({
	host:'127.0.0.1', 	//数据库服务器的地址
	port:'3306',		//数据库服务器的端口号
	user:'root',		//数据库管理员用户名
	password:'',		//数据库登录密码
	database:'iweb',	//数据库名称
	connectionLimit:10,	//数据库连接的最大数量
})

app.get('/course/newest',(req,res)=>{
	//向数据库服务器发送查询请求，获得必需的课程数据:前12条(即从第0行开始读取12行)：且最新课程（即按课程编号由大到小排序）,同时还要跨表查询（同时查询course和teacher两个表）
	let sql = 'SELECT iw_course.cid,iw_course.cname,iw_course.pic,iw_course.price,tname,tid FROM iw_course,iw_teacher where iw_course.teacher_id=iw_teacher.tid ORDER BY cid DESC LIMIT 0,12'
	pool.query(sql,(err,result)=>{
		if(err){		//数据库操作执行错误
			console.log('数据库查询失败！')
			throw err
		}
		//数据库操作顺利完成，查询结果保存在result中
		console.log('数据库查询成功！')
		// console.log(result)
		//将数据库返回的课程输出发送给客户端
		res.send(result)
	})

})

app.get('/course/hottest',(req,res)=>{
	//向数据库服务器发送查询请求，获得必需的课程数据:前12条(即从第0行开始读取12行)：且最新课程（即按课程编号由大到小排序）,同时还要跨表查询（同时查询course和teacher两个表）
	let sql = 'SELECT iw_course.cid,iw_course.cname,iw_course.pic,iw_course.price FROM iw_course.cid,iw_school_course.course_id where iw_course.cid =iw_school_course.course_id  ORDER BY COUNT(school_id) DESC LIMIT 0,12'
	pool.query(sql,(err,result)=>{
		if(err){		//数据库操作执行错误
			console.log('数据库查询失败！')
			throw err
		}
		//数据库操作顺利完成，查询结果保存在result中
		console.log('数据库查询成功！')
		// console.log(result)
		//将数据库返回的课程输出发送给客户端
		res.send(result)
	})

})