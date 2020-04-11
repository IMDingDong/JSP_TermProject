package thinkonweb.bean;

public class Goods implements java.io.Serializable{
  private int num;
  private String title;
  private int price;
  private String code;
  private String image;
  private String contents;
  private String writedate;
  
  public Goods() {
  }
  
  public int getNum() {
    return num;
  }
  
  public String getTitle() {
    return title;
  }
  
  public int getPrice() {
    return price;
  }
  
  public String getCode() {
    return code;
  }
  
  public String getImage() {
    return image;
  }
  
  public String getContents() {
    return contents;
  }
  
  public String getWritedate() {
    return writedate;
  }
  
  public void setNum(int num) {
    this.num = num;
  }
  
  public void setTitle(String title) {
    this.title = title;
  }
  
  public void setPrice(int price) {
    this.price = price;
  }
  
  public void setCode(String code) {
    this.code = code;
  }
  
  public void setImage(String image) {
    this.image = image;
  }
  
  public void setContents(String contents) {
    this.contents = contents;
  }
  
  public void setWritedate(String writedate) {
    this.writedate = writedate;
  }
}