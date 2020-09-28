// 点击“查看详情”后，跳转到课程详情页，兵提供当前商品的编号
let list = document.querySelectorAll('[data-jump-to-detail]').forEach(function(e,i){
	e.onclick=function(){
		//准备带跳转的目标地址
		let cid=e.dataset.jumpToDetail//查找当前被点击的按钮上保存的“课程编号”
		let url='course_detail.html?courseId='+cid
		// 跳转到课程详情页
		open(url)
		// window.open('cousre_detail.html','_self')  在当前页面打开新页面
		// window.open('course_detail.html','_blank')	在空白页打开新页面
		// window.open('course_detail.html')
	}
})
