<#include "module/macro.ftl">
<@layout title="${post.title!} - ${blog_title!}">
    <div class="post">
        <h1 class="post-title">${post.title!}</h1>
        <div class="post-content">
            <div>
                ${post.formatContent!}
            </div>
        </div>
        <#--  <#include "module/comment.ftl">  -->
        <#--  <@comment post=post type="post" />  -->
    </div>
    <div class="pagination">
        <div class="pagination__title">
            <span class="pagination__title-h">其他文章</span>
            <hr />
        </div>
        <div class="pagination__buttons">
            <#if nextPost??>
            <span class="button previous">
                <a href="${nextPost.fullPath!}">
                    <span class="button__icon">←</span>
                    <span class="button__text">${nextPost.title}</span>
                </a>
            </span>
            </#if>
            <#if prevPost??>
            <span class="button next">
                <a href="${prevPost.fullPath!}">
                    <span class="button__text">${prevPost.title}</span>
                    <span class="button__icon">→</span>
                </a>
            </span>
            </#if>
        </div>
    </div>
</@layout>
