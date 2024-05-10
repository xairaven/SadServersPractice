```sh
admin@i-0f6b5bb0efe48b0a4:~/clmystery/mystery$ cat crimescene | grep "CLUE"
CLUE: Footage from an ATM security camera is blurry but shows that the perpetrator is a tall male, at least 6'.
CLUE: Found a wallet believed to belong to the killer: no ID, just loose change, and membership cards for Rotary_Club, Delta SkyMiles, the local library, and the Museum of Bash History. The cards are totally untraceable and have no name, for some reason.
CLUE: Questioned the barista at the local coffee shop. He said a woman left right before they heard the shots. The name on her latte was Annabel, she had blond spiky hair and a New Zealand accent.

admin@i-0f6b5bb0efe48b0a4:~/clmystery/mystery$ cat people | grep "Annabel"
Annabel Sun     F       26      Hart Place, line 40
Oluwasegun Annabel      M       37      Mattapan Street, line 173
Annabel Church  F       38      Buckingham Place, line 179
Annabel Fuglsang        M       40      Haley Street, line 176

admin@i-0f6b5bb0efe48b0a4:~/clmystery/mystery$ grep -r "Sun" interviews/
interviews/interview-47246024:Ms. Sun has brown hair and is not from New Zealand.  Not the witness from the cafe.

admin@i-0f6b5bb0efe48b0a4:~/clmystery/mystery$ grep -r "Church" interviews/
interviews/interview-699607:Interviewed Ms. Church at 2:04 pm.  Witness stated that she did not see anyone she could identify as the shooter, that she ran away as soon as the shots were fired.

admin@i-0f6b5bb0efe48b0a4:~/clmystery/mystery$ cat interviews/interview-699607
Interviewed Ms. Church at 2:04 pm.  Witness stated that she did not see anyone she could identify as the shooter, that she ran away as soon as the shots were fired.

However, she reports seeing the car that fled the scene.  Describes it as a blue Honda, with a license plate that starts with "L337" and ends with "9"

admin@i-0f6b5bb0efe48b0a4:~/clmystery/mystery$ grep -e "L337.*9" vehicles
License Plate L337ZR9
License Plate L337P89
License Plate L337GX9
License Plate L337QE9
License Plate L337GB9
License Plate L337OI9
License Plate L337X19
License Plate L337539
License Plate L3373U9
License Plate L337369
License Plate L337DV9
License Plate L3375A9
License Plate L337WR9

admin@i-0f6b5bb0efe48b0a4:~/clmystery/mystery$ grep -A 5 -e "L337.*9" vehicles | grep -A 3 -B 3 "Blue" | grep -B 1 -A 4 "Honda"
License Plate L337QE9
Make: Honda
Color: Blue
Owner: Erika Owens
Height: 6'5"
Weight: 220 lbs
--
License Plate L337539
Make: Honda
Color: Blue
Owner: Aron Pilhofer
Height: 5'3"
Weight: 198 lbs
--
License Plate L337369
Make: Honda
Color: Blue
Owner: Heather Billings
Height: 5'2"
Weight: 244 lbs
--
License Plate L337DV9
Make: Honda
Color: Blue
Owner: Joe Germuska
Height: 6'2"
Weight: 164 lbs
--
License Plate L3375A9
Make: Honda
Color: Blue
Owner: Jeremy Bowers
Height: 6'1"
Weight: 204 lbs
--
License Plate L337WR9
Make: Honda
Color: Blue
Owner: Jacqui Maher
Height: 6'2"
Weight: 130 lbs

admin@i-0f6b5bb0efe48b0a4:~/clmystery/mystery$ grep -A 5 -e "L337.*9" vehicles | grep -A 3 -B 3 "Blue" | grep -B 1 -A 4 "Honda" | grep -B 1 ": 6"
Owner: Erika Owens 
Height: 6'5"
--
Owner: Joe Germuska
Height: 6'2"
--
Owner: Jeremy Bowers
Height: 6'1"
--
Owner: Jacqui Maher
Height: 6'2"

admin@i-0f6b5bb0efe48b0a4:~/clmystery/mystery$ grep "Erika Owens" people
Erika Owens     F       56      Trapelo Street, line 98
admin@i-0f6b5bb0efe48b0a4:~/clmystery/mystery$ grep "Joe Germuska" people
Joe Germuska    M       65      Plainfield Street, line 275
admin@i-0f6b5bb0efe48b0a4:~/clmystery/mystery$ grep "Jeremy Bowers" people
Jeremy Bowers   M       34      Dunstable Road, line 284
admin@i-0f6b5bb0efe48b0a4:~/clmystery/mystery$ grep "Jacqui Maher" people
Jacqui Maher    F       40      Andover Road, line 224


admin@i-093152a1209437933:~/clmystery/mystery$ grep "Joe Germuska" memberships/Delta_SkyMiles
Joe Germuska
admin@i-093152a1209437933:~/clmystery/mystery$ grep "Jeremy Bowers" memberships/Delta_SkyMiles
Jeremy Bowers

admin@i-093152a1209437933:~/clmystery/mystery$ grep "Joe Germuska" memberships/Rotary_Club
Joe Germuska
admin@i-093152a1209437933:~/clmystery/mystery$ grep "Jeremy Bowers" memberships/Rotary_Club
admin@i-093152a1209437933:~/clmystery/mystery$

admin@i-093152a1209437933:~/clmystery/mystery$ grep "Joe Germuska" people
Joe Germuska    M       65      Plainfield Street, line 275

admin@i-093152a1209437933:~/clmystery/mystery$ echo "Joe Germuska" > ~/mysolution
```