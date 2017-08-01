package MP2;



public class Photo {
	
	public Photo(String privacy, int ID, String thumbURL, String fullURL, String title, String description, String uploader, String[] tags, String[] sharedUsers){
		this.setPrivacy(privacy);
		this.setID(ID);
		this.thumbURL = thumbURL;
		this.fullURL = fullURL;
		this.title = title;
		this.setDescription(description);
		this.uploader = uploader;
		this.tags = tags;
		this.sharedUsers = sharedUsers;
	}
	private String privacy;
	private int ID;
	private String thumbURL;
	private String fullURL;
	private String title;
	private String description;
	private String uploader;
	private String[] tags;
	private String[] sharedUsers;
	public String getThumbURL() {
		return thumbURL;
	}
	public void setThumbURL(String thumbURL) {
		this.thumbURL = thumbURL;
	}
	public String getFullURL() {
		return fullURL;
	}
	public void setFullURL(String fullURL) {
		this.fullURL = fullURL;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUploader() {
		return uploader;
	}
	public void setUploader(String uploader) {
		this.uploader = uploader;
	}
	public String[] getTags() {
		return tags;
	}
	public void setTags(String[] tags) {
		this.tags = tags;
	}
	public String[] getSharedUsers() {
		return sharedUsers;
	}
	public void setSharedUsers(String[] sharedUsers) {
		this.sharedUsers = sharedUsers;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getPrivacy() {
		return privacy;
	}
	public void setPrivacy(String privacy) {
		this.privacy = privacy;
	}
}
