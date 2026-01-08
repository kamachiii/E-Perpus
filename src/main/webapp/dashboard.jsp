<%-- 
    Document   : dashboard
    Created on : Jan 6, 2026, 8:22:07 AM
    Author     : hengk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - E-Library Scholar</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- Bootstrap 5 -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <%@include file="includes/navbar.jsp" %>
    <!-- Main Content -->
    <div class="container py-5">
        <!-- Header -->
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2 class="h4 mb-0 fw-bold">Library Catalog</h2>
            <div class="input-group" style="max-width: 300px;">
                <input type="text" class="form-control form-control-custom ps-3 py-2" placeholder="Search books...">
                <button class="btn btn-ocean rounded-end-pill px-3" type="button">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>

        <!-- Book Grid -->
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4">

            <!-- Book Card 1 -->
            <div class="col">
                <div class="card card-custom h-100 position-relative">
                    <span class="badge bg-success position-absolute top-0 end-0 m-3 shadow-sm">Available</span>
                    <div style="height: 240px; background-color: #e9ecef; border-top-left-radius: 16px; border-top-right-radius: 16px; overflow: hidden;">
                         <!-- Placeholder for cover -->
                         <div class="d-flex align-items-center justify-content-center h-100 text-muted">
                            <i class="fas fa-book fa-3x"></i>
                         </div>
                    </div>
                    <div class="card-body">
                        <div class="mb-2 text-warning small">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
                            <span class="text-muted ms-1 small">(4.5)</span>
                        </div>
                        <h5 class="card-title fw-bold mb-1"><a href="book-detail.jsp" class="text-decoration-none text-dominant stretched-link">Clean Code</a></h5>
                        <p class="card-text text-muted small mb-3">Robert C. Martin</p>
                    </div>
                    <div class="card-footer bg-transparent border-0 pt-0 pb-3">
                        <small class="text-accent fw-bold float-end">View Details <i class="fas fa-arrow-right ms-1"></i></small>
                    </div>
                </div>
            </div>

            <!-- Book Card 2 -->
            <div class="col">
                <div class="card card-custom h-100 position-relative">
                    <span class="badge bg-danger position-absolute top-0 end-0 m-3 shadow-sm">Borrowed</span>
                    <div style="height: 240px; background-color: #e9ecef; border-top-left-radius: 16px; border-top-right-radius: 16px; overflow: hidden;">
                         <div class="d-flex align-items-center justify-content-center h-100 text-muted">
                            <i class="fas fa-atom fa-3x"></i>
                         </div>
                    </div>
                    <div class="card-body">
                        <div class="mb-2 text-warning small">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>
                            <span class="text-muted ms-1 small">(4.0)</span>
                        </div>
                        <h5 class="card-title fw-bold mb-1"><a href="book-detail.jsp" class="text-decoration-none text-dominant stretched-link">Atomic Habits</a></h5>
                        <p class="card-text text-muted small mb-3">James Clear</p>
                    </div>
                    <div class="card-footer bg-transparent border-0 pt-0 pb-3">
                        <small class="text-accent fw-bold float-end">View Details <i class="fas fa-arrow-right ms-1"></i></small>
                    </div>
                </div>
            </div>

            <!-- Book Card 3 -->
            <div class="col">
                <div class="card card-custom h-100 position-relative">
                    <span class="badge bg-success position-absolute top-0 end-0 m-3 shadow-sm">Available</span>
                    <div style="height: 240px; background-color: #e9ecef; border-top-left-radius: 16px; border-top-right-radius: 16px; overflow: hidden;">
                         <div class="d-flex align-items-center justify-content-center h-100 text-muted">
                            <i class="fas fa-code fa-3x"></i>
                         </div>
                    </div>
                    <div class="card-body">
                        <div class="mb-2 text-warning small">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                            <span class="text-muted ms-1 small">(5.0)</span>
                        </div>
                        <h5 class="card-title fw-bold mb-1"><a href="book-detail.jsp" class="text-decoration-none text-dominant stretched-link">The Pragmatic Programmer</a></h5>
                        <p class="card-text text-muted small mb-3">Andrew Hunt</p>
                    </div>
                    <div class="card-footer bg-transparent border-0 pt-0 pb-3">
                        <small class="text-accent fw-bold float-end">View Details <i class="fas fa-arrow-right ms-1"></i></small>
                    </div>
                </div>
            </div>

            <!-- Book Card 4 -->
            <div class="col">
                <div class="card card-custom h-100 position-relative">
                    <span class="badge bg-success position-absolute top-0 end-0 m-3 shadow-sm">Available</span>
                    <div style="height: 240px; background-color: #e9ecef; border-top-left-radius: 16px; border-top-right-radius: 16px; overflow: hidden;">
                         <div class="d-flex align-items-center justify-content-center h-100 text-muted">
                            <i class="fas fa-brain fa-3x"></i>
                         </div>
                    </div>
                    <div class="card-body">
                        <div class="mb-2 text-warning small">
                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><i class="far fa-star"></i>
                            <span class="text-muted ms-1 small">(3.5)</span>
                        </div>
                        <h5 class="card-title fw-bold mb-1"><a href="book-detail.jsp" class="text-decoration-none text-dominant stretched-link">Thinking, Fast and Slow</a></h5>
                        <p class="card-text text-muted small mb-3">Daniel Kahneman</p>
                    </div>
                    <div class="card-footer bg-transparent border-0 pt-0 pb-3">
                        <small class="text-accent fw-bold float-end">View Details <i class="fas fa-arrow-right ms-1"></i></small>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <%@include file="includes/footer.jsp" %>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/app.js"></script>
</body>
</html>