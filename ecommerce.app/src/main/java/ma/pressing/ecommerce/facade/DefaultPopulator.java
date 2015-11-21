package ma.pressing.ecommerce.facade;

public interface DefaultPopulator<SOURCE, TARGET> {
	void populate(final SOURCE source, final TARGET target);
}