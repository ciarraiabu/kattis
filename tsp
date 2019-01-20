import java.util.*;
import java.io.*;

class Main {
  public static void main(String[] args) 
  {
    String filename="csv.csv";
    File f=new File(filename);
    try
    {
        Scanner sc=new Scanner(f);
        while(sc.hasNext())
        {
          String data=sc.next();
          //System.out.print(data);
          String[] values = data.split(",");
          double lat=Double.parseDouble(values[3]);
          double lon=Double.parseDouble(values[4]);
         
          
      
        }
        sc.close();
    }
    catch(FileNotFoundException e)
    {
      e.printStackTrace();
    }
    }
    static double findDistance(double myLat,double myLong, double finLat, double finLong)
    {
         final double radius = 6378.14;
         double Lat1 = DegreesToRadians(myLat);
         double Lat2 = DegreesToRadians(finLat);
         double Long1 = DegreesToRadians(myLong);
         double Long2 = DegreesToRadians(finLong);

        double partA = Math.sin((Lat2-Lat1)/2)*Math.sin((Lat2-Lat1)/2);
        double partB = Math.cos(Lat1)*Math.cos(Lat2)*Math.sin((Long2-Long1)/2)*Math.sin((Long2-Long1)/2);
        double sub = partA+partB;
        double root = Math.sqrt(sub);
        double result = 2*radius*Math.asin(root);

    return result;
    }
    static double DegreesToRadians(double num)
    {
          double res = (num*Math.PI)/180.00;
          return res;
    }
    
  
}
