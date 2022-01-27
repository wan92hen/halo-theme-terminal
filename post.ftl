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
</@layout>
