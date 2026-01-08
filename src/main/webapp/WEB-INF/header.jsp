<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Perpustakaan</title>
    <style>
        nav { background: #2c3e50; color: white; padding: 15px; display: flex; gap: 20px; }
        nav a { color: white; text-decoration: none; font-weight: bold; }
        .container { padding: 20px; font-family: sans-serif; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #f4f4f4; }
    </style>
</head>
<body>
    <nav>
        <span> Perpustakaan </span>
        <a href="index.jsp">Menampilkan List Buku</a>
    </nav>
    <div class="container">