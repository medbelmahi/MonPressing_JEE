package ma.pressing.ecommerce.facade;

public interface Populator<SOURCE, TARGET> {
	void populate(final SOURCE source, final TARGET target);
}