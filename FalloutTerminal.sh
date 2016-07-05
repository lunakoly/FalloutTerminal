#!/bin/bash


#   A		M = Enter
# D   C 	Unlocking...
#   B 		Loadint Interface...		Exiting Charge Pod

# DICTIONARY
terminal_heading="Welcome to ROBCO Industries (TM) Termlink"
heading_main_menu="Main Menu"
heading_hacking="Password Required\n\nAttempts Remaining: "
heading_protectron="Standart Protectrone Control Interface v2.40

This interface should be used by RobCo-licensed
technicals only. Improper tampering with
Protectron units may lead to permanent injury.

STATUS: Unit(s) Charging/Inactive
CONNECTED: 1 Unit(s) Connected to this terminal_heading

Please coose an option:"
heading_protectron_activating="...Accessing pod...
...Initializing unit...
...Loading assigned subroutines...

Please advise any personnel standing near charge
pod to make way."

notice1="THE TEXT FROM NOTICE 1"
notice2="THE TEXT FROM NOTICE 2"

options_main_menu[0]="[Unlock Security Gate]"
options_main_menu[1]="[Log Entries]"
options_main_menu[2]="[ > Protectron Control]"
options_main_menu[3]="[QUIT]"
# options_main_menu[4]="[Hacking]"

actions_main_menu[0]=""
actions_main_menu[1]="unlockSecGate"
actions_main_menu[2]="runNotice1"
actions_main_menu[3]="runProtectronMenu"
actions_main_menu[4]="finish"
# actions_main_menu[5]="runHacking"

action_hacking="testWord"

options_protectron[0]="[Activate Unit(s)]"
options_protectron[1]="[Choose Personality Mode]"
options_protectron[2]="[BACK]"

actions_protectron[0]=""
actions_protectron[1]="activateProtectron"
actions_protectron[2]="runProtectronPersonality"
actions_protectron[3]="runMainMenu"

options_protectron_personality[0]="[Default]"
options_protectron_personality[1]="[Subway Steward]"
options_protectron_personality[2]="[Law Enforcement]"
options_protectron_personality[3]="[Fire Brigadier]"
options_protectron_personality[4]="[Medical Respounder]"
options_protectron_personality[5]="[Construction Worker]"

actions_protectron_personality[0]=""
actions_protectron_personality[1]="runProtectronMenu"
actions_protectron_personality[2]="runProtectronMenu"
actions_protectron_personality[3]="runProtectronMenu"
actions_protectron_personality[4]="runProtectronMenu"
actions_protectron_personality[5]="runProtectronMenu"
actions_protectron_personality[6]="runProtectronMenu"

text_unknown_symb="Unknown symb."
text_init_lockout="Init lockout"
text_access_denied="Entry denied."
text_likeness="Likeness"
text_rem_wrong="Wr ans rem"
text_attempts_rest="Att. amm. rest"
text_pass_accepted="Password Accepted."
text_unlocking="Unlocking..."
text_interfaces="Loading Interface..."
text_charge_pods="Exiting Charge Pod"
text_personality_matr="Loading Personality Matrices..."

words5l[0]="LIKES"
words5l[1]="LOVES"
words5l[2]="NEEDS"
words5l[3]="ENJOY"
words5l[4]="PLACE"
words5l[5]="BLAME"
words5l[6]="BRING"
words5l[7]="ROYAL"
words5l[8]="SHAKE"
words5l[9]="DUMMY"

words5l[10]="CARGO"
words5l[11]="SHAME"
words5l[12]="WORST"
words5l[13]="SMASH"
words5l[14]="CLASH"
words5l[15]="SHELL"
words5l[16]="SNAKE"
words5l[17]="SHEEP"
words5l[18]="TREAT"
words5l[19]="CRAFT"

words5l[20]="APPLY"
words5l[21]="AGAIN"
words5l[22]="ANGRY"
words5l[23]="ARMOR"
words5l[24]="AUDIO"
words5l[25]="VIDEO"
words5l[26]="MOVIE"
words5l[27]="PHOTO"
words5l[28]="IDIOT"
words5l[29]="SILLY"

