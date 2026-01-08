<%-- 
    Document   : settings
    Created on : Jan 7, 2026, 7:41:59 AM
    Author     : hengk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Settings - E-Library</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
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
                        <a class="nav-link" href="categories.html"><i class="fas fa-layer-group me-1"></i> Categories</a>
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
                        <li><a class="dropdown-item rounded-3 small py-2 active bg-secondary" href="settings.html"><i class="fas fa-cog me-2"></i>Settings</a></li>
                        <li><hr class="dropdown-divider my-1"></li>
                        <li><a class="dropdown-item rounded-3 small py-2 text-danger" href="index.html"><i class="fas fa-sign-out-alt me-2"></i>Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <div class="container py-4">
        <h3 class="fw-bold mb-4">Settings</h3>

        <div class="row justify-content-center">
            <div class="col-md-8">

                <!-- Account Settings -->
                <div class="card card-custom p-4 mb-4">
                    <h5 class="fw-bold mb-3"><i class="fas fa-user-cog me-2 text-primary"></i> Account</h5>
                    <div class="list-group list-group-flush">
                         <div class="list-group-item border-0 px-0 d-flex justify-content-between align-items-center">
                             <div>
                                 <h6 class="mb-1">Change Password</h6>
                                 <small class="text-muted">Last changed 3 months ago</small>
                             </div>
                             <button class="btn btn-sm btn-outline-secondary rounded-pill">Update</button>
                         </div>
                         <div class="list-group-item border-0 px-0 d-flex justify-content-between align-items-center">
                             <div>
                                 <h6 class="mb-1">Two-Factor Authentication</h6>
                                 <small class="text-muted">Add an extra layer of security</small>
                             </div>
                             <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" role="switch">
                             </div>
                         </div>
                    </div>
                </div>

                <!-- Appearance -->
                <div class="card card-custom p-4 mb-4">
                    <h5 class="fw-bold mb-3"><i class="fas fa-paint-brush me-2 text-warning"></i> Appearance</h5>
                    <div class="list-group list-group-flush">
                         <div class="list-group-item border-0 px-0 d-flex justify-content-between align-items-center">
                             <div>
                                 <h6 class="mb-1">Dark Mode</h6>
                                 <small class="text-muted">Switch between light and dark themes</small>
                             </div>
                             <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" role="switch" id="darkModeToggle">
                             </div>
                         </div>
                    </div>
                </div>

                <!-- Notifications -->
                <div class="card card-custom p-4">
                    <h5 class="fw-bold mb-3"><i class="fas fa-bell me-2 text-danger"></i> Notifications</h5>
                    <div class="list-group list-group-flush">
                         <div class="list-group-item border-0 px-0 d-flex justify-content-between align-items-center">
                             <div>
                                 <h6 class="mb-1">Email Notifications</h6>
                                 <small class="text-muted">Receive newsletters and updates</small>
                             </div>
                             <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" role="switch" checked>
                             </div>
                         </div>
                         <div class="list-group-item border-0 px-0 d-flex justify-content-between align-items-center">
                             <div>
                                 <h6 class="mb-1">Loan Reminders</h6>
                                 <small class="text-muted">Get notified when books are due</small>
                             </div>
                             <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" role="switch" checked>
                             </div>
                         </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/app.js"></script>
    <script>
        // Simple Dark Mode Simulation
        const toggle = document.getElementById('darkModeToggle');
        toggle.addEventListener('change', (e) => {
            if(e.target.checked) {
                document.body.style.filter = "invert(0.9) hue-rotate(180deg)";
                // Note: This is a hacky dark mode for demo purposes :P
            } else {
                document.body.style.filter = "none";
            }
        });
    </script>
</body>
</html>
