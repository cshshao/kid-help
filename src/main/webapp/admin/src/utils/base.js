const base = {
    get() {
                return {
            url : "http://localhost:8080/helpKids/",
            name: "ssme8koa",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/helpKids/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "社区留守儿童帮扶系统"
        }
    }
}
export default base