words5l[30]="ABORT"
words5l[31]="BLACK"
words5l[32]="GREEN"
words5l[33]="WHITE"
words5l[34]="ACTOR"
words5l[35]="ADOPT"
words5l[36]="ADULT"
words5l[37]="BIRTH"
words5l[38]="ADOBE"
words5l[39]="APPLE"

words5l[40]="ALARM"
words5l[41]="ALERT"
words5l[42]="ALLEY"
words5l[43]="ALLOW"
words5l[44]="ALPHA"
words5l[45]="ANGLE"
words5l[46]="ANNOY"
words5l[47]="ANVIL"
words5l[48]="ARENA"
words5l[49]="SCINE"

words5l[50]="ARRAY"
words5l[51]="AWAKE"
words5l[52]="AWFUL"
words5l[53]="BACON"
words5l[54]="BAKER"
words5l[55]="PIZZA"
words5l[56]="MOUSE"
words5l[57]="BEARD"
words5l[58]="BEGIN"
words5l[59]="BELOW"

words5l[60]="BIBLE"
words5l[61]="BISON"
words5l[62]="BLAST"
words5l[63]="BLOOD"
words5l[64]="BLEND"
words5l[65]="BRAKE"
words5l[66]="BRAND"
words5l[67]="BRAVE"
words5l[68]="BRICK"
words5l[69]="BROWN"

words5l[70]="BUILD"
words5l[71]="BUILT"
words5l[72]="CABIN"
words5l[73]="CACHE"
words5l[74]="CLAIM"
words5l[75]="CAMEL"
words5l[76]="CATCH"
words5l[77]="CHAIN"
words5l[78]="CHAIR"
words5l[79]="TABLE"

words5l[80]="PLAZA"
words5l[81]="CHECK"
words5l[82]="CHEEK"
words5l[83]="CHESS"
words5l[84]="CHEST"
words5l[85]="CIDER"
words5l[86]="CISCO"
words5l[87]="CLASS"
words5l[88]="CLOUD"
words5l[89]="CLICK"

words5l[90]="CLOCK"
words5l[91]="CLONE"
words5l[92]="CLOSE"
words5l[93]="COMIC"
words5l[94]="COUNT"
words5l[95]="CRACK"
words5l[96]="CREAM"
words5l[97]="CROSS"
words5l[98]="CROWD"
words5l[99]="CRUEL"

words5l[100]="DADDY"
words5l[101]="FURRY"
words5l[102]="DANCE"
words5l[103]="DAILY"
words5l[104]="DELTA"
words5l[105]="DEVIL"
words5l[106]="DIGIT"
words5l[107]="DISCO"
words5l[108]="DODGE"
words5l[109]="DRINK"

words5l[110]="DRIVE"
words5l[111]="DWARF"
words5l[112]="EARLY"
words5l[113]="EARTH"
words5l[114]="ELECT"
words5l[115]="EMAIL"
words5l[116]="EMPTY"
words5l[117]="ENEMY"
words5l[118]="ERASE"
words5l[119]="ERROR"

words5l[120]="EVENT"
words5l[121]="EXIST"
words5l[122]="EXTRA"
words5l[123]="FUNNY"
words5l[124]="FAULT"
words5l[125]="VAULT"
words5l[126]="FIRST"
words5l[127]="THIRD"
words5l[128]="FLASH"
words5l[129]="FRESH"

words5l[130]="FLAME"
words5l[131]="FLOOD"
words5l[132]="FORGE"
words5l[133]="FORTH"
words5l[134]="FRAME"
words5l[135]="TRUNC"
words5l[136]="THUMB"
words5l[137]="FRUIT"
words5l[138]="GHOST"
words5l[139]="GIANT"

words5l[140]="GLASS"
words5l[141]="GLOVE"
words5l[142]="GLOBE"
words5l[143]="GRAND"
words5l[144]="GRANT"
words5l[145]="GRAPH"
words5l[146]="HABIT"
words5l[147]="HEART"
words5l[148]="HONEY"
words5l[149]="HONOR"

