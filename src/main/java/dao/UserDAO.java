/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import util.KoneksiDB;
import model.User;
import java.sql.*;
import org.mindrot.jbcrypt.BCrypt;

/**
 *
 * @author hengk
 */
public class UserDAO {
    public User login(String username, String inputPassword) {
        User user = null;
        String sql = "SELECT * FROM users WHERE username = ?";

        try (Connection c = KoneksiDB.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String storedHash = rs.getString("password");
                if (BCrypt.checkpw(inputPassword, storedHash)) {
                    // Jika COCOK, baru buat object User
                    user = new User();
                    user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setFullName(rs.getString("full_name"));
                    user.setRole(rs.getString("role"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
    
    public boolean register(User u) {
        String sql = "INSERT INTO users (username, password, full_name, role) VALUES (?, ?, ?, ?)";
        try (Connection c = KoneksiDB.getConnection();
             PreparedStatement ps = c.prepareStatement(sql)) {
            
            String hashedPassword = BCrypt.hashpw(u.getPassword(), BCrypt.gensalt(12));

            ps.setString(1, u.getUsername());
            ps.setString(2, hashedPassword); // Simpan yang sudah di-hash
            ps.setString(3, u.getFullName());
            ps.setString(4, u.getRole());

            int result = ps.executeUpdate();
            return result > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}