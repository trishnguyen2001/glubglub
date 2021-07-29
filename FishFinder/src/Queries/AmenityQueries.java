package Queries;

public class AmenityQueries {
    public static String zoneQ(String data) {
        if(data.isEmpty()) {
            return "";
        }
        else {
            data = data.toUpperCase();
            return "SELECT Amenity.amenityID FROM Amenity WHERE location="+"'"+data+"'";
        }



    }
    public static String nameQ(String data) {
        if(data.isEmpty()) {
            return "";
        }
        else {
            return "SELECT Restaurant.amenityID FROM Restaurant WHERE rname="+"'"+data+"'";
        }

    }
    public static String descQ(String data) {
        if(data.isEmpty()) {
            return "";
        }
        else if(data.equals("M")|| (data.equals("F"))){
            return "SELECT Restroom.amenityID FROM Restroom WHERE gender="+"'"+data+"'";
        }
        else if(data.contentEquals("$$")) {
            return "SELECT Giftshop.amenityID FROM Giftshop WHERE price_range="+"'"+data+"'";
        }
        else {
            return "SELECT Restaurant.amenityID FROM Restaurant WHERE cuisine="+"'"+data+"'";
        }

    }
    public static String typeQ(String data) {
        String queryTag = "SELECT AmenityType.amenityID FROM AmenityType WHERE Amenity_type="+"'"+data+"'";
        return queryTag;
    }
    public static String Intersect(String zone,String type,String name ,String desc) {
        String intersectQ = "";

        if(!zone.isEmpty()) {
            intersectQ += zone;
        }
        if(!type.isEmpty() && !intersectQ.isEmpty()) {
            intersectQ += " INTERSECT " + type;
        }
        else if(!type.isEmpty() && intersectQ.isEmpty()) {
            intersectQ += type;
        }
        if(!name.isEmpty() && !intersectQ.isEmpty()) {
            intersectQ += " INTERSECT " + name;
        }
        else if(!name.isEmpty() && intersectQ.isEmpty()) {
            intersectQ += name;
        }

        if(!desc.isEmpty() && !intersectQ.isEmpty()) {
            intersectQ += " INTERSECT " + desc;
        }
        else if(!desc.isEmpty() && intersectQ.isEmpty()) {
            intersectQ += desc;
        }
        return intersectQ;

    }
    public static String join(String intersectQuery) {
        String joinQ = "";

        if(!intersectQuery.isEmpty()) {
            joinQ = "Select Amenity.location, AmenityType.Amenity_type, Restaurant.rname, Restroom.gender AS Description "
                    + "FROM Amenity, AmenityType, Restaurant, Restroom "
                    + "WHERE Restroom.amenityID IN "
                    + "("+ intersectQuery + ")"
                    +  " AND amenity.amenityID=AmenityType.amenityID AND amenity.amenityID=Restaurant.amenityID(+) AND amenity.amenityID=restroom.amenityID(+)"
                    + " UNION "
                    + "Select Amenity.location, AmenityType.Amenity_type, Restaurant.rname, Restaurant.cuisine AS Description "
                    + "FROM Amenity, AmenityType, Restaurant, Restroom "
                    + "WHERE Restaurant.amenityID IN "
                    + "("+ intersectQuery + ")"
                    + " AND amenity.amenityID=AmenityType.amenityID AND amenity.amenityID=Restaurant.amenityID(+) AND amenity.amenityID=restroom.amenityID(+)"
                    +  " UNION "
                    + "Select Amenity.location, AmenityType.Amenity_type, Restaurant.rname, Giftshop.price_range AS Description "
                    + "FROM Amenity, AmenityType, Restaurant, Restroom,Giftshop "
                    + "WHERE Giftshop.amenityID IN "
                    + "("+ intersectQuery + ")"
                    + " AND amenity.amenityID=AmenityType.amenityID AND amenity.amenityID=Restaurant.amenityID(+) AND amenity.amenityID=restroom.amenityID(+) AND amenity.amenityid=giftshop.amenityid(+)";



        }
        return joinQ;
    }
}
