
var projectName = '时间管理系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.jsp'
},

{
	name: '我的收藏',
	url: '../storeup/list.jsp'
}
]


var indexNav = [

{
	name: '在线学习',
	url: './pages/zaixianxuexi/list.jsp'
}, 
{
	name: '励志视频',
	url: './pages/lizhishipin/list.jsp'
}, 
{
	name: '活动项目',
	url: './pages/huodongxiangmu/list.jsp'
}, 

{
	name: '论坛信息',
	url: './pages/forum/list.jsp'
}, 
{
	name: '新闻资讯',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspm0n160/index.jsp";

var cartFlag = false

var chatFlag = false


chatFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"分类列表","menuJump":"列表","tableName":"fenleiliebiao"}],"menu":"分类列表管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"在线学习","menuJump":"列表","tableName":"zaixianxuexi"}],"menu":"在线学习管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"励志视频","menuJump":"列表","tableName":"lizhishipin"}],"menu":"励志视频管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"活动项目","menuJump":"列表","tableName":"huodongxiangmu"}],"menu":"活动项目管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"活动报名","menuJump":"列表","tableName":"huodongbaoming"}],"menu":"活动报名管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"目标制定","menuJump":"列表","tableName":"mubiaozhiding"}],"menu":"目标制定管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"论坛管理","tableName":"forum"}],"menu":"论坛管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"客服管理","tableName":"chat"},{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"新闻资讯","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"在线学习列表","menuJump":"列表","tableName":"zaixianxuexi"}],"menu":"在线学习模块"},{"child":[{"buttons":["查看"],"menu":"励志视频列表","menuJump":"列表","tableName":"lizhishipin"}],"menu":"励志视频模块"},{"child":[{"buttons":["查看","报名"],"menu":"活动项目列表","menuJump":"列表","tableName":"huodongxiangmu"}],"menu":"活动项目模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","支付","删除"],"menu":"活动报名","menuJump":"列表","tableName":"huodongbaoming"}],"menu":"活动报名管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"目标制定","menuJump":"列表","tableName":"mubiaozhiding"}],"menu":"目标制定管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"在线学习列表","menuJump":"列表","tableName":"zaixianxuexi"}],"menu":"在线学习模块"},{"child":[{"buttons":["查看"],"menu":"励志视频列表","menuJump":"列表","tableName":"lizhishipin"}],"menu":"励志视频模块"},{"child":[{"buttons":["查看","报名"],"menu":"活动项目列表","menuJump":"列表","tableName":"huodongxiangmu"}],"menu":"活动项目模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
