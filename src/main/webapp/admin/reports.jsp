<%-- 
    Document   : reports
    Created on : Jan 7, 2026, 9:26:09 AM
    Author     : hengk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String requestUri = request.getRequestURI();
    String contextPath = request.getContextPath();
    String currentPage = requestUri.substring(contextPath.length());
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reports - Admin Panel</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/style.css">
    <style>
        .sidebar { height: 100vh; background-color: white; border-right: 1px solid #eee; position: sticky; top: 0; }
        .nav-link-admin { color: #7f8c8d; padding: 12px 20px; border-radius: 8px; margin-bottom: 4px; font-weight: 500; text-decoration: none; display: block; }
        .nav-link-admin:hover, .nav-link-admin.active { background-color: #ecf3fe; color: var(--color-accent); }
    </style>
</head>
<body class="bg-soft">
    <div class="d-flex">
        <!-- Sidebar -->
        <div class="sidebar d-none d-lg-block p-4" style="width: 260px;">
            <div class="d-flex align-items-center mb-5">
                 <div class="bg-primary text-white rounded-circle d-flex align-items-center justify-content-center me-2" style="width: 40px; height: 40px;">
                    <i class="fas fa-shield-alt"></i>
                 </div>
                 <h5 class="fw-bold mb-0">Admin Panel</h5>
            </div>
            <nav class="nav flex-column">
                <a class="nav-link-admin <%= currentPage.equals("/admin/dashboard.jsp") ? "active" : "" %>" href="dashboard.jsp"><i class="fas fa-book me-2"></i> Manage Books</a>
                <a class="nav-link-admin <%= currentPage.equals("/admin/categories.jsp") ? "active" : "" %>" href="categories.jsp"><i class="fas fa-layer-group me-2"></i> Categories</a>
                <a class="nav-link-admin <%= currentPage.equals("/admin/users.jsp") ? "active" : "" %>" href="users.jsp"><i class="fas fa-users me-2"></i> Users</a>
                <a class="nav-link-admin <%= currentPage.equals("/admin/loans.jsp") ? "active" : "" %>" href="loans.jsp"><i class="fas fa-clipboard-list me-2"></i> Loan Requests</a>
                <a class="nav-link-admin <%= currentPage.equals("/admin/reports.jsp") ? "active" : "" %>" href="reports.jsp"><i class="fas fa-chart-pie me-2"></i> Reports</a>
            </nav>
            <div class="mt-auto pt-5">
                <a href="<%= request.getContextPath() %>/login.jsp" class="nav-link-admin text-danger"><i class="fas fa-sign-out-alt me-2"></i> Logout</a>
            </div>
        </div>

        <!-- Main Content -->
        <div class="flex-grow-1 p-4 p-md-5">
            <h2 class="h4 fw-bold mb-4">Library Reports</h2>

            <div class="row g-4 mb-4">
                <!-- KPI Card 1 -->
                <div class="col-md-4">
                    <div class="card card-custom p-3 h-100">
                        <div class="d-flex align-items-center">
                            <div class="bg-primary bg-opacity-10 text-primary p-3 rounded-circle me-3">
                                <i class="fas fa-book fa-2x"></i>
                            </div>
                            <div>
                                <h2 class="fw-bold mb-0">1,240</h2>
                                <span class="text-muted small">Total Books</span>
                            </div>
                        </div>
                    </div>
                </div>
                 <!-- KPI Card 2 -->
                 <div class="col-md-4">
                    <div class="card card-custom p-3 h-100">
                        <div class="d-flex align-items-center">
                            <div class="bg-success bg-opacity-10 text-success p-3 rounded-circle me-3">
                                <i class="fas fa-users fa-2x"></i>
                            </div>
                            <div>
                                <h2 class="fw-bold mb-0">850</h2>
                                <span class="text-muted small">Active Members</span>
                            </div>
                        </div>
                    </div>
                </div>
                 <!-- KPI Card 3 -->
                 <div class="col-md-4">
                    <div class="card card-custom p-3 h-100">
                        <div class="d-flex align-items-center">
                            <div class="bg-warning bg-opacity-10 text-warning p-3 rounded-circle me-3">
                                <i class="fas fa-hand-holding fa-2x"></i>
                            </div>
                            <div>
                                <h2 class="fw-bold mb-0">125</h2>
                                <span class="text-muted small">Currently Borrowed</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Charts / Visuals -->
            <div class="row g-4">
                <div class="col-md-8">
                    <div class="card card-custom p-4">
                        <h6 class="fw-bold mb-3">Popular Categories</h6>
                        <!-- CSS Simple Bar Chart -->
                        <div class="d-flex flex-column gap-3">
                            <div>
                                <div class="d-flex justify-content-between small mb-1">
                                    <span>Technology</span>
                                    <span class="fw-bold">45%</span>
                                </div>
                                <div class="progress" style="height: 10px; border-radius: 10px;">
                                    <div class="progress-bar bg-primary" style="width: 45%"></div>
                                </div>
                            </div>
                            <div>
                                <div class="d-flex justify-content-between small mb-1">
                                    <span>Fiction</span>
                                    <span class="fw-bold">30%</span>
                                </div>
                                <div class="progress" style="height: 10px; border-radius: 10px;">
                                    <div class="progress-bar bg-danger" style="width: 30%"></div>
                                </div>
                            </div>
                             <div>
                                <div class="d-flex justify-content-between small mb-1">
                                    <span>History</span>
                                    <span class="fw-bold">15%</span>
                                </div>
                                <div class="progress" style="height: 10px; border-radius: 10px;">
                                    <div class="progress-bar bg-warning" style="width: 15%"></div>
                                </div>
                            </div>
                             <div>
                                <div class="d-flex justify-content-between small mb-1">
                                    <span>Science</span>
                                    <span class="fw-bold">10%</span>
                                </div>
                                <div class="progress" style="height: 10px; border-radius: 10px;">
                                    <div class="progress-bar bg-success" style="width: 10%"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card card-custom p-4 bg-primary text-white h-100">
                        <h6 class="fw-bold mb-3">Monthly Goal</h6>
                        <div class="text-center py-4">
                            <i class="fas fa-trophy fa-4x mb-3 text-warning"></i>
                            <h3 class="fw-bold">Target Reached!</h3>
                            <p class="small opacity-75">You have added 50 new books this month.</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>