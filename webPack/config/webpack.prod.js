const path = require("path")
// 语法检查
const EsLintPlugin = require("eslint-webpack-plugin")
// html 压缩
const HtmlWebpackPlugin = require("html-webpack-plugin")
// css单独打包
const MiniCssExtractPlugin = require("mini-css-extract-plugin")
// css 压缩 npm install css-minimizer-webpack-plugin
const CssMinimizerPlugin = require("css-minimizer-webpack-plugin")

function getPostCss() {
    return {
        loader: "postcss-loader",
        options: {
            postcssOptions: {
                plugins: [
                    "postcss-preset-env"
                ]
            }
        }
    }
}

module.exports = {
    // 主文件 入口
    entry: "./src/main.js",
    // 输出
    output: {
        // 所有文件的主目录
        path: path.resolve(__dirname, "../dist"),
        // 入口文件目录
        filename: "static/js/main.js",
        // 允许箭头函数
        // environment: {
        //     arrowFunction: false
        // },
        clean: true
    },
    // 加载器
    module: {
        rules: [
            {
                test: /\.css$/,
                // 提取css为单独文件 MiniCssExtractPlugin.loader
                // style-loader 在js中压缩css
                use: [
                    MiniCssExtractPlugin.loader,
                    // css兼容性 npm i postcss-loader postcss postcss-preset-env
                    // package.json 添加 browserslist
                    "css-loader",
                    getPostCss()
                ]
            },
            {
                test: /\.less$/,
                use: [
                    MiniCssExtractPlugin.loader,
                    "css-loader",
                    getPostCss(),
                    "less-loader"
                ]
            },
            {
                test: /\.(png|jpe?g|gif|webp)$/,
                type: "asset",
                parser: {
                    dataUrlCondition: {
                        maxSize: 1024
                    }
                },
                generator: {
                    filename: "static/images/[hash:10][ext][query]"
                }
            },
            {
                test: /\.(ttf|woff2?)$/,
                generator: {
                    filename: "static/font/[hash:10][ext][query]"
                }
            },
            {
                test: /\.js$/,
                exclude: /node_modules/,
                loader: "babel-loader",
                options: {
                    presets: ["@babel/preset-env"],
                }
            }
        ]
    },
    // 插件
    plugins: [
        new EsLintPlugin({
            context: path.resolve(__dirname, "../src")
        }),
        new HtmlWebpackPlugin({
            template: path.resolve(__dirname, "../public/index.html")
        }),
        new MiniCssExtractPlugin({
            filename: "static/css/main.css"
        }),
        new CssMinimizerPlugin()
    ],
    // 开发服务器 webpack dev server
    // npx webpack server
    // devServer: {
    //     host: "localhost",
    //     port: "3000",
    //     // 自动打开浏览器
    //     open: true
    // },
    mode: "production"
}