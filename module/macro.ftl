<#macro layout title>
    <!DOCTYPE html>
    <html lang="zh">
    <head>
        <title>${title!}</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A simple, retro theme for Hugo" />
        <meta name="keywords" content="" />
        <meta name="robots" content="noodp" />
        <link rel="canonical" href="/" />
        <link rel="stylesheet" type="text/css" href="${theme_base!}/assets/style.css">
        <link rel="stylesheet" type="text/css" href="${theme_base!}/assets/${settings.theme_color!}.css">
        <link rel="apple-touch-icon" href="${theme_base!}/img/apple-touch-icon-192x192.png">
        <link rel="shortcut icon" href="${theme_base!}/img/favicon/orange.png">
        <link href="/index.xml" rel="alternate" type="application/rss+xml" title="${title!}" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/firacode@6.2.0/distr/fira_code.css">
    </head>

    <body class="orange">
        <div class="container headings--one-size">
            <#include "./header.ftl">
            <div class="content">
                <#nested>
            </div>
            <footer class="footer">
                <div class="footer__inner">

                    <div class="copyright">
                        <span>© ${.now?string('yyyy')} Powered by <a href="https://halo.run/">Halo</a></span>

                        <span>:: Theme made by <a href="https://github.com/wangzhen-fit2cloud">BugKing</a></span>
                    </div>
                </div>
            </footer>
            <script src="${theme_base!}/assets/main.js"></script>
            <script src="${theme_base!}/assets/prism.js"></script>
            <#-- 公共底部代码，详情请参考：https://docs.halo.run/zh/developer-guide/theme/public-template-tag 包含：统计代码，底部信息 -->
            <@global.footer />
        </div>
    </body>

    </html>
</#macro>