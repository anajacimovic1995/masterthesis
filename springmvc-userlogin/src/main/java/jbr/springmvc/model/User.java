package jbr.springmvc.model;

public class User {

  private String username;
  private String password;
  private String ime;
  private String prezime;

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    System.out.println("username: " + username);
    this.username = username;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getIme() {
    return ime;
  }

  public void setIme(String ime) {
    System.out.println("Ime je : " + ime);
    this.ime = ime;
  }

  public String getPrezime() {
    return prezime;
  }

  public void setPrezime(String prezime) {
    System.out.println("Prezime je: " + prezime);
    this.prezime = prezime;
  }


}
