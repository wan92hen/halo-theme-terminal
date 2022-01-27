<#include "module/macro.ftl">
<@layout title="${blog_title!}">
    <div class="content">

        <div class="index-content framed">
            <h1>${settings.index_notice_title!}</h1>
            <p>${settings.index_notice_content!}</p>

        </div>
        <div class="posts">
            <#list posts.content as post>
            <div class="post on-list">
                <h1 class="post-title">
                    <a href="${post.fullPath!}">${post.title!}</a>
                </h1>
                <div class="post-meta">
                    <span class="post-date">
                        ${post.createTime!}
                    </span>

                    <span class="post-author">:: ${user.nickname!}</span>

                </div>
                <#if post.thumbnail?? && post.thumbnail!=''>
                    <div>
                        <a href="${post.fullPath!}">
                            <img class="post-cover" src="${post.thumbnail!}" alt="${post.title!}">
                        </a>
                    </div>
                </#if>
                <div class="post-content">
                    ${post.summary!}...
                </div>

                <div>
                    <a class="read-more button" href="${post.fullPath!}">阅读更多 →</a>
                </div>

            </div>
            </#list>
            <div class="pagination">
                <div class="pagination__buttons">

                </div>
            </div>

        </div>
    </div>
</@layout>