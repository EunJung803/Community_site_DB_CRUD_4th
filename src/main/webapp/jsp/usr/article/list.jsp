<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta charset="UTF-8">

<%@ include file="../common/head.jspf"%>    <!-- 헤더 설정-->

<section>
    <div class="container px-3 mx-auto">
        <h1 class="font-bold text-lg">
            <i class="fa-solid fa-clipboard-list"></i> 목록
        </h1>

        <ul class="mt-5">
            <c:forEach items="${articles}" var="article">
                <li>
                    <a href="/usr/article/detail/${article.id}" class="flex p-2 group">
                        <span class="badge badge-info mr-2">${article.id}</span>
                        <div class="group-hover:underline group-hover:text-blue-200">
                                ${article.title} - ${article.createdDate}
                        </div>
                    </a>
            </li>
            </c:forEach>
        </ul>
    </div>
</section>

<%@ include file="../common/foot.jspf"%>    <!-- 푸터 설정 -->
