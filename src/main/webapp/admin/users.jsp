<%-- 
    Document   : users
    Created on : Jan 7, 2026, 9:26:24 AM
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
    <title>Manage Users - Admin Panel</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/style.css">
    <style>
        .table-custom { border-collapse: separate; border-spacing: 0; width: 100%; border-radius: 12px; overflow: hidden; box-shadow: var(--shadow-soft); }
        .table-custom thead { background-color: #34495e; color: white; }
        .table-custom th { padding: 16px; font-weight: 600; border: none; }
        .table-custom td { padding: 16px; vertical-align: middle; border-bottom: 1px solid #edf2f7; background-color: white; }
        .table-custom tr:nth-child(even) td { background-color: #f8fafc; }
        .table-custom tr:hover td { background-color: #f1f4f8; }
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
            <h2 class="h4 fw-bold mb-4">User Management</h2>

            <div class="card card-custom p-0">
                <table class="table-custom mb-0">
                    <thead>
                        <tr>
                            <th>User</th>
                            <th>Email</th>
                            <th>Joined</th>
                            <th>Status</th>
                            <th class="text-end">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <div class="profile-avatar me-2" style="width:32px; height:32px; font-size:12px;">SU</div>
                                    <span class="fw-bold">Scholar User</span>
                                </div>
                            </td>
                            <td>student@university.ac.id</td>
                            <td>Dec 2023</td>
                            <td><span class="badge bg-success bg-opacity-10 text-success rounded-pill px-3">Active</span></td>
                            <td class="text-end">
                                <button class="btn btn-sm btn-outline-danger rounded-pill" onclick="alert('User Banned!')">Ban</button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="d-flex align-items-center">
                                    <div class="profile-avatar bg-warning me-2" style="width:32px; height:32px; font-size:12px;">JD</div>
                                    <span class="fw-bold">John Doe</span>
                                </div>
                            </td>
                            <td>john@example.com</td>
                            <td>Nov 2023</td>
                            <td><span class="badge bg-danger bg-opacity-10 text-danger rounded-pill px-3">Banned</span></td>
                            <td class="text-end">
                                <button class="btn btn-sm btn-outline-success rounded-pill" onclick="alert('User Unbanned!')">Unban</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>