words5l[150]="HORSE"
words5l[151]="HUMAN"
words5l[152]="IDEAL"
words5l[153]="IMAGE"
words5l[154]="INBOX"
words5l[155]="INGOT"
words5l[156]="JUICE"
words5l[157]="KEFIR"
words5l[158]="KNIFE"
words5l[159]="KNOWN"

words5l[160]="KNEEL"
words5l[161]="LABEL"
words5l[162]="LADIE"
words5l[163]="LASER"
words5l[164]="LARGE"
words5l[165]="LAUGH"
words5l[166]="LEGAL"
words5l[167]="LEMON"
words5l[168]="LIMBO"
words5l[169]="LOBBY"

words5l[170]="LOCAL"
words5l[171]="LOGIC"
words5l[172]="LOWER"
words5l[173]="MACRO"
words5l[174]="MICRO"
words5l[175]="MAFIA"
words5l[176]="MAJOR"
words5l[177]="MANGO"
words5l[178]="MANIA"
words5l[179]="MINOR"

words5l[180]="MATCH"
words5l[181]="METAL"
words5l[182]="METRO"
words5l[183]="NAKED"
words5l[184]="NASTY"
words5l[185]="NERVE"
words5l[186]="NEVER"
words5l[187]="NOISE"
words5l[188]="OCEAN"
words5l[189]="OFFER"

words5l[190]="ALIVE"
words5l[191]="ONION"
words5l[192]="OWNER"
words5l[193]="ORBIT"
words5l[194]="OTHER"
words5l[195]="OZONE"
words5l[196]="PAINT"
words5l[197]="PANEL"
words5l[198]="PAPER"
words5l[199]="PARSE"

words5l[200]="PASTA"
words5l[201]="PEACH"
words5l[202]="PETTY"
words5l[203]="PHONE"
words5l[204]="PLAIN"
words5l[205]="PLANE"
words5l[206]="PLANT"
words5l[207]="PLASM"
words5l[208]="POINT"
words5l[209]="PRINT"

words5l[210]="PROOF"
words5l[211]="PROXY"
words5l[212]="PUPIS"
words5l[213]="CHILD"
words5l[214]="PUPPY"
words5l[215]="QUAKE"
words5l[216]="QUART"
words5l[217]="QUBIT"
words5l[218]="QUEST"
words5l[219]="QUICK"

words5l[220]="QUIET"
words5l[221]="QUITE"
words5l[222]="RADIO"
words5l[223]="RACER"
words5l[224]="RAISE"
words5l[225]="REFER"
words5l[226]="RHINO"
words5l[227]="RIDER"
words5l[228]="RIGTH"
words5l[229]="SIGHT"

words5l[230]="RIVAL"
words5l[231]="ROBOT"
words5l[232]="ROCKY"
words5l[233]="ROGUE"
words5l[234]="ROUND"
words5l[235]="FLOOR"
words5l[236]="RIVER"
words5l[237]="RULER"
words5l[238]="WOMAN"
words5l[239]="SABRE"

words5l[240]="SCALE"
words5l[241]="SCARE"
words5l[242]="SCOPE"
words5l[243]="SERVE"
words5l[244]="SHADY"
words5l[245]="SHARK"
words5l[246]="SHARP"
words5l[247]="SHAVE"
words5l[248]="SHEET"
words5l[249]="SHORT"

words5l[250]="SHOUT"
words5l[251]="SHOOT"
words5l[252]="SHINY"
words5l[253]="SIXTY"
words5l[254]="SEVEN"
words5l[255]="SKILL"
words5l[256]="SKATE"
words5l[257]="SKULL"
words5l[258]="SLEEP"
words5l[259]="SMALL"

words5l[260]="SMOKE"
words5l[261]="SMILE"
words5l[262]="SPEED"
words5l[263]="SPOIL"
words5l[264]="WASTE"
words5l[265]="SPOON"
words5l[266]="SPELL"
words5l[267]="SPLIT"
words5l[268]="STAFF"
words5l[269]="STAIR"

