package Model;

import java.sql.SQLException;
import java.util.List;

public interface IProductService {
    boolean add (Product product);
    boolean update(int id);
    boolean remove(int id) throws SQLException;
    List<Product> listProduct ();
}
