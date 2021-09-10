
var projectName = '社区留守儿童帮扶系统';
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
	url: '../' + localStorage.getItem('userTable') + '/center.html'
},
{
	name: '我的收藏',
	url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '儿童信息',
	url: './pages/ertongxinxi/list.html'
},

{
	name: '活动公示',
	url: './pages/news/list.html'
},
{
	name: '留言反馈',
	url: './pages/messages/list.html'
}
]

var adminurl =  "http://localhost:8080/helpKids/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["修改","查看"],"menu":"帮扶人","menuJump":"列表","tableName":"bangfuren"}],"menu":"帮扶人管理"},{"child":[{"buttons":["查看","修改","删除","发布帮扶"],"menu":"留守儿童","menuJump":"列表","tableName":"liushouertong"}],"menu":"留守儿童管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"儿童信息","menuJump":"列表","tableName":"ertongxinxi"}],"menu":"儿童信息管理"},{"child":[{"buttons":["删除","审核","查看","修改"],"menu":"帮扶信息","menuJump":"列表","tableName":"bangfuxinxi"}],"menu":"帮扶信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"帮扶物资","menuJump":"列表","tableName":"bangfuwuzi"}],"menu":"帮扶物资管理"},{"child":[{"buttons":["查看","回复","删除"],"menu":"留言板管理","tableName":"messages"}],"menu":"留言板管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"活动公示","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"儿童信息列表","menuJump":"列表","tableName":"ertongxinxi"}],"menu":"儿童信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","支付","删除"],"menu":"帮扶信息","menuJump":"列表","tableName":"bangfuxinxi"}],"menu":"帮扶信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"帮扶物资","menuJump":"列表","tableName":"bangfuwuzi"}],"menu":"帮扶物资管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"儿童信息列表","menuJump":"列表","tableName":"ertongxinxi"}],"menu":"儿童信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"帮扶人","tableName":"bangfuren"}]


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
