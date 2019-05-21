//declare
#include <chplot.h>
int introcount = 0;
int optioncount = 0;
int endcount = 0;
void dead(){
CPlot dead;
double deadcirclex = 10,deadcircley = 10,deadcircleradius = 10;
double r = 5;
//face
dead.strokeColor("black");
dead.circle(deadcirclex,deadcircley,deadcircleradius);
dead.line(3,17,7,13);
dead.line(7,17,3,13);
dead.line(13,17,17,13);
dead.line(17,17,13,13);
dead.arc(deadcirclex,deadcircley,r,45,135);
//body
dead.line(10,0,10,-50);
dead.line(10,-20,20,-10);
dead.line(10,-20,0,-10);
dead.line(10,-50,20,-70);
dead.line(10,-50,0,-70);
//speech bubble
dead.line(22.5,10,30,15);
dead.line(22.5,10,30,5);
dead.line(30,15,30,30);
dead.line(30,5,30,-10);
dead.line(30,30,50,30);
dead.line(30,-10,50,-10);
dead.line(50,-10,50,30);
dead.text("Dead!",PLOT_TEXT_RIGHT,45,20);
dead.plotting();
}
void alive(){
    CPlot alive;
double alivecirclex = 10, alivecircley = 10, alivecircleradius = 10;
double rad = 5;
//face
alive.strokeColor("black");
alive.circle(alivecirclex,alivecircley,alivecircleradius);
alive.point(5,15);
alive.point(15,15);
alive.arc(alivecirclex,alivecircley,rad,225,315);
//body
alive.line(10,2,10,-50);
alive.line(10,-20,20,-10);
alive.line(10,-20,0,-10);
alive.line(10,-50,20,-70);
alive.line(10,-50,0,-70);
//speech bubble
alive.line(22.5,10,30,15);
alive.line(22.5,10,30,5);
alive.line(30,15,30,30);
alive.line(30,5,30,-10);
alive.line(30,30,50,30);
alive.line(30,-10,50,-10);
alive.line(50,-10,50,30);
alive.text("Alive!",PLOT_TEXT_RIGHT,45,20);
alive.plotting();
}
int p = 0;
string_t introresponse,optionresponse,endresponse;
string_t proname,antname,preludequestion;
int randbite = randint(2,10);
int randmatch = randint(2,10);
// This is a section that comes before intro. It asks for two names.
void prelude(){
    printf("Please enter your character's name.\n");
    scanf("%s",&proname);
    printf("Please enter the name of the antagonist. This character will be male. (I recommend Shia Labeouf.)\n");
    scanf("%s",&antname);
}
//Intro: Sets up the story and presents the first three options. 
void intro(){
    printf("You're walking in the woods.\n");
    printf("There's no one around,\n");
    printf("And your phone is dead.\n\n");
    printf("Out of the corner of your eye you spot him,\n");
    printf("%s.\n\n",antname);
    printf("He's following you\n");
    printf("About 30 feet back.\n");
    printf("He gets down on all fours and breaks into a sprint.\n");
    printf("He's gaining on you.\n");
    printf("%s.\n\n",antname);
    printf("You're looking for your car,\n");
    printf("But you're all turned around.\n");
    printf("He's almost upon you now\n");
    printf("And you can see there's blood on his face!\n");
    printf("My god, there's blood everywhere!\n\n");
    printf("What do you do now?\nEnter a number.\n1. Fight!\n2. Make shadow puppets with your fingers! That’ll distract him!\n3. Run!\n");
    scanf("%s",&introresponse);
}
//Option 1: The user wins a fight, but is injured. They must decide what to do next. 
void option1(){
    printf("\nLuckily, you know jiu jutsu and actually put up a really good fight. However, %s is quite practiced in the art of catching and eating bodies and appears bored as you struggle desperately for your life.\n",antname);
    printf("He manages to gnaw off small bits of your face. You stand your ground, and win the fight!\n");
    printf("%s slinks back into the shadows. Hopefully he doesn’t come back.\n",antname);
    printf("Amazingly, you come out mostly unscathed. You only have %d bite marks and only your right arm is gone!\n",randbite);
    printf("You’re still lost in the woods though, and you don’t have a flashlight. In a few hours it will be pitch black.\n");
    printf("What should you do?\n");    
    printf("1. Move around and look for your car.\n"); 
    printf("2. Stay there for the night and prepare for a second attack.\n");  
    printf("3. Run around screaming. There’s nothing else to do, but panic.\n");
    scanf("%s",&optionresponse);
}    
// End 1: The user tries to find their car, but falls off a cliff. 
void end1(){
    printf("\nYou grope around in the dark going from tree to tree. The light quickly fades as the hours go by.\nI think the car was in that direction? Or maybe it was this one… \nYou can’t really remember. Oh well.\nSuddenly you feel lose gravel underneath you. Rocks! \nHow exciting! You might be wondering why this is so exciting. \nI don’t blame you. You distinctly recall parking in a gravelly lot. \nHave you made it back to where your car is? You take another step forward onto the open air. \nWhoops. You fell off a cliff. \nIt wasn’t the gravel car lot after all. Congratulations, you are dead.\n");
    dead();
    exit(1);
}
// End 2: The user sets up traps for the antagonist and manages to beat him. 
void end2(){
    printf("You start to look around for things that might help with survival. You took some survival training for fun a few years back.\n");
    printf("The first thing you do is tear off some clothing and bandage your stump of an arm. You have %d matches in your pocket, so you gather some wood and light them on fire.\n",randmatch);
    printf("You then start to look around for weapons. You find some rather sharp sticks.\n");
    printf("You decide to incorporate them into a trap. You want to lure %s in and kill him.\n",antname);
    printf("You huddle near the fire for warmth, trying to look as defenseless as possible. Night falls and you don’t feel tired.\n");
    printf("You feel afraid and very anxious. This was the same place %s attacked you earlier.\n",antname);
    printf("He knows where you are. He could be coming for you any minute.\n");
    printf("You hear some rustling. Your body grows tense.\n");
    printf("It is pitch black and you can’t see anything. You hear some squeaking sounds.\n");
    printf("Thank goodness, it isn’t %s!\n",antname);
    printf("It must be a mouse or something. You almost wet yourself with relief.\n");
    printf("You stay stiff and wait all night. When dawn breaks, light illuminates your surroundings.\n");
    printf("You start at the sight of %s hanging dead in a trap you set last night. When did that happen?\n",antname);
    printf("The only noise you heard last night was the squeaking. Well, turns out that was %s trying to lull you into a false sense of security.\n",antname);
    printf("Looks like you had the last laugh.\n");
    alive();
    exit(2);
}
// End 3: The user runs around and dies from blood loss.
void end3(){
    printf("\nYou immediately get to it. You wave your arms around and dance wildly in a circle.\n");
    printf("You yell at the top of your lungs. From the beyond you hear the distant sound of the Macarena.\n");
    printf("You love the Macarena! You move to the beat in a frenzy.\n");
    printf("For some reason you start to see colorful lights. The world fades around you.\n");
    printf("What is happening? Your life flashes before you and you smell your grandfather’s perfume.\n");
    printf("You feel as if you’re dying. You fall over and die.\n");
    printf("You have bled to death. You’re missing and arm, dummy.\n");
    printf("Do you think you can just shrug that off and keep doing whatever the heck you want? Nope.\n");
    printf("What made you pick this option anyway? Did you actually think this was a good idea?\n");
    printf("I hope not.\n");
    dead();
    exit(3);
}
// Option 2: The user uses shadow puppets to successfully stun the antagonist.
void option2(){
    printf("\nYou whip out the flashlight in your pocket, and flip your hair dramatically. This display seems to annoy %s and he starts running faster.\n",antname);
    printf("You’re not afraid however, because you are an expert at making shadow puppets, and no one can resist the charm of your creations. You quickly warm up with a pupper.\n");
    printf("You wiggle the legs back and forth. %s looks interested.\n",antname);
    printf("He starts to slow down. You quickly transition into a butterfly.\n");
    printf("He slowly comes to a stop. He appears very intimidated.\n");
    printf("However, this is not even your final form! You somehow arrange your whole body to form a unicorn.\n");
    printf("%s is in awe. He looks serenely happy.\n",antname);
    printf("He is in shock. What do you do now?\n");
    printf("1. Run away while he is stunned!\n");
    printf("2. Stick around and see what happens\n");
    printf("3. Stab him.\n");
    scanf("%s",&optionresponse);
}
// End 4: The user runs away and finds out that they are in the twilight dimension. 
void end4(){
    printf("\nYou run away as quickly as you can. You only have a limited amount of time to get away before the trance wears off.\n");
    printf("You know. You’ve tried this on other people before.\n");
    printf("As you run you notice a beautiful blue pogo stick on the side of the road. What road, you ask?\n");
    printf("Why the road that mysteriously appeared next to you! You stare at the pogo stick.\n");
    printf("It morphs into your uncle Freggly. He laughs and rubs his stomach robustly.\n");
    printf("You are utterly confused. What is going on?\n");
    printf("You watch in horror as your uncle morphs into a banana car and start driving down the road that slowly shifts into a galactic blender. The umbrella next to you starts to sing, but it’s horribly off-tune.\n");
    printf("The world spins around you. You hear mysterious music start to play.\n");
    printf("You realize you are trapped in the Twilight Zone. You’re still alive… For now.\n");
    alive();
    exit(4);
}
// End 5: The antagonist achieves enlightenment and the user comes back home safely. 
void end5(){
    printf("\n%s’s smile widens. He sits down and extends his hands towards you.\n",antname);
    printf("His body starts to levitate off of the ground. He begins to speak,\n");
    printf("“%s, my child you have freed me.” \n",proname);
    printf("You are astonished at these new developments and wonder how he could possibly know your name. %s laughs magnanimously.\n",antname);
    printf("“I now know all things my friend. Because of your actions, I have received enlightenment.\n");
    printf("After I make things right in this world I will ascend into another plane of existence and leave this old one behind. Farewell, and thank you.” \n");
    printf("%s floats upward as random light beams illuminate his body. What an amazing experience.\n",antname);
    printf("Somehow you find your car again, perhaps %s has been guiding you. When you get home you see that he has really changed the world for the better.\n",antname);
    printf("World peace has finally been achieved.\n");
    alive();
    exit(5);
}
// End 6: The user tries to stab the antagonist, but it is unsuccessful. 
void end6(){
    printf("\nYou walk up to the stupidly smiling %s. You mentally prepare yourself to stab him.\n",antname);
    printf("However, right before you do the deed you remember something important. You do not have a knife.\n");
    printf("Or anything sharp for that matter. How unfortunate.\n");
    printf("%s snaps out of his momentary trance and bites you! Hard.\n",antname);
    printf("In the Face. You’re dead.\n");
    dead();
    exit (6);
}
// Option 3: The user runs for their life. But they get caught in a bear trap. 
void option3(){
    printf("\nRunning for your life\nfrom %s.\n",antname);
    printf("He's brandishing a knife.\nIt's %s.\n",antname);
    printf("Lurking in the shadows\nHollywood superstar %s.\n",antname);
    printf("Living in the woods,\n%s.\n",antname);
    printf("Killing for sport\n%s.\n",antname);
    printf("Eating all the bodies\nActual, cannibal %s\n\n",antname);
    printf("Now it's dark and you seem to have lost him.\nBut you're hopelessly lost yourself.\n");
    printf("Stranded with a murderer.\nYou creep silently through the underbrush.\n");
    printf("A-ha! In the distance,\n");
    printf("A small cottage with a light on.\nHope!\n");
    printf("You move stealthily toward it,\nBut your leg!\n");
    printf("Ah! It's caught in a bear trap!\n");
    printf("What do you do?\n");
    printf("1. Gnaw your leg off\n");
    printf("2. You attempt to free your leg through other means...\n");
    printf("3. Make chicken noises for the person in the cabin's attention, maybe he can help you out.\n");
    scanf("%s",&optionresponse);
}
// End 7: The user gnaws off their leg and fights Shia Labeouf, to ultimately achieve victory. 
void end7(){
    printf("\nGnawing off your leg,\nQuiet, quiet.\n");
    printf("Limping toward the cottage,\nQuiet, quiet.\n");
    printf("Now you're on the doorstep,\nSitting inside, %s\n",antname);
    printf("Sharpening an ax,\n%s\n",antname);
    printf("But he doesn't hear you enter,\n%s\n",antname);
    printf("You're sneaking up behind him.\nStrangling superstar %s\n",antname);
    printf("Fighting for your life with %s,\nWrestling a knife from %s\n",antname,antname);
    printf("Stab it in his kidney.\nSafe at last from %s.\n",antname);
    printf("You limp into the dark woods.\nBlood oozing from your stump leg.\n");
    printf("But you have won.\nYou have beaten %s\n\n",antname);
    printf("Wait! He isn't dead! Shia Surprise\nThere's a gun to your head, and death in his eyes.\n");
    printf("But you can do Jiu Jitsu\nBody Slam superstar %s\n",antname);
    printf("Legendary fight with %s\nNormal Tuesday night for %s\n",antname,antname);
    printf("You try to swing an axe at %s\nBut blood is draining fast from your stump leg\n\n",antname);
    printf("He's dodging every swipe, he parries to the left\nYou counter to the right, you catch him in the neck\n");
    printf("You're chopping off his head now\nYou have just decapitated %s\n\n",antname);
    printf("His head topples to the floor, expressionless\nYou fall to your knees and catch your breath\n");
    printf("You're finally safe from %s.\n",antname);
    alive();
    exit(7);
}
// End 8: The user calls for their waifu, but the commotion atracts the antagonist and they die.
void end8(){
    printf("\nYou didn’t want to have to resort to such means, but sometimes the situation calls for drastic actions. You take out a small remote from the inside of your pocket and summon your beloved waifu, Kawaii Neko-Chan.\n");
    printf("If anyone can save you, it is her! She is a beautiful lady with rainbow colored hair and purple cat ears.\n");
    printf("She can also transform into a giant killer robot!!! She’s wonderful!\n");
    printf("You end the summoning process with a triumphant shout, “I LOVE YOU!” You can just imagine it happening.\n");
    printf("In your imagination you embrace your waifu tenderly. She says “Nyaa!!!” and then easily destroys the bear trap and kills %s with her irresistible charm.\n",antname);
    printf("But he can’t have her, she is yours alone.\n");
    printf("Meanwhile, in real life %s was in that cabin and heard your *ahem* passionate proclamation of love, and decided to investigate.\n",antname);
    printf("He walks out the cabin and sees you zoning out in the bushes. He walks up next to you, crouches, hugs you, and whispers in your ear,\n “Me too.” \n");
    printf("You shudder and whisper,\n");
    printf("“Waifu is love, waifu is life. You are not waifu.” \n");
    printf("%s looks hurt.\n",antname);
    printf("“If we cannot be together I must kill you!” \n");
    printf("As he hacks you apart, you look up into the sky. You see Kawaii Neko-Chan’s face in the constellations.\n");
    printf("“I will be leaving you soon, but I will always love you.” \n");
    printf("You give a great shudder and die imagining your waifu in your arms.\n");
    dead();
    exit(8);
}
// End 9: This path has multiple endings. In it the user sees Billy Mays and must decide between Mays or antagonist. 
void end9(){
    printf("\nYou yell,\n");
    printf("”LLLLLEEEEEERRRRRRRROOOOOOOYYYYYYY JJJJJJJEEEEEENNNNNKKKKKKKKIIIIIIINNNNNNSSSSSS.” \n");
    printf("The man in the cabin turns to you and says,\n");
    printf("“Hi, it’s Billy Mays here with a new, magnificent cleaning product.” \n");
    printf("You realize it’s the man from the Oxiclean commercials.\n");
    printf("“Oh god, its Mays,” you think. You turn around and you see %s, and now you have a choice.\n",antname);
    printf("1. To %s\n",antname);
    printf("2. stay where you are\n");
    printf("3. go to Mays.\n");
    scanf("%s",&endresponse);
}
// Path 1: The user runs towards Mays and wins against him, but is strangled by antagonist. 
void path1(){
    printf("\nYou decide to take your chances with Mays rather than %s. You run stealthily towards him and perform a takedown straight outta Compton.\n",antname);
    printf("You yell,\n");
    printf("“OH YEAH, MR. KRABS!” Mays just looks up at you incredulously while also yelling,\n");
    printf("“AAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHH.” You drag Mays into the closet to hide the evidence, but you realize it is full of Oxiclean bottles.\n");
    printf("“Why do you have so much Oxiclean!?” \n");
    printf("“It’s part of my job description,” he says, before using his jujitsu to toss you onto the floor. He then puts his arms together and unleashes a blast of Oxiclean straight at your face, while yelling,\n");
    printf("“KAMEHAMEHA!” It’s too bad for him that he was just aiming at his reflection in a nearby mirror.\n");
    printf("You look on dumbfounded as you see that the Oxiclean shatters the glass, and you feel a disturbance in the force as this happens. \nToo late, you realize that this “disturbance” was %s strangling you from the window you were standing in front of.\n",antname);
    printf("Nice going, idiot.\n");
    dead();
    exit(9);
}
// Path 2: The user stays in place and is killed. They go to the afterlife. 
void path2(){
    printf("\nYou stay there, hoping %s would go away and that Mays would stop talking about the joys of using Oxiclean. However, Mays begins to get angry, thinking you’re ignoring him, and begins throwing Oxiclean bottles at you.\n",antname);
    printf("%s notices you too, and begins walking slowly towards your position. You try moving, but realize that your bush is the only one in the area.\n",antname);
    printf("You try running, but Mays blocks your escape and says,\n");
    printf("“Omae wa mo shindeiru!!!” \n");
    printf("“NANI?,” you ask, before wondering how you knew any Japanese. \n");
    printf("You feel your body being torn apart, before dramatically exploding into confetti. As this happens, you see dozens of hit markers and a bottle of mountain dew spinning in the air.\n");
    printf("Dorito chips in the shape of ninja stars begin flying through the air, impaling Labeouf in a flurry of cheesy goodness. The stars above you begin to align in letters, forming,\n");
    printf("“You’re on your own, pal.” You then hear the voices of a dozen teenagers yelling,\n");
    printf("“OOOOOOOOOOOOOOOOOOOOOOHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH!!!!!!!!” You close your eyes, as the pain is overwhelming.\n");
    printf("You open them, and realize you are actually flying into the sky. You look down, and see that your legs are gone.\n");
    printf("You are a ghost. You continue to ascend, until you reach a golden stairway propped up on the clouds.\n");
    printf("There is graffiti saying,\n");
    printf("“JeZus wuz Here.” You follow the stairway until you reach a set of golden gates, with a bearded man standing in front of it.\n");
    printf("You ask him,\n");
    printf("“What is this place?” \n");
    printf("“This is heaven, where you go when you die.” You reply,\n");
    printf("“I’m a pastafarian.” \n");
    printf("“Too bad, then.” The clouds beneath you open up, and you begin to fall… and fall… and fall… and, okay, this is taking too long.\n");
    printf("You suddenly hit rock… very hot rock. You look up, and what you see is a desolate wasteland with a bunch of people that are obviously suffering from terrible sunburn.\n");
    printf("You walk towards the biggest one, who is holding a very large pitchfork and looks like he has anger issues. You ask him what is this place.\n");
    printf("He says this is Hell, where all non-believers and pagans go. He then extends his hand towards one in the crowd who is watching your discussion.\n");
    printf("It’s Gandhi!  The demon waves his hand towards another one.\n");
    printf("Hey look, it’s the Kool-Aid Man! He yells,\n");
    printf("“This isn’t me!” You ignore him.\n");
    printf("Next to Gandhi stands an Asian man who begin talking loudly in Mongolian. This is Genghis Khan.\n");
    printf("A man walks up next to you and whispers,\n");
    printf("“Nothing is true, everything is permitted!” He then jumps into the air and becomes a crow, who then flies away.\n");
    printf("You begin to cross your eyes, for some reason, and realize you can break into an alternate universe doing that. Also, this is being dragged on for way too long.\n");
    printf("Simply put, you’re… already dead. (dabs)\n");
    dead();
    exit(10);
}
// Path 3: The user tries to fight the antagonist, but fails. 
void path3(){
    printf("\nYou run towards %s, hoping you could dodge his blows. However, you get a good one right in the gut, before being pushed onto the ground.\n",antname);
    printf("You hear a voice yell,\n");
    printf("“FINISH HIM,” before seeing %s go for a killing blow. You then see a blue “x” flash repeatedly on %s’s wrist.\n",antname,antname);
    printf("Too bad that you don’t have a PS remote. You’re an Xbox user. The 'x' came in the PS format.\n");
    dead();
    exit(11);
}
/*In this program the user will interact with a murderous antagonist in interesting ways. They are more likely
die than live. The odds are 4/11 in favor of survival. */
    int main(){
    prelude();
    intro();
    if (introresponse == "1"){
        option1();
        introcount = introcount + 1;
        if (optionresponse == "1"){
            end1();
            optioncount = optioncount + 1;
        }else if (optionresponse == "2"){
            end2();
            optioncount = optioncount + 1;
        }else if(optionresponse == "3"){
            end3();
            optioncount = optioncount + 1;
        }else{
            printf("Invalid. Please enter a number between 1 and 3.\n");
        }
    }else if (introresponse == "2"){
        option2();
        introcount = introcount + 1;
        if (optionresponse == "1"){
            end4();
            optioncount = optioncount + 1;
        }else if (optionresponse == "2"){
            end5();
            optioncount = optioncount + 1;
        }else if (optionresponse == "3"){
            end6();
            optioncount = optioncount + 1;
        }else{
            printf("Invalid. Please enter a number between 1 and 3.\n");
        }
    }else if (introresponse == "3"){
        option3();
        introcount = introcount + 1;
        if (optionresponse == "1"){
            end7();
            optioncount = optioncount + 1;
        }else if (optionresponse == "2"){
            end8();
            optioncount = optioncount + 1;
        }else if (optionresponse == "3"){
            end9();
            optioncount = optioncount +1;
            if (endresponse == "1"){
                path3();
                endcount = endcount + 1;
            }else if (endresponse == "2"){
                path2();
                endcount = endcount + 1;
            }else if (endresponse == "3"){
                path1();
                endcount = endcount + 1;
            }else{
                printf("Invalid. Please enter a number between 1 and 3.\n");
            }
        }else{
            printf("Invalid. Please enter a number between 1 and 3.\n");
        }
    }else{
        printf("Invalid. Please enter a number between 1 and 3.\n");
    }  
}
