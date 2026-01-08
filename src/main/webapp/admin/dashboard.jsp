<%-- 
    Document   : dashboard
    Created on : Jan 7, 2026, 9:25:05 AM
    Author     : hengk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String requestUri = request.getRequestURI();
    String contextPath = request.getContextPath();
    String currentPage = requestUri.substring(contextPath.length());
    // currentPage will be like "/E-Perpus/admin/dashboard.jsp", so for comparison
    // we need to match "/admin/dashboard.jsp"
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - E-Library Scholar</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/style.css">
    <style>
        /* Custom Table Styling */
        .table-custom {
            border-collapse: separate;
            border-spacing: 0;
            width: 100%;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: var(--shadow-soft);
        }

        .table-custom thead {
            background-color: #34495e; /* Dark Gray/Blue */
            color: white;
        }

        .table-custom th {
            padding: 16px;
            font-weight: 600;
            border: none;
        }

        .table-custom td {
            padding: 16px;
            vertical-align: middle;
            border-bottom: 1px solid #edf2f7;
            background-color: white;
        }

        /* Zebra Striping manually for better control if needed, or use .table-striped customized */
        .table-custom tr:nth-child(even) td {
            background-color: #f8fafc; /* Very light gray */
        }

        .table-custom tr:hover td {
            background-color: #f1f4f8;
        }

        .btn-action {
            width: 32px;
            height: 32px;
            padding: 0;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 6px;
            transition: all 0.2s;
        }

        .btn-edit {
            background-color: #f39c12; /* Orange */
            color: white;
            border: none;
        }
        .btn-edit:hover { background-color: #d35400; color: white; }

        .btn-delete {
            background-color: #e74c3c; /* Soft Red */
            color: white;
            border: none;
        }
        .btn-delete:hover { background-color: #c0392b; color: white; }

        .sidebar {
            height: 100vh;
            background-color: white;
            border-right: 1px solid #eee;
            position: sticky;
            top: 0;
        }

        .nav-link-admin {
            color: #7f8c8d;
            padding: 12px 20px;
            border-radius: 8px;
            margin-bottom: 4px;
            font-weight: 500;
            text-decoration: none; /* Added for consistency */
            display: block; /* Added for consistency */
        }
        .nav-link-admin:hover, .nav-link-admin.active {
            background-color: #ecf3fe;
            color: var(--color-accent);
        }
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
            <div class="d-flex justify-content-between align-items-center mb-4">
                <div>
                   <h2 class="h4 fw-bold">Book Management</h2>
                   <p class="text-muted small">Manage your library collection.</p>
                </div>
                <button class="btn btn-primary-custom shadow-sm" data-bs-toggle="modal" data-bs-target="#addBookModal"><i class="fas fa-plus me-2"></i> Add New Book</button>
            </div>

            <div class="card card-custom p-0">
                <table class="table-custom mb-0">
                    <thead>
                        <tr>
                            <th>#ID</th>
                            <th>Cover</th>
                            <th>Book Title</th>
                            <th>Author</th>
                            <th>Category</th>
                            <th>Status</th>
                            <th>Rating</th>
                            <th class="text-end">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-muted">#1001</td>
                            <td><div class="bg-light rounded d-flex align-items-center justify-content-center" style="width: 40px; height: 50px;"><i class="fas fa-book text-muted"></i></div></td>
                            <td class="fw-bold text-dominant">Clean Code</td>
                            <td>Robert C. Martin</td>
                            <td><span class="badge bg-light text-dark border">Tech</span></td>
                            <td><span class="badge bg-success bg-opacity-10 text-success px-3 py-2 rounded-pill">Available</span></td>
                            <td><i class="fas fa-star text-warning small"></i> 4.5</td>
                            <td class="text-end">
                                <button class="btn btn-action btn-edit me-1" title="Edit"><i class="fas fa-pen small"></i></button>
                                <button class="btn btn-action btn-delete" title="Delete"><i class="fas fa-trash small"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-muted">#1002</td>
                            <td><div class="bg-light rounded d-flex align-items-center justify-content-center" style="width: 40px; height: 50px;"><i class="fas fa-book text-muted"></i></div></td>
                            <td class="fw-bold text-dominant">Atomic Habits</td>
                            <td>James Clear</td>
                            <td><span class="badge bg-light text-dark border">Self Help</span></td>
                            <td><span class="badge bg-danger bg-opacity-10 text-danger px-3 py-2 rounded-pill">Borrowed</span></td>
                            <td><i class="fas fa-star text-warning small"></i> 4.0</td>
                            <td class="text-end">
                                <button class="btn btn-action btn-edit me-1" title="Edit"><i class="fas fa-pen small"></i></button>
                                <button class="btn btn-action btn-delete" title="Delete"><i class="fas fa-trash small"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-muted">#1003</td>
                            <td><div class="bg-light rounded d-flex align-items-center justify-content-center" style="width: 40px; height: 50px;"><i class="fas fa-book text-muted"></i></div></td>
                            <td class="fw-bold text-dominant">The Pragmatic Programmer</td>
                            <td>Andrew Hunt</td>
                            <td><span class="badge bg-light text-dark border">Tech</span></td>
                            <td><span class="badge bg-success bg-opacity-10 text-success px-3 py-2 rounded-pill">Available</span></td>
                            <td><i class="fas fa-star text-warning small"></i> 5.0</td>
                            <td class="text-end">
                                <button class="btn btn-action btn-edit me-1" title="Edit"><i class="fas fa-pen small"></i></button>
                                <button class="btn btn-action btn-delete" title="Delete"><i class="fas fa-trash small"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-muted">#1004</td>
                            <td><div class="bg-light rounded d-flex align-items-center justify-content-center" style="width: 40px; height: 50px;"><i class="fas fa-book text-muted"></i></div></td>
                            <td class="fw-bold text-dominant">Refactoring</td>
                            <td>Martin Fowler</td>
                            <td><span class="badge bg-light text-dark border">Tech</span></td>
                            <td><span class="badge bg-warning bg-opacity-10 text-warning px-3 py-2 rounded-pill">Maintenance</span></td>
                            <td><i class="fas fa-star text-warning small"></i> 4.8</td>
                            <td class="text-end">
                                <button class="btn btn-action btn-edit me-1" title="Edit"><i class="fas fa-pen small"></i></button>
                                <button class="btn btn-action btn-delete" title="Delete"><i class="fas fa-trash small"></i></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Add Book Modal -->
    <div class="modal fade" id="addBookModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content border-0 shadow-lg rounded-4">
                <div class="modal-header border-0 pb-0">
                    <h5 class="modal-title fw-bold">Add New Book</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="addBookForm">
                        <div class="mb-3">
                            <label class="form-label small text-muted fw-bold">Book Title</label>
                            <input type="text" class="form-control form-control-custom" id="addTitle" placeholder="e.g. Design Patterns">
                        </div>
                        <div class="mb-3">
                            <label class="form-label small text-muted fw-bold">Author</label>
                            <input type="text" class="form-control form-control-custom" id="addAuthor" placeholder="e.g. Erich Gamma">
                        </div>
                         <div class="mb-3">
                            <label class="form-label small text-muted fw-bold">Category</label>
                            <select class="form-select form-control-custom" id="addCategory">
                                <option value="Tech">Technology</option>
                                <option value="Fiction">Fiction</option>
                                <option value="History">History</option>
                                <option value="Science">Science</option>
                                <option value="Self Help">Self Help</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label small text-muted fw-bold">Cover Image</label>
                            <input type="file" class="form-control form-control-custom">
                        </div>
                    </form>
                </div>
                <div class="modal-footer border-0 pt-0">
                    <button type="button" class="btn btn-light rounded-pill px-4" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary-custom rounded-pill px-4" id="saveNewBookBtn">Save Book</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Edit Book Modal -->
    <div class="modal fade" id="editBookModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content border-0 shadow-lg rounded-4">
                <div class="modal-header border-0 pb-0">
                    <h5 class="modal-title fw-bold">Edit Book</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="editBookForm">
                        <div class="mb-3">
                            <label class="form-label small text-muted fw-bold">Book Title</label>
                            <input type="text" class="form-control form-control-custom" id="editTitle">
                        </div>
                        <div class="mb-3">
                            <label class="form-label small text-muted fw-bold">Author</label>
                            <input type="text" class="form-control form-control-custom" id="editAuthor">
                        </div>
                         <div class="mb-3">
                            <label class="form-label small text-muted fw-bold">Category</label>
                            <select class="form-select form-control-custom" id="editCategory">
                                <option value="Tech">Technology</option>
                                <option value="Fiction">Fiction</option>
                                <option value="History">History</option>
                                <option value="Science">Science</option>
                                <option value="Self Help">Self Help</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer border-0 pt-0">
                    <button type="button" class="btn btn-light rounded-pill px-4" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary-custom rounded-pill px-4" id="saveEditBtn">Update Changes</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Delete Confirmation Modal -->
    <div class="modal fade" id="deleteModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-sm">
            <div class="modal-content border-0 shadow-lg rounded-4">
                <div class="modal-body text-center p-4">
                    <div class="bg-danger bg-opacity-10 text-danger rounded-circle d-inline-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                        <i class="fas fa-trash-alt fa-lg"></i>
                    </div>
                    <h5 class="fw-bold mb-2">Delete Book?</h5>
                    <p class="text-muted small mb-4">You are about to delete this item. This action cannot be undone.</p>
                    <div class="d-grid gap-2">
                        <button type="button" class="btn btn-danger rounded-pill" id="confirmDeleteBtn">Yes, Delete</button>
                        <button type="button" class="btn btn-light rounded-pill" data-bs-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<%= request.getContextPath() %>/assets/js/admin.js"></script>
</body>
</html>