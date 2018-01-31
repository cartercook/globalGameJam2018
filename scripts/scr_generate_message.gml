///scr_generate_message()

with obj_ico_mail_2 {
    text = noone
    good = false
    bad = false
    meh = false
    
    // initialize random seed
    randomize()
    
    with obj_lock_in {
        //show_debug_message("obj_lock_in")
        // 1/4 odds to pick a character-specific quote
        if irandom(3) == 0 {
            show_debug_message(string(self.number))
            // Carcas
            if number == 0 {
                obj_ico_mail_2.text = 
"Hello Radio Host. On our first date they
insisted on seafood and well, maybe they
were into things that were a bit much for
me."
                obj_ico_mail_2.bad = true
                break
            // Elsnar
            } else if number == 3 {
                obj_ico_mail_2.text =
"Hello Radio Host! We have conquered
quadrant 5 and are currently building an
empire and have many grandkids on the way.
‘Love Is On the Air’ helped us join
forces. Thank you."
                obj_ico_mail_2.good = true
                break
            // Robot
            } else if number == 4 {
                // 0 or 1
                if irandom(1) == 0 {
                    obj_ico_mail_2.text =
"01010100 01001100 01000011 00100000 01110011
01110101 01100010 01110010 01101111 01110101
01110100 01101001 01101110 01100101 00100000
01110111 01100001 01110011 00100000 01100001
00100000 01110011 01110101 01100011 01100011
01100101 01110011 01110011"
                    obj_ico_mail_2.good = true
                } else {
                    obj_ico_mail_2.text =
"01001101 01101111 01110010 01100101 00100000
01110010 01100101 01110011 01100101 01100001
01110010 01100011 01101000 00100000 01110010
01100101 01110001 01110101 01101001 01110010
01100101 01100100 00101110"
                    obj_ico_mail_2.bad = true
                }
                break
            }
        }
    }
    
    show_debug_message(string(text))
    
    // if no character specific text
    if text == noone {
        // random number from 0-9
        var rand = irandom(9)
        
        switch rand {
        //GOOD
        case 0:
            text =
"Hello Radio Host! It’s our 200th anniversary
and we just wanted again, to thank you for
pairing us on ‘Love is On the Air’! We are
living happily ever after, and are currently
touring the nebula on our 65th honeymoon!"
            break
        case 1:
            text =
"Hey Radio Host! It was great! ‘Love Is On the
Air’ is the best show in the universe! It’s
going to be our 10th quarter moon anniversary
next week! Thank you so much for showing us
true love!"
            break
        case 2:
            text = 
"Hello Radio Host! Thanks to you, and ‘Love
Is On the Air’, we are the power couple of the
stars. We are attending the current Miss
Universe as the IT couple."
            break
        //BAD
        case 3:
            text =
"Hey Radio Host... It was super awkward, there
was an incident with the vacuum chambers and
well lets just say I didn’t even know a
restraining order spanning 6 galaxies was A
THING... I’m never listening to ‘Love is On
the Air’ again."
            break
        case 4:
            text =
"Hello Radio Host. I have decided it is better
to go on a soul searching journey 50000 light
years away. Your match was useless."
            break
        case 5:
            text =
"Hello Radio Host. You paired us on ‘Love Is
On the Air’. We were planning the joining
ceremony but they kept trying to book a
“clown”. Needless to say, I think it was for
the best we ended it"
            break
        //MEH
        case 6:
            text =
"Hello Radio Host, thank you for pairing us on
‘Love Is On the Air... I think we were just very,
very different people, you know? But it was
fun while it lasted..."
            break
        case 7:
            text =
"Hello Radio Host. When you paired us on ‘Love Is
On the Air’, you didn’t check horoscopes. They
were a gemini so it just didn’t work out."
            break
        case 8:
            text =
"Recipient > Love Is On the Air > Radio Host: You
are receiving this automated message generated
after my soul was astral projected to the 5th
dimension where I am endlessly screaming into the
void."
            break
        case 9:
            text =
"It was meh."
            break
        }
        
        // used to set text colour
        if rand <= 2 {
            good = true
        } else if rand <= 5 {
            bad = true
        } else {
            meh = true
        }
    }
}
