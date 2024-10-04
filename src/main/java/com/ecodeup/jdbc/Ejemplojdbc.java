package com.ecodeup.jdbc;

import java.sql.*;

public class Ejemplojdbc {
    public static void main(String[] args) {
        String url = "jdbc:mysql: //localhost:3306/vivero?serverTimezone=UTC";
        String username = "root";
        String password = "root";

        try {
            Connection connection = DriverManager.getConnection(url, username, password);
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("select * from cliente");

            while (resultSet.next()) {
                System.out.println(resultSet.getString("id_cliente") + " | " + resultSet.getString("codigo_cliente") + " | " + resultSet.getString("nombre_cliente") + " | " + resultSet.getString("nombre_contacto") + " | " + resultSet.getString("apellido_contacto") + " | " + resultSet.getString("telefono") + " | " + resultSet.getString("fax") + " | " + resultSet.getString("ciudad") + " | " + resultSet.getString("region") + " | " + resultSet.getString("pais") + " | " + resultSet.getString("codigo_postal") + " | " + resultSet.getString("id_empleado") + " | " + resultSet.getString("limite_credito"));
            }

            connection.close();
            statement.close();
            resultSet.close();
        } catch (SQLException e) {

            e.printStackTrace();

        }
    }
};
