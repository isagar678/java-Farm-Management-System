import java.sql.*;
import java.util.HashSet;
import java.util.Scanner;
public class Farm {
    public static void main(String[] args) throws Exception {
        System.out.println("WELCOME");
        System.out.println("\n"+"Enter UserID ");
        Scanner sc=new Scanner(System.in);
        String enteredUserID=sc.next();

        
        System.out.println("\n"+"Enter Password");
        String enteredPass=sc.next();

        
        while (!((enteredPass.equals("password"))&&(enteredUserID.equals("id")))) {
            System.out.println("Wrong UserId or Password");
            System.out.println("\n"+"Enter UserID ");
            enteredUserID=sc.next();
            System.out.println("\n"+"Enter Paassword");
            enteredPass=sc.next();
        }
        HashSet <String> ar1=new HashSet<>();
        System.out.println("For the current Kharif season following are the crops that usually can be grown");
        System.out.println("Bajra\nPaddy\nSoyabean\nJowar");
        
        System.out.println("how many crops you want to add out of these");
        int count=sc.nextInt();
        if ((count<1)||(count>4)) {
            System.out.println("Number of crops cannot be greater 4 or less than 1");
            count=sc.nextInt();

        }
        System.out.println("Enter the name of the crops that you want to grow \n ");
        String enteredCrop;
        int i=0;
        while(i!=count) {
            enteredCrop=sc.next();
            ar1.add(enteredCrop);
            i++;
        }
              String dburl="jdbc:mysql://localhost:3306/farmmanagement";
String dbuser="root";
String dbpass="";
String driverName="com.mysql.cj.jdbc.Driver";
        i=0;
Class.forName(driverName);
Connection con=DriverManager.getConnection(dburl,dbuser,dbpass);
sc.nextLine();
String sql; boolean organic=false;
int total_cost=0;
PreparedStatement pst;
System.out.println("Do you want to do organic Farming....?");
String chooosenMethod= sc.next();
        if (chooosenMethod.equalsIgnoreCase("yes")) {
            organic=true;
        }
    for (String iterable_element : ar1) {
        if (organic) {
            sql="Select * from "+iterable_element+" where instrument_id <> 15";
        }
        else{
            sql="Select * from "+iterable_element+";";
        }
        
        pst=con.prepareStatement(sql);
        ResultSet rs=pst.executeQuery();
        System.out.println("Following are the things required for "+iterable_element);
        System.out.println("Intrument    ->     Cost    ");  
        while (rs.next()) {
            System.out.println(rs.getString("instrument_name")+"    ->    "+rs.getInt("cost"));

            total_cost+=rs.getInt("cost");
        }
        System.out.println("--------------------------------------------------------------------------------------------");
        System.out.println("Total Cost would be around  "+total_cost+" rupees");
        System.out.println("--------------------------------------------------------------------------------------------");

}


    double[] land=new double [ar1.size()];
    double [] selling=new double[ar1.size()];
    int netEarning=0;
    int profit=0;
    for (String string : ar1) {
        System.out.println("How much acre of land do you provide for "+string);
     land[i]=sc.nextDouble();
     
     i++;
    }
    i=0;

    for (String string : ar1) {
        sql="select * from output where crop_name='"+string+"';";
        pst=con.prepareStatement(sql);
        ResultSet rst=pst.executeQuery();
        while (rst.next()) {
            System.out.println("The average output per acre for "+string+" is "+rst.getInt("avg_output_per_acre"));
            System.out.println("While the average sell price per kg in APMC is "+rst.getInt("cost_in_market_per_kg"));
            selling[i]=land[i]*rst.getInt("avg_output_per_acre")*rst.getInt("cost_in_market_per_kg");
            System.out.println("--------------------------------------------------------------------------------------------------------");
            netEarning+=selling[i];
        }
        if (organic) {
            netEarning=netEarning*2;
        }
        System.out.println("Your net earning is : "+netEarning);
        profit=netEarning-total_cost;
        if (profit>=0) {
            System.out.println("net Profit is : "+profit);
        } else {
            System.out.println("net Loss is : "+profit);
        }        
    }
    sc.close();
    }
    
}
