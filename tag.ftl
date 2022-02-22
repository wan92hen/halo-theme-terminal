<#include "module/macro.ftl">
<@layout title="标签：${tag.name} - ${blog_title!}">
    <div class="content">
        <div class="index-content framed">
            <h1>标签：${tag.name}</h1>
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
                <#if post.tags?size gt 0>
                    <span class="post-tags">
                        <#list post.tags as tag>
                            #<a href="${tag.fullPath!}" class="tag">${tag.name}</a>&nbsp;
                        </#list>
                    </span>
                </#if>
            </div>
            </#list>
        </div>
        <#if posts.totalPages gt 1>
            <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
            <div class="pagination">
                <div class="pagination__buttons">
                    <#if pagination.hasPrev>
                    <span class="button previous">
                        <a href="${pagination.prevPageFullPath!}">
                        <span class="button__icon">←</span>
                        <span class="button__text">上一页</span>
                        </a>
                    </span>
                    </#if>
                    <#if pagination.hasNext>
                    <span class="button next">
                        <a href="${pagination.nextPageFullPath!}">
                        <span class="button__text">下一页</span>
                        <span class="button__icon">→</span>
                        </a>
                    </span>
                    </#if>
                </div>
            </div>
            </@paginationTag>
        </#if>
    </div>
</@layout>
