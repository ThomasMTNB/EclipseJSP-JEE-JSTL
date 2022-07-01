package model;

public class Livre {
	
	private Long id;
	private Auteur auteur;
	private String titre;
	private int nbPages;
	private String categorie;
	
	public Livre() {
		
	}
	
	public Livre(long id, Auteur Auteur, String titre, int nbPages, String categorie) {
		this.id =id;
		this.auteur = Auteur;
		this.titre =titre;
		this.nbPages =nbPages;
		this.categorie = categorie;
	}
	
	public Livre(Auteur Auteur, String titre, int nbPages, String categorie) {
		this.auteur = Auteur;
		this.titre =titre;
		this.nbPages =nbPages;
		this.categorie = categorie;
	}
	
	public Livre( String titre, int nbPages, String categorie) {
		this.titre =titre;
		this.nbPages =nbPages;
		this.categorie = categorie;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public int getNbPages() {
		return nbPages;
	}

	public void setNbPages(int nbPages) {
		this.nbPages = nbPages;
	}

	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}
	
	@Override
	public String toString() {
		return String.format("%s: %d pages -- %s",
				this.getTitre(),
				this.getNbPages(),
				this.getCategorie());
	}

	public Auteur getAuteur() {
		return auteur;
	}

	public void setAuteur(Auteur auteur) {
		this.auteur = auteur;
	}
	
	
	

}