import 'package:flutter/material.dart';
import 'package:futurefit/db/models/db_models.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> with AutomaticKeepAliveClientMixin{


  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _ageController = TextEditingController();
  DateTime? _selectedDate;
  GenderType? _selectedGenderType;
  String? _GenderID;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/images/personaldata.jpg'),
            height: 150,
            width: 150,
          ),
          const Text(
            "Let's get started,",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 0, 0, 0)
            ),
          ),
          const SizedBox(height: 20,),
          TextFormField(
            controller: _firstNameController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              hintText: 'Firstname',
            ),
          ),
          const SizedBox(height: 10,),
          TextFormField(
            controller: _lastNameController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              hintText: 'lastname',
            ),
          ),
          const SizedBox(height: 10,),
          TextFormField(
            controller: _ageController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              hintText: 'Age',
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton.icon(
                onPressed: () async{
                  final selectedDateTemp = await showDatePicker(
                    context: context, 
                    initialDate: DateTime.now(), 
                    firstDate: DateTime.now().subtract(const Duration(days: 365*100)), 
                    lastDate: DateTime.now()
                  );
                  if (selectedDateTemp == null){
                    return;
                  } else {
                    setState(() {
                      _selectedDate = selectedDateTemp;
                    });
                  }
                }, 
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 88, 88, 88),
                      style: BorderStyle.solid
                    ),
                ),
                icon: const Icon(Icons.calendar_today, color: Colors.black, ), 
                label: Text(
                  _selectedDate == null? 'Date of Birth': _selectedDate.toString().split(' ')[0],
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400
                  ),
                )
              ),
          ),
          const SizedBox(height: 20,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Radio(
                      value: GenderType.female, 
                      groupValue: _selectedGenderType, 
                      onChanged: (newValue){
                        setState(() {
                          _selectedGenderType = GenderType.female;
                          _GenderID = null;
                        });
                        
                      },
                    ),
                    const Text('Female'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: GenderType.male, 
                      groupValue: _selectedGenderType, 
                      onChanged: (newValue){
                        setState(() {
                          _selectedGenderType = GenderType.male;
                          _GenderID = null;
                        });
                        
                      },
                    ),
                    const Text('Male'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: GenderType.other, 
                      groupValue: _selectedGenderType, 
                      onChanged: (newValue){
                        setState(() {
                          _selectedGenderType = GenderType.other;
                          _GenderID = null;
                        });
                        
                      },
                    ),
                    const Text('Other'),
                  ],
                ),
                
              ],
            ),
            const SizedBox(height: 10,),
            

        ],
      ),
    );
  }
  Future<void> addTransaction()async{
    final firstNameText = _firstNameController.text;
    final lastNameText = _lastNameController.text;
    final ageText = _ageController.text;

    
    // if(purposeText.isEmpty){
    //   return;
    // }
    // if(amountText.isEmpty){
    //   return;
    // }
    // if(categoryID == null){
    //   return;
    // }
    // if(selectedDate == null){
    //   return;
    // }
    // final parsedAmount = double.tryParse(amountText);
    // if (parsedAmount == null){
    //   return;
    // }
    // if(selectedCategoryModel == null){
    //   return;
    // }
    // // selectedDate
    // // selectedCategoryType
    // // categoryID
    
    // final model = TransactionModel(
    //   purpose: purposeText, 
    //   amount: parsedAmount, 
    //   date: selectedDate!, 
    //   type: selectedCategoryType!, 
    //   category: selectedCategoryModel!,
    // );

    // await TransactionDb.instance.addTransaction(model);
    // Navigator.of(context).pop();
  }
  
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
