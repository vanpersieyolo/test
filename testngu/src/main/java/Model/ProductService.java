package Model;

import java.sql.*;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class ProductService implements IProductService {
    private String jdbcURL = "jdbc:mysql://localhost:3306/testc?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "danganhvan";

    protected Connection getConnection() throws SQLException {

        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public boolean add(Product product) {
        boolean check = false;
        return check;
    }

    @Override
    public boolean update(int id) {
        return false;
    }

    @Override
    public boolean remove(int id){
        boolean check = false ;
        String query = "{call remove_product(?)}";
        try(Connection connection = getConnection(); CallableStatement callableStatement = connection.prepareCall(query)){
            callableStatement.setInt(1,id);
            check = callableStatement.executeUpdate() > 0;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return check;
    }

    @Override
    public List<Product> listProduct() {
        List<Product> productList = new ArrayList<>();
        String query = "{call show_all()}";
        Product product;
        try (Connection connection = getConnection(); CallableStatement callableStatement = connection.prepareCall(query);) {
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("productId");
                int idCategory = rs.getInt("categoryId");
                String name = rs.getString("productName");
                String description = rs.getString("proDescription");
                product = new Product(id, idCategory, name, description);
                productList.add(product);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return productList;
    }
}