words5l[270]="STEAL"
words5l[271]="STICK"
words5l[272]="STONE"
words5l[273]="STORM"

words5l_length=${#words5l[@]}

symbs[0]='.'
symbs[1]=','
symbs[2]=';'
symbs[3]=':'
symbs[4]='\'
symbs[5]='|'
symbs[6]='['
symbs[7]=']'
symbs[8]='<'
symbs[9]='>'
symbs[10]='!'
symbs[11]='@'
symbs[12]='#'
symbs[13]='$'
symbs[14]='%'
symbs[15]='^'
symbs[16]='&'
symbs[17]='*'
symbs[18]='('
symbs[19]=')'
symbs[20]='-'
symbs[21]='_'
symbs[22]='='
symbs[23]='+'

symbs_length=${#symbs[@]}


update() {
	tput cup 0 0

	case "$mode" in
		0) printHackingScreen ;;
		1) printMainMenu ;;
		2) printProtectronMenu ;;
		3) printProtectronPersonalityMenu ;;
	esac
}

listen() {
	use_grid=${1:-false}

	stty -igncr
	read -n 1 -s input
	stty igncr

	if [ $use_grid = false ]; then
		repaint
		selectList $input
	else
		if [ ${#selected_text} -eq 1 ]; then
			repaint
		else
			repaintGrid "$selection"
		fi
		selectGrid $input
	fi

	update
}

selectList() {
	case "$1" in
		"A") if [ $selected_item -gt 0 ]; then ((selected_item--)); fi ;;
		"B") if [ $selected_item -lt $max_item ]; then ((selected_item++)); fi ;;
		"") ${accept[$(($selected_item + 1))]} 
		 ;;
		*)	${accept[0]} ;;
	esac
}

selectGrid() {
	case "$1" in
		"A")
			if [ $selected_row -gt 5 ]; then
				((selected_row--))
			fi 
		;;
		"B")
			if [ $selected_row -lt $max_row ]; then
				((selected_row++))
			fi
		;;
		"C")
			if [ ${#selected_text} -eq 5 -a $selected_col -lt 34 ]; then
				((selected_col+=4))
			fi
			if [ $selected_col -eq 18 ]; then
				selected_col=27
			elif [ $selected_col -lt $max_col ]; then
				((selected_col++))
			fi
		;;
		"D")
			if [ $selected_col -eq 27 ]; then
				selected_col=18
			elif [ $selected_col -gt 7 ]; then
				((selected_col--))
			fi
		;;
		"") ${accept[0]} ;;
		
	esac
}

