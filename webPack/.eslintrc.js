// eslint
module.exports = {
    // 继承通用的
    extends: ["eslint:recommended"],
    env: {
        // 启用node全局变量
        node: true,
        // 启用浏览器全局变量
        browser: true,
    },
    parserOptions: {
        // es 6
        ecmaVersion: 6,
        // es 模块化
        sourceType: "module"
    },
    rules: {
        "no-var": 2
    }
}

