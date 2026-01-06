<%-- 
    Document   : categories
    Created on : Jan 6, 2026, 12:58:58 PM
    Author     : hengk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Categories - E-Library</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        .category-card {
            border: none;
            border-radius: 16px;
            color: white;
            transition: all 0.3s ease;
            overflow: hidden;
            position: relative;
            min-height: 180px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .category-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.2);
        }

        .category-overlay {
            background: rgba(0,0,0,0.3);
            position: absolute;
            top: 0; left: 0; right: 0; bottom: 0;
            transition: all 0.3s;
        }

        .category-card:hover .category-overlay {
            background: rgba(0,0,0,0.5);
        }

        .category-content {
            position: relative;
            z-index: 2;
        }

        .bg-tech { background: linear-gradient(135deg, #3498db, #2c3e50); }
        .bg-fiction { background: linear-gradient(135deg, #e74c3c, #8e44ad); }
        .bg-science { background: linear-gradient(135deg, #2ecc71, #16a085); }
        .bg-history { background: linear-gradient(135deg, #f39c12, #d35400); }
        .bg-business { background: linear-gradient(135deg, #95a5a6, #2c3e50); }
        .bg-art { background: linear-gradient(135deg, #e91e63, #9b59b6); }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-floating sticky-top">
        <div class="container-fluid">
            <a class="navbar-brand d-flex align-items-center" href="dashboard.html">
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
                        <a class="nav-link" href="dashboard.html"><i class="fas fa-home me-1"></i> Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="categories.html"><i class="fas fa-layer-group me-1"></i> Categories</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="loans.html"><i class="fas fa-bookmark me-1"></i> My Loans</a>
                    </li>
                </ul>
                <div class="d-flex align-items-center dropdown">
                    <div class="profile-dropdown-btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <div class="profile-avatar">SU</div>
                        <span class="small fw-semibold">Scholar User</span>
                    </div>
                    <ul class="dropdown-menu dropdown-menu-end shadow-lg border-0 rounded-4 mt-2 p-2">
                        <li><a class="dropdown-item rounded-3 small py-2" href="profile.html"><i class="fas fa-user-circle me-2 text-muted"></i>Profile</a></li>
                        <li><a class="dropdown-item rounded-3 small py-2" href="history.html"><i class="fas fa-history me-2 text-muted"></i>History</a></li>
                        <li><a class="dropdown-item rounded-3 small py-2" href="settings.html"><i class="fas fa-cog me-2 text-muted"></i>Settings</a></li>
                        <li><hr class="dropdown-divider my-1"></li>
                        <li><a class="dropdown-item rounded-3 small py-2 text-danger" href="index.html"><i class="fas fa-sign-out-alt me-2"></i>Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <div class="container py-4">
        <h3 class="fw-bold mb-4">Browse Categories</h3>

        <div class="row g-4">

            <div class="col-md-4 col-sm-6">
                <a href="dashboard.html" class="text-decoration-none">
                    <div class="category-card bg-tech">
                        <div class="category-overlay"></div>
                        <div class="category-content">
                            <i class="fas fa-laptop-code fa-3x mb-3"></i>
                            <h4 class="fw-bold">Technology</h4>
                            <span class="badge bg-white text-dark rounded-pill">120+ Books</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 col-sm-6">
                <a href="dashboard.html" class="text-decoration-none">
                    <div class="category-card bg-fiction">
                        <div class="category-overlay"></div>
                        <div class="category-content">
                            <i class="fas fa-dragon fa-3x mb-3"></i>
                            <h4 class="fw-bold">Fiction & Fantasy</h4>
                            <span class="badge bg-white text-dark rounded-pill">350+ Books</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 col-sm-6">
                <a href="dashboard.html" class="text-decoration-none">
                    <div class="category-card bg-science">
                        <div class="category-overlay"></div>
                        <div class="category-content">
                            <i class="fas fa-atom fa-3x mb-3"></i>
                            <h4 class="fw-bold">Science</h4>
                            <span class="badge bg-white text-dark rounded-pill">80+ Books</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 col-sm-6">
                <a href="dashboard.html" class="text-decoration-none">
                    <div class="category-card bg-history">
                        <div class="category-overlay"></div>
                        <div class="category-content">
                            <i class="fas fa-landmark fa-3x mb-3"></i>
                            <h4 class="fw-bold">History</h4>
                            <span class="badge bg-white text-dark rounded-pill">200+ Books</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 col-sm-6">
                <a href="dashboard.html" class="text-decoration-none">
                    <div class="category-card bg-business">
                        <div class="category-overlay"></div>
                        <div class="category-content">
                            <i class="fas fa-chart-line fa-3x mb-3"></i>
                            <h4 class="fw-bold">Business</h4>
                            <span class="badge bg-white text-dark rounded-pill">150+ Books</span>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-4 col-sm-6">
                <a href="dashboard.html" class="text-decoration-none">
                    <div class="category-card bg-art">
                        <div class="category-overlay"></div>
                        <div class="category-content">
                            <i class="fas fa-palette fa-3x mb-3"></i>
                            <h4 class="fw-bold">Art & Design</h4>
                            <span class="badge bg-white text-dark rounded-pill">90+ Books</span>
                        </div>
                    </div>
                </a>
            </div>

        </div>
    </div>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/app.js"></script>
</body>
</html>
