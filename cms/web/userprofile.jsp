<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- Mirrored from educhamp.themetrades.com/demo/admin/add-listing.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:09:05 GMT -->
    <head>
        <!-- META ============================================= -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- DESCRIPTION -->
        <link rel="icon" href="../error-404.html" type="image/x-icon" />
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
        <title>Hệ thống quản lý khách hàng</title>
        <link rel="stylesheet" type="text/css" href="assets/css/assets.css">
        <link rel="stylesheet" type="text/css" href="assets/css/typography.css">
        <link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">
        <link rel="stylesheet" type="text/css" href="assets/css/dashboard.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">
        <style>
            .vertical-line {
                border-left: 1px solid #ccc;
                height: 100%;
            }

        </style>

    </head>
    <body class="ttr-opened-sidebar ttr-pinned-sidebar">

        <!-- header start -->
        <header class="ttr-header">
            <div class="ttr-header-wrapper">
                <!--sidebar menu toggler start -->
                <div class="ttr-toggle-sidebar ttr-material-button">
                    <i class="ti-close ttr-open-icon"></i>
                    <i class="ti-menu ttr-close-icon"></i>
                </div>
                <!--sidebar menu toggler end -->
                <!--logo start -->
                <div class="ttr-logo-box">
                    <div>
                        <a href="index.html" class="ttr-logo">
                        </a>
                    </div>
                </div>
                <!--logo end -->
                <%@include file="header.jsp" %>
            </div>
        </header>
        <!-- header end -->
        <!-- Left sidebar menu start -->
        <%@include file="sidebar.jsp" %>

        <!--Main container start -->
        <main class="ttr-wrapper">
            <div class="container-fluid">
                <div class="db-breadcrumb">
                    <h4 class="breadcrumb-title">Thông tin người dùng</h4>
                    <ul class="db-breadcrumb-list">
                        <li><a href="/cms/homepage"><i class="fa fa-home"></i>Home</a></li>
                    </ul>
                </div>	
                <div class="row">
                    <!-- Your Profile Views Chart -->
                    <div class="col-lg-12 m-b30">
                        <div class="widget-box">
                            <div class="widget-inner">
                                <div class="row">
                                    <div class="col-md-7"> 
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="ml-auto">
                                                    <h3>I.Thông tin cơ bản</h3>
                                                </div>
                                            </div>
                                            <div class="form-group col-4">
                                                <label class="col-form-label">Họ và Tên</label>
                                                <div>
                                                    <input class="form-control" type="text" value="${user.name}" name="name" readonly="">
                                                </div>
                                            </div>
                                            <div class="form-group col-3">
                                                <label class="col-form-label">Giới tính</label>
                                                <div>
                                                    <input class="form-control" name="gender" type="text" value="${user.gender}"  readonly>
                                                </div>
                                            </div>

                                            <div class="form-group col-4">
                                                <label class="col-form-label">Ngày Sinh</label>
                                                <div>
                                                    <input class="form-control" type="date" name="date" value="${user.dob}" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group col-6">
                                                <label class="col-form-label">Email</label>
                                                <div>
                                                    <input class="form-control" type="text" value="${user.email}" name="email" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group col-4">
                                                <label class="col-form-label">Số điện thoại</label>
                                                <div>
                                                    <input class="form-control" type="text" value="${user.phone}" name="phone" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group col-6">
                                                <label class="col-form-label">Địa Chỉ</label>
                                                <div>
                                                    <textarea class="form-control" name="address" readonly>${user.address}</textarea>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <a href="/cms/updateprofile?userid=${user.userId}" type="reset" class="btn">Sửa</a>
                                                <!--<a href="/cms/transaction" type="reset" class="btn-secondry">Hủy</a>-->
                                            </div>
                                        </div>

                                    </div>
                                    <div class="vertical-line"></div> 

                                    <div class="col-md-4" >
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="ml-auto">
                                                    <h3>II.Thông tin tài khoản</h3>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label class="col-form-label">Username</label>
                                                <div>
                                                    <input class="form-control" type="text" value="${user.username}" readonly="">
                                                </div>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label class="col-form-label">Password</label>
                                                <div>
                                                    <input class="form-control" type="password" value="***********"  readonly>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <a href="/cms/updatepassword?userid=${user.userId}" type="reset" class="btn">Quên mật khẩu</a>
                                                <!--<a href="/cms/transaction" type="reset" class="btn-secondry">Hủy</a>-->
                                            </div>
                                            <div class="col-12">
                                                <c:if test="${not empty message}">
                                                    <p style="color: green">${message}</p>
                                                </c:if>
                                            </div ></div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <div class="ttr-overlay"></div>
        <!-- External JavaScripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/vendors/bootstrap/js/popper.min.js"></script>
        <script src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
        <script src="assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
        <script src="assets/vendors/magnific-popup/magnific-popup.js"></script>
        <script src="assets/vendors/counter/waypoints-min.js"></script>
        <script src="assets/vendors/counter/counterup.min.js"></script>
        <script src="assets/vendors/imagesloaded/imagesloaded.js"></script>
        <script src="assets/vendors/masonry/masonry.js"></script>
        <script src="assets/vendors/masonry/filter.js"></script>
        <script src="assets/vendors/owl-carousel/owl.carousel.js"></script>
        <script src='assets/vendors/scroll/scrollbar.min.js'></script>
        <script src="assets/js/functions.js"></script>
        <script src="assets/vendors/chart/chart.min.js"></script>
        <script src="assets/js/admin.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

    </body>

    <!-- Mirrored from educhamp.themetrades.com/demo/admin/add-listing.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:09:05 GMT -->
</html>