import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';
class DetailScreen extends StatelessWidget{
  final Candi candi;

  const DetailScreen({super.key, required this.candi}); 

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
        children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              candi.imageAsset,
              width: double.infinity,
              fit: BoxFit.cover,

            )

          ),
          ),
          //Tombol back custom
          Padding(padding: const EdgeInsets.all(16),
          child: Container(decoration: BoxDecoration(
            color: Colors.deepPurple[100]?.withOpacity(0.8),
            shape: BoxShape.circle,
          ),
          child: IconButton(onPressed: (){},
          icon: const Icon(Icons.arrow_back),
          ),
          ),
          ),
          //Detail info
          Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            // Info Atas
            const SizedBox(height:16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(candi.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border))

          ],
          ),
          //Info Tengah
          const SizedBox(height: 16,),
          Row(children: [
            const Icon(Icons.place, color: Colors.red,),
            const SizedBox(width:8,),
            const SizedBox(
              width: 70,
              child: Text('Lokasi', style: TextStyle(fontWeight: FontWeight.bold),),
              ),
          Text('" $candi{candi.location}"'),

          ],),
          Row(children: [
            const Icon(Icons.calendar_month, color: Colors.blue,),
            const SizedBox(width:8,),
            const SizedBox(
              width: 70,
              child: Text('Dibangun', style: TextStyle(fontWeight: FontWeight.bold),),
              ),
          Text('" $candi{candi.built}"'),

          ],),
          Row(children: [
            const Icon(Icons.house, color: Colors.green,),
            const SizedBox(width:8,),
            const SizedBox(
              width: 70,
              child: Text('Tipe', style: TextStyle(fontWeight: FontWeight.bold),),
              ),
          Text('" $candi{candi.type}"'),

          ],),
          //Pemisah
          SizedBox(height: 16,),
          Divider(color: Colors.deepPurple.shade100,),
          const SizedBox(height: 16,),
          //Info Bawah
          ],)
          )
        
        ],
      ),

    );

  }
}