printMainMenu() {
	selected_text="${options_main_menu[$selected_item]}"
	end_len=$(($(tput cols) - ${#selected_text}))

	end=""
	i=0
	while [ $i -lt $end_len ]; do
		end="$end "
		((i++))
	done

	selected_text="$selected_text""$end"
	((selected_row=3 + selected_item))

	repaint true

	# tput cup 21 0
	# tput el
	# printf "> Password Accepted."
	tput cup 21 20

	listen
}

runHacking() {
	mode=0
	prepareListenerForHacking

	clearUp
	printText "$(printf "$terminal_heading")"
	echo
	printText "$(printf "$heading_hacking")"
	printAttempts
	echo

	rep=0                                   # PRINT TEXT
    ind=$indexing
    while [ $rep -lt 16 ]; do
    	echo
        printText "$(printf "0x")"
        printText "$(printf "%04x %s " $ind ${text:$(($rep * 12)):12} | tr [:lower:] [:upper:])"
        printText "$(printf "0x")"
        printText "$(printf "%04x %s" $(($ind + 208)) ${text:$(($rep * 12 + 192)):12} | tr [:lower:] [:upper:])"
        printText "$(printf " %s" ${user_input[ ${#user_input[@]} - 16 + $rep ]})"
        ((ind+=13))
        ((rep++))
    done

    update
}

printHackingScreen() {
	if [ $reprintAttempts = true ]; then
		tput cup 3 20
		tput el
		printAttempts
	fi

	if [ $selected_col -lt 19 ]; then
		index=$((($selected_row-5) * 12 + ($selected_col - 7)))
	else
		index=$((192 + ($selected_row-5) * 12 + ($selected_col - 27)))
	fi

	closeingBracket=""

	case "${text:$index:1}" in
		"<" ) closeingBracket=">" ;;
		"(" ) closeingBracket=")" ;;
		"[" ) closeingBracket="]" ;;
		"{" ) closeingBracket="}" ;;
	esac

	length=1

	if [ "$closeingBracket" != "" ]; then
		flag=false
		i=0
		while [ $i -lt $used_bonuses_index ]; do
			if [ $index -eq ${used_bunuses[$i]} ]; then
				flag=true
				break
			fi
			((i++))
		done

		if [ $flag = false ]; then
			i=$selected_col
			while [ $i -ne 18 -a $i -ne 38 ]; do
				((length++))
				((i++))
				if [ "${text:$(($index + $length - 1)):1}" = "$closeingBracket" ]; then
					break
				fi
			done
			if [ "${text:$(($index + $length - 1)):1}" != "$closeingBracket" ]; then
				length=1
			fi
		fi
	else
		i=0
		while [ $i -lt ${#word[@]} ]; do
		 	dif=$(($index - ${word_pos[$i]}))

		 	if [ $dif -lt 5 -a $dif -gt -1 ]; then
				length=5
				index=$(($index - $dif))
		 	fi
			((i++))
		done
	fi

	if [ $update_user_input = true ]; then
		printUserInput
		update_user_input=false
	fi

	if [ $attempts -lt 1 ]; then
		echo
		finish
	fi

    selection="${text:$index:$length}"

    tput cup 20 40
    tput el
	printf '>'
	i=0
	while [ $i -lt ${#selection} ]; do
		if [ "${selection:$i:1}" = "%" ]; then
    		printf "%%"
    	else
		    printf "${selection:$i:1}"
		fi
		((i++))
	done

	getGridOfIndex $index

    repaintGrid "$selection" true

    tput cup 20 $((41 + ${#selected_text}))

    listen true
}

printUserInput() {
	i=0
	ind=$(($user_input_index - 15))
	while [ $i -lt 16 ]; do
		tput cup $((5 + $i)) 40
		tput el
		printf "${user_input[$(($ind + $i))]}"
		((i++))
	done
}

printAttempts() {
	reprintAttempts=false
	sp=${1:-$speed}
	i=0
	while [ $i -lt $attempts ]; do
		printText "■ " $sp
		((i++))
	done
}

testWord() {
	index=$(( ($selected_row - 5) * 12 + $selected_col - 7 ))
	if [ $selected_col -gt 18 ]; then
		((index+=172))
	fi

	update_user_input=true

	flag=false
	i=0
	while [ $i -lt ${#word[@]} ]; do
		if [ $index = ${word_pos[$i]} ]; then
			flag=true
			break
		fi
		((i++))
	done

	if [ $flag = false ]; then
		if [ ${#selected_text} != 1 ]; then
			used_bunuses[$used_bonuses_index]=$index
			((used_bonuses_index++))
			useBonus
			return 0
		else
			unknownWord
			return 0
		fi
	fi

	if [ ${word[$i]} = $code_word ]; then
		hackingComplete
	else
		wrongAnswer "${text:$index:5}"
	fi
}

unknownWord() {
	symb="$selected_text"
	if [ "$symb" = "%" ]; then
    	symb="%%"
	fi
	user_input[$user_input_index]=">$symb"
	((user_input_index++))
	user_input[$user_input_index]=">$text_unknown_symb"
	((user_input_index++))
	user_input[$user_input_index]=""
}

hackingComplete() {
	runMainMenu
}

wrongAnswer() {
	((attempts--))
	reprintAttempts=true


	if [ $attempts -lt 1 ]; then
		user_input[$user_input_index]=">$text_init_lockout"
		return 0
	fi

	input=$1
	i=0
	likeness=0
	while [ $i -lt 5 ]; do
		if [ "${input:$i:1}" = "${code_word:$i:1}" ]; then
			((likeness++))
		fi
		((i++))
	done

	user_input[$user_input_index]=">$1"
	((user_input_index++))
	user_input[$user_input_index]=">$text_access_denied"
	((user_input_index++))
	user_input[$user_input_index]=">$text_likeness=$likeness"
	((user_input_index++))
	user_input[$user_input_index]=""
}

useBonus(){
	if [ $(($RANDOM % 2)) -eq 0 ];then
		restoreAttempts
	else
		removeWrongVar
	fi
}

restoreAttempts() {
	attempts=4
	reprintAttempts=true
	user_input[$user_input_index]=">$text_attempts_rest"
	((user_input_index++))
	user_input[$user_input_index]=""
}

removeWrongVar() {
	if [ $removed_words -eq $(($ammount - 1)) ]; then
		restoreAttempts
		return 0
	fi

	index=$(($RANDOM % $ammount))
	while [ $index -eq $code_word_index -o ${word_pos[$index]} -eq -1 ]; do
		index=$(($RANDOM % $ammount))	
	done

	((removed_words++))
	text=${text/${word[$index]}/'.....'}
	s_r=$selected_row
	s_c=$selected_col
	getGridOfIndex ${word_pos[$index]}
	tput cup $selected_row $selected_col
	repaintGrid '.....'
	selected_row=$s_r
	selected_col=$s_c
	tput cup $selected_row $selected_col
	word_pos[$index]=-1

	i=0
	while [ $i -lt ${#word_pos[@]} ]; do
		# echo "[ ${word_pos[$i]} $i ][ $index ${word_pos[$index]} ][ $ammount ]"
		((i++))
	done

	user_input[$user_input_index]=">$text_rem_wrong"
	((user_input_index++))
	user_input[$user_input_index]=""
}

printText() {
        str=${1:-""}
        counter=0

        while [ $counter -lt ${#str} ]; do
                symbol="${str:$counter:1}"
                if [ "$symbol" = "%" ]; then
                    printf "%%"
                else
                    printf "$symbol"
                fi

                sleep $speed
                # afplay &
                ((counter++))
        done
}

clearUp() {
	rows=$(tput lines)
	i=0
	while [ $i -lt $rows ]; do
		tput cup $i 0
		tput el
		((i++))
	done
	tput cup 0 0
}

clearListener() {
	selected_item=0
	selected_text=""
}

runMainMenu() {
	prepareListenerForMainMenu
	mode=1

	clearUp
	printText "$(printf "$terminal_heading")"
	echo
	printText "$(printf "$heading_main_menu")"
	echo
	echo

	i=0
	while [ $i -le $max_item ]; do
		printText "$(printf "${options_main_menu[$i]}")"
		echo
		((i++))
	done

	tput cup 21 0
	tput el
	printText "> $text_pass_accepted"

	update
}

prepareListenerForMainMenu() {
	clearListener
	selected_row=0
	selected_col=0
	max_item=$((${#options_main_menu[@]} - 1))
	i=0
	while [ $i -le $(($max_item + 1)) ]; do
		accept[$i]=${actions_main_menu[$i]}
		((i++))
	done
}

prepareListenerForHacking() {
	clearListener
	selected_row=5
	selected_col=7
	max_row=20
	max_col=38
	accept[0]="$action_hacking"

}

prepareListenerForProtectronMenu() {
	clearListener
	selected_row=0
	selected_col=0
	max_item=$((${#options_protectron[@]} - 1))
	i=0
	while [ $i -le $(($max_item + 1)) ]; do
		accept[$i]=${actions_protectron[$i]}
		((i++))
	done
}

prepareListenerForProtectronPersonalityMenu() {
	clearListener
	selected_row=0
	selected_col=0
	max_item=$((${#options_protectron_personality[@]} - 1))
	i=0
	while [ $i -le $(($max_item + 1)) ]; do
		accept[$i]=${actions_protectron_personality[$i]}
		((i++))
	done
}

getGridOfIndex() {
	ind=${1:-0}
	if [ $1 -lt 192 ]; then
		selected_row=$(($ind / 12 + 5))
		selected_col=$(($ind % 12 + 7))
	else
		selected_row=$(($ind / 12 - 16 + 5))
        selected_col=$(($ind % 12 + 27))
	fi
}

repaint() {
	selected=${1:-false}

	if [ $selected = true ]; then
		tput setab $bg_color
		tput setaf $fg_color
	fi

	tput cup $selected_row $selected_col
	if [ "$selected_text" = "%" ]; then
		printf "%%"
	else
		printf "$selected_text"
	fi

	tput sgr0
}

repaintGrid() {
	cont=${1:-$selected_text}
	selected=${2:-false}

	if [ $selected = true ]; then
		tput setab $bg_color
		tput setaf $fg_color
	fi

	ind2=$(( ($selected_row - 5) * 12 + $selected_col - 7 ))
	if [ $selected_col -gt 18 ]; then
		((ind2+=172))
	fi

	i=0
	while [ $i -lt ${#cont} ]; do
		getGridOfIndex $(($ind2 + $i))
		tput cup $selected_row $selected_col

		selected_text=${cont:$i:1}

		if [ "$selected_text" = "%" ]; then
			printf "%%"
		else
			printf "$selected_text"
		fi
		((i++))
	done

	selected_text="$cont"
	getGridOfIndex $ind2

	tput sgr0
}

setWait() {
	clear
	read -p ">"
	tput civis		#
	stty -echo		#
	stty igncr
	clear
}

finish() {
	tput cnorm
	stty echo
	stty -igncr
	echo
	exit 0
}

unlockSecGate() {
	for i in 3 4 5 6; do
		tput cup $i 0
		tput el
	done

	tput cup 21 0
	tput el
	printText "> $text_unlocking"
	tput cup 21 15
	sleep 5

	backToMenu
}

backToMenu() {
	tput cup 21 0
	tput el
	printText "> "

	tput cup 3 0
	i=0
	while [ $i -le $max_item ]; do
		printText "$(printf "${options_main_menu[$i]}")"
		echo
		((i++))
	done
}

runProtectronMenu() {
	prepareListenerForProtectronMenu
	mode=2

	clearUp
	printText "$terminal_heading"
	echo
	echo
	printText "$heading_protectron"
	echo
	echo

	i=0
	while [ $i -le $max_item ]; do
		printText "${options_protectron[$i]}"
		echo
		((i++))
	done

	tput cup 21 0
	tput el
	printText "> $text_interfaces"

	update
}

printProtectronMenu() {
	selected_text="${options_protectron[$selected_item]}"
	end_len=$(($(tput cols) - ${#selected_text}))

	end=""
	i=0
	while [ $i -lt $end_len ]; do
		end="$end "
		((i++))
	done

	selected_text="$selected_text""$end"
	((selected_row=13 + selected_item))

	repaint true

	tput cup 21 2

	listen
}

activateProtectron() {
	for i in {2..20}; do
		tput cup $i 0
		tput el
	done

	tput cup 21 0
	tput el
	printText "> $text_charge_pods"

	tput cup 4 0
	printText "$heading_protectron_activating"

	tput cup 21 20
	sleep 5

	backToProtectronMenu
}

backToProtectronMenu() {
	clearUp
	tput cup 21 0
	tput el
	printText "> "

	tput cup 0 0
	printf "$terminal_heading"
	echo
	echo
	printText "$heading_protectron"
	echo
	echo

	i=0
	while [ $i -le $max_item ]; do
		printText "${options_protectron[$i]}"
		echo
		((i++))
	done
}

runProtectronPersonality() {
	prepareListenerForProtectronPersonalityMenu
	mode=3

	clearUp
	printText "$terminal_heading"
	echo
	echo
	echo

	i=0
	while [ $i -le $max_item ]; do
		printText "${options_protectron_personality[$i]}"
		echo
		((i++))
	done

	tput cup 21 0
	tput el
	printText "> $text_personality_matr"

	update
}

printProtectronPersonalityMenu() {
	selected_text="${options_protectron_personality[$selected_item]}"
	end_len=$(($(tput cols) - ${#selected_text}))

	end=""
	i=0
	while [ $i -lt $end_len ]; do
		end="$end "
		((i++))
	done

	selected_text="$selected_text""$end"
	((selected_row=3 + selected_item))

	repaint true

	tput cup 21 33

	listen
}

runNotice1() {
	clearUp
	tput cup 21 0
	tput el
	printText "> "

	tput cup 0 0
	printText "$terminal_heading"
	echo
	echo

	printText "$notice1"

	tput cup 21 2

	stty -igncr
	read -n 1 -s input
	stty igncr

	case "$input" in
		"") runNotice2 ;;
		*)
			runMainMenu
			return 0
			;;
	esac
}

runNotice2() {
	for i in {2..20}; do
		tput cup $i 0
		tput el
	done

	tput cup 2 0

	printText "$notice2"

	tput cup 21 2

	stty -igncr
	read -n 1 -s input
	stty igncr

	case "$input" in
		"")	runMainMenu ;;
	esac
}


# RESOLUTION 
use_fullscreen=${1:-true}

if [ $use_fullscreen = true ]; then
        osascript -e 'tell application "Terminal" to activate'
        osascript -e 'tell application "System Events"' -e 'keystroke "f" using {control down, command down}' -e "end tell"
        clear
fi

# UPDATE MODE DEFINITION
mode=0

# SELECTION LISTENER
bg_color=2
fg_color=0

selected_row=0
selected_col=0
selected_item=0

max_item=0

selected_text=""

# HACKING
attempts=4
removed_words=0
reprintAttempts=true
indexing=($RANDOM % 30000)      # THE 0x0000 NUM
((ammount=$RANDOM % 5 + 7))     # THE AMMOUNT OF WORDS
((section=384 / $ammount))      # THE PART OF TEXT USED FOR 1 WORD

# SET UP WORDS POSITIONS

i=0
while [ $i -lt $ammount ]
do
	word_pos[$i]=$(($RANDOM % section + section * $i))

        if [ ${word_pos[$i]} -gt 379 ]; then
                continue
        fi

        ((i++))
done

# GET SOME WORDS

i=0
while [ $i -lt $ammount ]
do
	((word_loc=$RANDOM % words5l_length))
        
        k=0                     # CHECK IF THIS WORD HAS BEEN TAKEN
        flag=false
        while [ $k -lt $((${#word[@]} - 1)) ]
        do
                if [ "${words5l[$word_loc]}" = "${word[$k]}" ]
                then
                        flag=true
                fi
                ((k++))
        done

        if [ $flag = true ]
        then
                continue
        fi

        word[$i]=${words5l[$word_loc]}
        ((i++))
done

# SAVE CODE WORD

((code_word_index=$RANDOM % $ammount))
code_word=${word[$code_word_index]}
echo "right: $code_word $code_word_index"

# FILL UP TEXT TO PRINT

i=0
k=0
text=""
while [ $i -lt 385 ]; do
        if [ "$i" == "${word_pos[$k]}" ]
        then
                text="$text""${word[$k]}"
                ((k++))
                ((i+=5))
        else
	       ((var=$RANDOM % $symbs_length))
	       add=${symbs[$var]}
	       text="$text""${symbs[$var]}"
	       ((i++))
        fi
done

# USER INPUT TAB THAT FLOATS RIGHT

i=0
while [ $i -lt 15 ]
do
        user_input[$i]=" "
        ((i++))
done
user_input[15]=""
user_input_index=15
update_user_input=true

used_bunuses[0]=-1
used_bonuses_index=0

# PRINTING
speed=0.01


# EXECUTION
setWait

runHacking