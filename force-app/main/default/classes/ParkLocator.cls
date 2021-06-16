public class ParkLocator {
    public static List<String> country(String countryName) {
        ParkService.ParksImplPort pService = new ParkService.ParksImplPort();
        return pService.byCountry(countryName);
    }
}
