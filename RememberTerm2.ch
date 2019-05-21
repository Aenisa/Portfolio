//declare
string_t name, class1, grade1, class2, grade2, class3, grade3, class4, grade4, happy;
int counter = 0;
//initialize
printf("What is your name?\n");
scanf("%s",&name);
printf("What was your first class last term?\n");
scanf("%s",&class1);
printf("What was your grade?\n");
scanf("%s", &grade1);
printf("What was your second class last term?\n");
scanf("%s",&class2);
printf("What was your grade?\n");
scanf("%s", &grade2);
printf("What was your third class last term?\n");
scanf("%s",&class3);
printf("What was your grade?\n");
scanf("%s", &grade3);
printf("What was your fourth class last term?\n");
scanf("%s",&class4);
printf("What was your grade?\n");
scanf("%s", &grade4);
//terminate
printf("Name: %s\n", name);
printf("               Class:               Grade\n");
printf("%20s:%20s\n", class1,grade1);
printf("%20s:%20s\n", class2, grade2);
printf("%20s:%20s\n", class3, grade3);
printf("%20s:%20s\n", class4, grade4);
do{
    printf("Are you happy? Yes or no?\n");
    scanf("%s", &happy);
    if ( happy == "Yes" || happy == "yes" || happy == "YES"){
        printf("I'm glad you're happy!\n");
        counter = 1;
    }else if (happy == "no" || happy == "NO" || happy == "No"){
        printf("You're not happy? That sucks.\n");
        counter = 1;
    }else{
        printf("Please answer with Yes or No.\n");
        }
}
while ( counter == 0 );
