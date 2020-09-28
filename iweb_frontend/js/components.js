// 1.显示/隐藏导航栏
/* 响应式导航条：点击汉堡博爱按钮时导航菜单从左侧进入：点击关闭按钮时导航隐藏到左侧*/
// 根据属性选择器查找一个元素
document.querySelector('[data-toggle="nav"]').onclick=function(){
	// 将导航条从左侧移出来——给navibar添加active类
	document.querySelector('[data-target="nav"]').classList.add('active');
}
// 点击关闭按钮则导航隐藏到左侧
document.querySelector('[data-close="nav"]').onclick=function(){
	document.querySelector('[data-target="nav"]').classList.remove('active');
}
 