<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix='form' uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html class="html -webkit-">
<head>
<meta charset="UTF-8">
<title>${title}</title>
<link rel='stylesheet' href='${pageContext.request.contextPath}/CSS/Project3.css'  type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC:700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" >
</head>
<body>
<div class="div0">
<header class="header1">
<div class="div1">
    <a href="${pageContext.request.contextPath}/"><label class="lab0">To-touring</label></a>
    <a href=""><label class="lab1">註冊</label></a>
    <a href="editor"><label class="lab1">登入</label><img class="img2" src="${pageContext.request.contextPath}/images/login.png">
    </a>
    <img class="img1" alt="" src="">
    </div>
    </header>
<div class="div3">
  <c:forEach var="view" items="${views}">
  <div style="width:300px;height:350px;margin:10px;float:right">
  <div class="card middle">
<div class="front">
<img style="width:100%;height:100%" src="<c:url value='/getphoto/${view.viewid}'/>"/>
</div>
<div class="back">
<div class="back-content middleback">
<h2>${view.name}</h2>
  <h4>${view.country}</h4>
  <h4>${view.city}</h4>
  <h4>${view.address}</h4>
  <p>${view.introduction}</p>
</div>
</div>
</div>
</div>
</c:forEach>
</div>
</div>
</body>
</html>