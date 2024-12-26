 
import 'package:flutter/material.dart';

class AcademicAccountNoAppBar extends StatelessWidget {
  const AcademicAccountNoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Institute Today Balance",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black), //
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Today",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold), //
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 105,
                                    child: Text(
                                      "Offline",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                    child: Text(
                                      "Online",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Fee Collection'),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: 
                                // OutlinedButton(
                                //   onPressed: () {},
                                //   style: OutlinedButton.styleFrom(
                                //     shape: RoundedRectangleBorder(
                                //       borderRadius: BorderRadius.circular(12),
                                //     ),
                                //   ),
                                //   child: const Text('৳ 500'),
                                // ),
                                Container(
  padding: const EdgeInsets.symmetric(vertical: 5),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.blue), // Border color (can be adjusted)
    borderRadius: BorderRadius.circular(12),
  ),
  child: const Center(
    child: Text(
      '৳ 500',
      style: TextStyle(
        fontSize: 16,  // Adjust font size if needed
        color: Colors.blue,  // Adjust text color if needed
      ),
    ),
  ),
)
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 100,
                                child: 
                                // OutlinedButton(
                                //   onPressed: () {},
                                //   style: OutlinedButton.styleFrom(
                                //     shape: RoundedRectangleBorder(
                                //       borderRadius: BorderRadius.circular(12),
                                //     ),
                                //   ),
                                //   child: const Text(
                                //     '৳ 100',
                                //     style: TextStyle(color: Colors.green),
                                //   ),
                                // ),
                                Container(
  padding: const EdgeInsets.symmetric(vertical: 5),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.blue), // Border color (can be adjusted)
    borderRadius: BorderRadius.circular(12),
  ),
  child: const Center(
    child: Text(
      '৳ 100',
      style: TextStyle(
        fontSize: 16,  // Adjust font size if needed
        color: Colors.blue,  // Adjust text color if needed
      ),
    ),
  ),
)
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Expense'),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: 
                                // OutlinedButton(
                                //   onPressed: () {},
                                //   style: OutlinedButton.styleFrom(
                                //     shape: RoundedRectangleBorder(
                                //       borderRadius: BorderRadius.circular(12),
                                //     ),
                                //   ),
                                //   child: const Text('৳ 2000'),
                                // ),
                                Container(
  padding: const EdgeInsets.symmetric(vertical: 5),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.blue), // Border color (can be adjusted)
    borderRadius: BorderRadius.circular(12),
  ),
  child: const Center(
    child: Text(
      '৳ 2000',
      style: TextStyle(
        fontSize: 16,  // Adjust font size if needed
        color: Colors.blue,  // Adjust text color if needed
      ),
    ),
  ),
)
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 100,
                                child: 
                                // OutlinedButton(
                                //   onPressed: () {},
                                //   style: OutlinedButton.styleFrom(
                                //     shape: RoundedRectangleBorder(
                                //       borderRadius: BorderRadius.circular(12),
                                //     ),
                                //   ),
                                //   child: const Text(
                                //     '৳ 900',
                                //     style: TextStyle(color: Colors.green),
                                //   ),
                                // ),
                                Container(
  padding: const EdgeInsets.symmetric(vertical: 5),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.blue), // Border color (can be adjusted)
    borderRadius: BorderRadius.circular(12),
  ),
  child: const Center(
    child: Text(
      '৳ 900',
      style: TextStyle(
        fontSize: 16,  // Adjust font size if needed
        color: Colors.blue,  // Adjust text color if needed
      ),
    ),
  ),
)
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 210,
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Institute Available Balance',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Cash In Hand'),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: 
                                // OutlinedButton(
                                //   onPressed: () {},
                                //   style: OutlinedButton.styleFrom(
                                //     shape: RoundedRectangleBorder(
                                //       borderRadius: BorderRadius.circular(12),
                                //     ),
                                //   ),
                                //   child: const Text(
                                //     '৳ 6,000',
                                //     style: TextStyle(color: Colors.green),
                                //   ),
                                // ),
                                Container(
  padding: const EdgeInsets.symmetric(vertical: 5),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.blue), // Border color (can be adjusted)
    borderRadius: BorderRadius.circular(12),
  ),
  child: const Center(
    child: Text(
      '৳ 6000',
      style: TextStyle(
        fontSize: 16,  // Adjust font size if needed
        color: Colors.blue,  // Adjust text color if needed
      ),
    ),
  ),
)
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Bank'),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: 
                                // OutlinedButton(
                                //   onPressed: () {},
                                //   style: OutlinedButton.styleFrom(
                                //     shape: RoundedRectangleBorder(
                                //       borderRadius: BorderRadius.circular(12),
                                //     ),
                                //   ),
                                //   child: const Text(
                                //     '৳ 9,000',
                                //     style: TextStyle(color: Colors.green),
                                //   ),
                                // ),
                                Container(
  padding: const EdgeInsets.symmetric(vertical: 5),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.blue), // Border color (can be adjusted)
    borderRadius: BorderRadius.circular(12),
  ),
  child: const Center(
    child: Text(
      '৳ 9000',
      style: TextStyle(
        fontSize: 16,  // Adjust font size if needed
        color: Colors.blue,  // Adjust text color if needed
      ),
    ),
  ),
)
                              )
                            ],
                          )
                        ],
                      ),

                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Payment Gatway'),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: 
                                // OutlinedButton(
                                //   onPressed: () {},
                                //   style: OutlinedButton.styleFrom(
                                //     shape: RoundedRectangleBorder(
                                //       borderRadius: BorderRadius.circular(12),
                                //     ),
                                //   ),
                                //   child: const Text(
                                //     '৳ 1,200',
                                //     style: TextStyle(color: Colors.green),
                                //   ),
                                // ),
                                Container(
  padding: const EdgeInsets.symmetric(vertical: 5),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.blue), // Border color (can be adjusted)
    borderRadius: BorderRadius.circular(12),
  ),
  child: const Center(
    child: Text(
      '৳ 1200',
      style: TextStyle(
        fontSize: 16,  // Adjust font size if needed
        color: Colors.blue,  // Adjust text color if needed
      ),
    ),
  ),
)
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
