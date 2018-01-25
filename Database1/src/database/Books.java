package database;


public class Books {
	private String name;
	private Integer id;
	private String pus;
	private Integer stock;
	
	public Books(String name, Integer id, String pus, Integer stock) {
		super();
		this.name = name;
		this.id = id;
		this.pus = pus;
		this.stock = stock;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPus() {
		return pus;
	}

	public void setPus(String pus) {
		this.pus = pus;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}
}
