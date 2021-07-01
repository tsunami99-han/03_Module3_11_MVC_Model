package service;

import model.Product;

import java.util.*;

public class ProductServiceImpl implements ProductService {
    private static Map<String, Product> productMap;

    static {
        productMap = new HashMap<>();
        productMap.put("M1", new Product("M1", "Nguyễn Việt Tiến", 20000, "Cao ráo đẹp trai nhà giàu", "Hải Phòng"));
        productMap.put("M2", new Product("M2", "Phạm Văn Trường", 10000, "Cao ráo đẹp trai nhưng mõm", "Thái Bình"));
        productMap.put("M3", new Product("M3", "Trần Quang Hưng", 1, "Cute bụng kiến thức", "Hải Hậu-Nam Định"));
        productMap.put("M4", new Product("M4", "Đặng Xuân Thao", 5000, "Không cao nhưng gầy", "Hoài Đức-Hà Nội"));
        productMap.put("M5", new Product("M5", "Nguyễn Trung Hiệu", 999999999, "Động vật bảo tồn", "Hà Nội"));
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> list=new ArrayList<>();
        Set<String> keys=productMap.keySet();
        for (String key:keys){
            if (name.equals(productMap.get(key).getName())){
                list.add(productMap.get(key));
            }
        }
        return list;
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void save(Product product) {
        productMap.put(product.getId(), product);
    }

    @Override
    public Product findById(String id) {
        return productMap.get(id);
    }

    @Override
    public void update(String id, Product product) {
        productMap.put(id, product);
    }

    @Override
    public void remove(String id) {
        productMap.remove(id);
    }
}
