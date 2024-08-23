import 'package:appwrite/appwrite.dart';

import 'package:appwrite/models.dart';
import 'package:project/screens/item_view_styling.dart';
import 'package:shared_preferences/shared_preferences.dart';
class appwritedata{
  Client client = Client();
  final projectid = "66992f2b000f88ffab1c";
  final bucketid = "6699305e00320bbdafef";
  final databaseid = "66992fcc002b0955c4b3";
  final usercollectionid = "66992fe5000784faa643";
  final itemcollectionId="66996090000ca5c039a5";
  final itembucketid="66995e65002d0aa614e5";
  final outfitid = "66a17911000bfa533fdb";
  final capsuleid = "66ae9538000e307d6128";
  Account? account;
  Storage? storage;
  Databases? databases;
  appwritedata(){
    client
        .setEndpoint('https://cloud.appwrite.io/v1')
        .setProject('66992f2b000f88ffab1c')
        .setSelfSigned(status: true);
    account = Account(client);
   databases = Databases(client);
   storage = Storage(client);

  }
    signup(String userid, String email, String pass, String name) async{
   final res = account!.create(userId: userid, email: email, password: pass, name: name);

  }
  Future<Session> login( String email, String pass) async{
    final res = account!.createEmailPasswordSession( email: email, password: pass);
    return res;
  }

  Future<File> uploaduserphoto(String img) async{
    User curr = await account!.get();
    SharedPreferences ss = await SharedPreferences.getInstance();

    String filename = curr.name;
    final res = storage!.createFile(bucketId: bucketid, fileId: ss.getString("userid")??ID.unique(), file: InputFile.fromPath(path: img,filename: filename));
    return res;
  }
  Future<File> uploaditemphoto(String img) async{
    final res = storage!.createFile(bucketId: itembucketid, fileId: ID.unique(), file: InputFile.fromPath(path: img));
    return res;
  }
  uploaduserdetails(String name, String email, String phone, String photo, String pincode) async{
    SharedPreferences ss = await SharedPreferences.getInstance();
    final res = databases!.createDocument(databaseId: databaseid, collectionId: usercollectionid, documentId: ID.unique(), data: {
      "name" : name,
      "emailid" : email,
      "phone_number" : phone,
      "photo_id" : photo,
      "pincode" : pincode,
      "user_id" : ss.getString("userid")
    });
  }
  uploaditemdetails(String itemID,String  picID,String itemname,String category,List<String> tags,List<String> seasons,String brand,String price,String size )async{
    SharedPreferences ss = await SharedPreferences.getInstance();
    final res=databases!.createDocument(databaseId: databaseid, collectionId: itemcollectionId, documentId: ID.unique(), data: {
      "item_id":itemID,
      "pic_id":picID,
      "item_name":itemname,
      "category":category,
      "tags":tags,
      "season":seasons,
      "size":size,
      "brand":brand,
      "price":price,
      "user_id": ss.getString("userid")
    });
    print('Item details uploaded successfully: $res');
  }

  uploadoutfit(String top , String bottom, String other, String accessories, String footwear) async{
    SharedPreferences ss = await SharedPreferences.getInstance();

    final res = databases!.createDocument(databaseId: databaseid, collectionId: outfitid, documentId: ID.unique(), data: {
      "top_id" : top,
      "bottom_id" : bottom,
      "other" : other,
      "accessories" : accessories,
      "footwear" : footwear,
      "user_id" : ss.getString("userid")
    });
  }

  uploadcapsule(List<String> itemsl , List<String> outfits, String name) async{
    SharedPreferences ss = await SharedPreferences.getInstance();

    final res = databases!.createDocument(databaseId: databaseid, collectionId: capsuleid, documentId: ID.unique(), data: {
      "name" : name,
      "items_list":itemsl,
      "outfit_list" : outfits,
      "user_id" : ss.getString("userid")
    });
  }

}
