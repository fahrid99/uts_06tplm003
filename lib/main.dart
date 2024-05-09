import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Shoes'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(title),
            const Spacer(), // Spacer untuk menjaga jarak
            CircleAvatar(
              radius: 20, // Ukuran radius avatar
              backgroundColor: Colors.grey[300], // Warna latar belakang avatar
              child: const Icon(
                Icons.person,
                color: Colors.black, // Warna ikon avatar
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ShoeCard(
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu_-KEqC62YFZMmVuHj83xN9ZIw_SV-WN9PQ&s",
            shoeName: 'Addidas',
            shoePrice: 'US \$8.795',
            backgroundColor:
                Colors.purple.withOpacity(0.2), // Background ungu lembut
          ),
          ShoeCard(
            imageUrl:
                'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAREg8SExESFRAQDxAPFxMWExUZEhIQFRYWFhcRFBYYHSggGB0lGxMTITEhJSkrLy4uFx8zODctNygvMCsBCgoKDg0OFw8QGisfFR0uNys3LS0tLSs1LTc3OCsrKy0rKysrKysrNzcuNzc3KzctLSsrKzcsNy0tLSsrLTcrK//AABEIAOEA4QMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAwQCBQYHAf/EADgQAAIBAgMEBQsEAgMAAAAAAAABAgMRITFRBBJBYQVxgZHwBhMiMlJTkqGxwdEUFXLhB/EjRLL/xAAXAQEBAQEAAAAAAAAAAAAAAAAAAQMC/8QAGxEBAQEBAAMBAAAAAAAAAAAAABEBAgMSMWH/2gAMAwEAAhEDEQA/APcQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwq1FFOUmlGKbbeSSxbYGYIaO0wn6rvxJgAAAA1ladSTck2km0kuWF2uNyoun3GrGlKnJ3WNSPqxdm7STydlrxWGJfXUuN8CvT2ynLKS6r2fcywiKAAAAAAAAAAAAAAAAAAAAAAAAAAAee/5t2+UNhhSj/2a8YTtn5mCc5dm9GmnyfM9CPEf8s+UNR7dU2dWdOjsypWad41Kq35zi8L+i6a4q8dVgZ+brOeNruPIjpCVTYdkqt704w83J8ZODcG3zdrnZ06kXk7ngfkT5YvYoypVIuWzye9h60Hk2r5rLDker7B0pRqxhKMsJLeSknCdtd2VmaTOsceDzZ3z+uoMKtRRTbySb7Eaaptjim71Hupvdim5O3Bas8z22j07tdWUpOrSpSmpKnKtuUoxTwg4xd5Kyxwd8Semtq9ToVLQi3pdkUpeckkoq6Vt5r0lHO1+F9CCjvuMd6yair2va/Fq/3LtJJLLx1j4j5+ljjg75cmusy2dzhfJrFWu0uWtiRSy5+Mz5C2LXF3zuuzQVUtDboybTTjJO2OT5p8S0ma+McZK2F7p63zwPkHKMnuyw9nh+SQrZAo09vxakmrcVin9y1Trxlk19yRUgAIAAAAAAAAAAAAAAAAAAAHkHTXRS2yvtM57ri69RYp3jGL3VZpprCK42PXzzDol4z185P/ANMuJuZuTXzoLyR2KlJT3FOas1vXai+DSk3Z8zrHU4PFaNXXcU6VLjky/SipKzzRXGc5nzGEY0/YiupJfQkSXBJdSIp0WhFtCulqDJFL/RVjU1JY1FnpjjaySzd+pgS3z7VdYPDFJa4N8SVSSxembtgtLkEV14YWbvldXvnfrZ9jLu5Wx4eOoCdy45ccckk8XdctfyfVHjZXy526/GZHB9XNrC8lg7rsXF/IzlJZXtlfFrPBWetwMbY34ffW5FKgt69njxWvPEmtfPiseSaximuav4wzaFVXXnItbs3az9GWKw0efH5F/Z9pUljg9L/QrTisL9fDB+GRySfjHuGjag1K3lk2u0zVeouN+tEhWzBWobVd2as/kyyRQAAAAAAAAAAARbRNxi2o7zSvup4s0r8o7YOk0/5f0Bvpysm9Fc8y6M9KU5pxSnOU91t7yTd7YrmddLykVn/x4W9rh3HCdDbOmk0kr6YP5FxNdbQUklhftj+S2m000nz8eMjT0NnStjP46mqV8+aLcKbV/SmsVxyvhxKjabzfBmG5yKSpy95PDlDqxvEkSn7yXdH7ICbx/u4gufauLyeHd4ziU6vCa7Yv7SRkq1TjuPruvyBLvcE8s9UfVO77OqSi1rrePL5ELrStjTi7PKLXY8bdZj59LOE1m+L+jYF5Ve95YO1+ZlGfFZPLG6adnvFBbVBXe9KOXrXSw/kra4/0SQ2yn7cLvDNd2YF6P99b1M1IqR2iOq7yT9QtV3gWJZfMxUU9P7If1UPaj8SuYraYe0n1XePYBahkfJNFXz+iljjlb64mDlJ5tLqx+b/AE1WqkvvzNps8rxi+Lin2mj3F25avHgjd7LFqEU80iauJQARQAAAAAAAAr7TsVOp60E+fHvzLAA53bfJu6koTwaas8HZ4esjmaGwbTRupbLVSi7JpKaktV5pyfekekADiKVay9KnOP8oSVufpRRPDaKa0XcdgC1I5SG0U+DWmay7zNV46nUHywpHM+fjqh56OqOm3VojF0ovNLuQpHNurHVHzzi1Oj/TQ9iPwox/R0vdw+GP4FI55TWouuR0L2Kl7uHwx/Bh+3Ufdw+FCkaKMI6LuRJCEdI9yNw+jaPu49x9/b6Pu49wpGqTS0+QnVis5Jdptv2+j7uHwoyjsVJYqnBPlCP4FI0S2um8pbz0it76GcY1perSkucsPqdDYCkUujtklBNz3XJvNcFoXQCKAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA//9k=',
            shoeName: 'Jordan',
            shoePrice: 'US \$9.999',
            backgroundColor: Colors.cyan.withOpacity(0.2), // Background cyan
          ),
          ShoeCard(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5xTdHhhPWCyJQ9HO6xSK9j-LRnzzR4e9vxQ&s',
            shoeName: 'Jordan',
            shoePrice: 'US \$9.999',
            backgroundColor: Colors.cyan.withOpacity(0.2), // Background cyan
          ),
        ],
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String imageUrl;
  final String shoeName;
  final String shoePrice;
  final Color backgroundColor;

  const ShoeCard({
    super.key,
    required this.imageUrl,
    required this.shoeName,
    required this.shoePrice,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // Column 1: Name and price
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoeName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    shoePrice,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white, // Warna teks putih
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16.0), // Spacer
            // Column 2: Image
            SizedBox(
              width: 100,
              height: 100,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
