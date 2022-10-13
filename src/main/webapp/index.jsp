<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>One Hana</title>

    
</head>
<script>

</script>
<body>
     <header>
        <jsp:include page="/WEB-INF/jsp/include/header.jsp"/>
    </header>  

 
    <!-- Carousel Start -->
    <div class="container-fluid p-0">
        <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="${ pageContext.request.contextPath }/resources/img/main.jpg" alt="Image">
                    
                    <div class="carousel-caption top-0 bottom-0 start-50 end-0 d-flex flex-column align-items-center justify-content-center">
                        <div class="text-start p-6" style="max-width: 900px;">
                            <h3 class="text-black">My One HANA</h3>
                            <h1 class="display-1 text-black mb-md-4">자산관리</h1>
                            <%-- <a href="${pageContext.request.contextPath}/joinMybank" class="btn btn-primary py-md-3 px-md-5 me-3" style="border-radius:15px; width:300px; height:100px;">이용하기</a> --%>
                            
                            
                            <a href="${pageContext.request.contextPath}/joinMybank" class="btn btn-primary" style="border-radius:15px; width:300px; height:100px;">
                            
                            
                            이용하기<br>
                                <img src="${ pageContext.request.contextPath }/resources/myicon/orange1.png" style="width:150px;">
                            
                            </a>
                            
                       
                            
                            
                         <!--    <a href="" class="btn btn-primary py-md-3 px-md-5 me-3" style="border-radius:15px;">가입하기</a> -->
                        </div>
                    </div>
                </div>
                
           <%--      <div class="carousel-item">
                    <img class="w-100" src="${ pageContext.request.contextPath }/resources/img/carousel-2.jpg" alt="Image">
                    <div class="carousel-caption top-0 bottom-0 start-0 end-0 d-flex flex-column align-items-center justify-content-center">
                        <div class="text-start p-5" style="max-width: 900px;">
                            <h3 class="text-white">Organic Fruits</h3>
                            <h1 class="display-1 text-white mb-md-4">Organic Fruits For Better Health</h1>
                            <a href="" class="btn btn-primary py-md-3 px-md-5 me-3">Explore</a>
                            <a href="" class="btn btn-primary py-md-3 px-md-5 me-3">Contact</a>
                        </div>
                    </div>
                </div>
            </div> --%>
          <!--    <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true" style="color: black;"></span>
                <span class="visually-hidden">Next</span>
            </button> -->
        </div>
    </div>
    <!-- Carousel End -->


  





    <!-- Products Start -->
 <%--    <div class="container-fluid py-5">
        <div class="container">
           
            <div class="owl-carousel product-carousel px-5">
                <div class="pb-5">
                    <div class="product-item position-relative bg-white d-flex flex-column text-center">
                        <img class="img-fluid mb-4" src="${ pageContext.request.contextPath }/resources/img/product-1.png" alt="">
                        <h6 class="mb-3">Organic Vegetable</h6>
                        <h5 class="text-primary mb-0">$19.00</h5>
                        <div class="btn-action d-flex justify-content-center">
                            <a class="btn bg-primary py-2 px-3" href=""><i class="bi bi-cart text-white"></i></a>
                            <a class="btn bg-secondary py-2 px-3" href=""><i class="bi bi-eye text-white"></i></a>
                        </div>
                    </div>
                </div>
                <div class="pb-5">
                    <div class="product-item position-relative bg-white d-flex flex-column text-center">
                        <img class="img-fluid mb-4" src="${ pageContext.request.contextPath }/resources/img/product-2.png" alt="">
                        <h6 class="mb-3">Organic Vegetable</h6>
                        <h5 class="text-primary mb-0">$19.00</h5>
                        <div class="btn-action d-flex justify-content-center">
                            <a class="btn bg-primary py-2 px-3" href=""><i class="bi bi-cart text-white"></i></a>
                            <a class="btn bg-secondary py-2 px-3" href=""><i class="bi bi-eye text-white"></i></a>
                        </div>
                    </div>
                </div>
                <div class="pb-5">
                    <div class="product-item position-relative bg-white d-flex flex-column text-center">
                        <img class="img-fluid mb-4" src="${ pageContext.request.contextPath }/resources/img/product-1.png" alt="">
                        <h6 class="mb-3">Organic Vegetable</h6>
                        <h5 class="text-primary mb-0">$19.00</h5>
                        <div class="btn-action d-flex justify-content-center">
                            <a class="btn bg-primary py-2 px-3" href=""><i class="bi bi-cart text-white"></i></a>
                            <a class="btn bg-secondary py-2 px-3" href=""><i class="bi bi-eye text-white"></i></a>
                        </div>
                    </div>
                </div>
                <div class="pb-5">
                    <div class="product-item position-relative bg-white d-flex flex-column text-center">
                        <img class="img-fluid mb-4" src="${ pageContext.request.contextPath }/resources/img/product-2.png" alt="">
                        <h6 class="mb-3">Organic Vegetable</h6>
                        <h5 class="text-primary mb-0">$19.00</h5>
                        <div class="btn-action d-flex justify-content-center">
                            <a class="btn bg-primary py-2 px-3" href=""><i class="bi bi-cart text-white"></i></a>
                            <a class="btn bg-secondary py-2 px-3" href=""><i class="bi bi-eye text-white"></i></a>
                        </div>
                    </div>
                </div>
                <div class="pb-5">
                    <div class="product-item position-relative bg-white d-flex flex-column text-center">
                        <img class="img-fluid mb-4" src="${ pageContext.request.contextPath }/resources/img/product-1.png" alt="">
                        <h6 class="mb-3">Organic Vegetable</h6>
                        <h5 class="text-primary mb-0">$19.00</h5>
                        <div class="btn-action d-flex justify-content-center">
                            <a class="btn bg-primary py-2 px-3" href=""><i class="bi bi-cart text-white"></i></a>
                            <a class="btn bg-secondary py-2 px-3" href=""><i class="bi bi-eye text-white"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 --%>    
 <!-- Products End -->


  



     <footer>
        <jsp:include page="/WEB-INF/jsp/include/footer.jsp"/>
    </footer>
</body>

</html>