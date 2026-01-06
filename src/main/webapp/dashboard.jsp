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
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-floating sticky-top">
        <div class="container-fluid">
            <a class="navbar-brand d-flex align-items-center" href="dashboard.jsp">
                <div class="bg-white text-dominant rounded-circle d-flex align-items-center justify-content-center me-2" style="width: 32px; height: 32px; font-size: 16px;">
                    <i class="fas fa-book-open"></i>
                </div>
                <span>E-Library</span>
            </a>
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarContent">
                <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" href="dashboard.jsp"><i class="fas fa-home me-1"></i> Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="categories.jsp"><i class="fas fa-layer-group me-1"></i> Categories</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="loans.jsp"><i class="fas fa-bookmark me-1"></i> My Loans</a>
                    </li>
                    <!-- Search inside navbar for mobile or clean look -->
                </ul>
                <div class="d-flex align-items-center dropdown">
                    <div class="profile-dropdown-btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <div class="profile-avatar">SU</div>
                        <span class="small fw-semibold">Scholar User</span>
                    </div>
                    <ul class="dropdown-menu dropdown-menu-end shadow-lg border-0 rounded-4 mt-2 p-2">
                        <li><a class="dropdown-item rounded-3 small py-2" href="profile.jsp"><i class="fas fa-user-circle me-2 text-muted"></i>Profile</a></li>
                        <li><a class="dropdown-item rounded-3 small py-2" href="history.jsp"><i class="fas fa-history me-2 text-muted"></i>History</a></li>
                        <li><a class="dropdown-item rounded-3 small py-2" href="settings.jsp"><i class="fas fa-cog me-2 text-muted"></i>Settings</a></li>
                        <li><hr class="dropdown-divider my-1"></li>
                        <li><a class="dropdown-item rounded-3 small py-2 text-danger" href="login.jsp"><i class="fas fa-sign-out-alt me-2"></i>Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

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

    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/app.js"></script>
</body>
</html>
