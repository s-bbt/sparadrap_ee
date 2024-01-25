package beans;

public class Client {
    private String client_nom;
    private String client_prenom;
    private int client_num_secu;
    private String client_mail;
    private String client_tel;
    private String client_adresse;
    private int client_id;

    public Client(String client_nom, String client_prenom, int client_num_secu, String client_mail, String client_tel, String client_adresse) {
        this.setClient_nom(client_nom);
        this.setClient_prenom(client_prenom);
        this.setClient_num_secu(client_num_secu);
        this.setClient_mail(client_mail);
        this.setClient_tel(client_tel);
        this.setClient_adresse(client_adresse);
    }

//    pour test ClientDAO
    public Client(String client_nom, String client_prenom, int client_id) {
        this.setClient_prenom(client_prenom);
        this.setClient_nom(client_nom);
        this.setClient_id(client_id);
    }

    public Client(String client_nom, String client_prenom) {
        this.setClient_prenom(client_prenom);
        this.setClient_nom(client_nom);
    }

    public String getClient_nom() {
        return client_nom;
    }

    public void setClient_nom(String client_nom) {
        if (client_nom == null || client_nom.isEmpty()) {
            throw new IllegalArgumentException("Le nom ne peut pas être vide");
        }
        this.client_nom = client_nom;
    }

    public String getClient_prenom() {
        return client_prenom;
    }

    public void setClient_prenom(String client_prenom) {
        if (client_prenom == null || client_prenom.isEmpty()) {
            throw new IllegalArgumentException("Le prénom ne peut pas être vide");
        }
        this.client_prenom = client_prenom;
    }

    public int getClient_id() {
        return client_id;
    }

    public void setClient_id(int client_id) {
        this.client_id = client_id;
    }

    public int getClient_num_secu() {
        return client_num_secu;
    }

    public void setClient_num_secu(int client_num_secu) {
        this.client_num_secu = client_num_secu;
    }

    public String getClient_mail() {
        return client_mail;
    }

    public void setClient_mail(String client_mail) {
        this.client_mail = client_mail;
    }

    public String getClient_tel() {
        return client_tel;
    }

    public void setClient_tel(String client_tel) {
        this.client_tel = client_tel;
    }

    public String getClient_adresse() {
        return client_adresse;
    }

    public void setClient_adresse(String client_adresse) {
        this.client_adresse = client_adresse;
    }

}