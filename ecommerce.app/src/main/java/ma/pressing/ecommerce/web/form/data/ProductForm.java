package ma.pressing.ecommerce.web.form.data;

/**
 * Created by Mohamed BELMAHI on 06/01/2016.
 */
public class ProductForm {

    private String name;
    private String description;
    private String urlImage;
    private String[] services;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    public String[] getServices() {
        return services;
    }

    public void setServices(String[] services) {
        this.services = services;
    }
}
