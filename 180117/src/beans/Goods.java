package beans;

public class Goods {
	private Integer id;
	private String goods_name;
	private Integer price;
	private Integer category_id;
	
	public Goods() {
		
	}
	
	public Goods(Integer id, String goods_name, Integer price,
			Integer category_id) {
		super();
		this.id = id;
		this.goods_name = goods_name;
		this.price = price;
		this.category_id = category_id;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}
}
