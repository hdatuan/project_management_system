<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/login.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
  </head>
  <body class="login-page">
    <div class="login-shell">
      <span class="shape shape-one"></span>
      <span class="shape shape-two"></span>

      <section class="brand-panel">

        <h1>Vận hành doanh nghiệp gọn gàng và thông suốt</h1>
        <p>
          Theo dõi công việc, chốt tiến độ dự án và quản lý nhân sự trên một hệ thống
          đồng nhất.
        </p>

        <ul class="benefits">
          <li>
            <i class="fa-solid fa-circle-check"></i>
            Dashboard trực quan tiến độ doanh nghiệp
          </li>
          <li>
            <i class="fa-solid fa-circle-check"></i>
            Quản lý công việc và dự án hiệu quả
          </li>
          <li>
            <i class="fa-solid fa-circle-check"></i>
            Theo dõi hiệu suất của nhân sự
          </li>
        </ul>
      </section>

      <section class="auth-panel">
        <div class="auth-card">
          <div class="auth-head">
            <h2>Đăng nhập</h2>
            <p>Sử dụng tài khoản được cấp để truy cập hệ thống.</p>
          </div>

          <form action="${ctx}/login" method="post" class="auth-form">
            <div class="field-group">
              <label for="email">Email</label>
              <div class="input-wrap">
                <i class="fa-regular fa-envelope"></i>
                <input
                  id="email"
                  type="email"
                  name="email"
                  placeholder="name@company.com"
                  value="${not empty email ? email : '' }"
                  required
                />
              </div>
            </div>

            <div class="field-group">
              <label for="password">Mật khẩu</label>
              <div class="input-wrap">
                <i class="fa-solid fa-lock"></i>
                <input id="password" type="password" name="password" placeholder="Nhập mật khẩu" required />
              </div>
            </div>

            <label class="remember-wrap">
              <input type="checkbox" name="remember" />
              <span>Nhớ mật khẩu</span>
            </label>

            <c:if test="${not empty loginResult}">
              <div class="error-message">
                <i class="fa-solid fa-circle-exclamation"></i>
                <span>${loginResult}</span>
              </div>
            </c:if>

            <button type="submit" class="signin-btn">Đăng nhập</button>
          </form>
        </div>
      </section>
    </div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="${ctx}/js/common.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  </body>
</html>