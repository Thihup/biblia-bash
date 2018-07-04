#!/bin/bash
#+-------------------------------------------------------+
#|Program: Bíblia DW                                     |
#|Version: 1.0.1                                         |
#|Autor: Francisco Iago Lira Passos                      |
#|GitHub: https://github.com/iagolirapasssos/biblia-bash |
#+-------------------------------------------------------+

export site="https://www.bibliaonline.com.br"
export dirat="antigo-testamento"
export dirnt="novo-testamento"


function jmp() {
    tput cup $1 $2
}

function menu() {
    clear
	echo "
	+--------------------------------+
	| NVI- Nova Versão Internacional |
	|--------------------------------|
	|                                |
	| [1] Velho testamento (VT)      |
	| [2] Novo testamento (NT)       |
	| [0] Sair (Ctrl+C)              |
	|                                |
	+--------------------------------+"
	read -p "Escolha o VT(1) ou NT(2): " lv
	
	case "$lv" in
	 1) atm
	 ;;
	 2) ntm
	 ;;
	 0) exit; echo
	 ;;
	 *) menu
	 ;;
	esac
}

function vt() {
case "$1" in
    1)
    imax=50
    livro="Gênesis"
    abv="gn"
    ;;
    2)
    imax=40
    livro="Êxodo"
    abv="ex"
    ;;
    3)
    imax=27
    livro="Levíticos"
    abv="lv"
    ;;
    4)
    imax=36
    livro="Números"
    abv="nm"
    ;;
    5)
    imax=34
    livro="Deuteronômio"
    abv="dt"
    ;;
    6)
    imax=24
    livro="Josué"
    abv="js"
    ;;
    7)
    imax=21
    livro="Juízes"
    abv="jz"
    ;;
    8)
    imax=4
    livro="Rute"
    abv="rt"
    ;;
    9)
    imax=31
    livro="1Samuel"
    abv="1sm"
    ;;
    10)
    imax=24
    livro="2Samuel"
    abv="2sm"
    ;;
    11)
    imax=22
    livro="1Reis"
    abv="1rs"
    ;;
    12)
    imax=25
    livro="2Reis"
    abv="2rs"
    ;;
    13)
    imax=29
    livro="1Crônicas"
    abv="1cr"
    ;;
    14)
    imax=36
    livro="2Crônicas"
    abv="2cr"
    ;;
    15)
    imax=10
    livro="Esdras"
    abv="ed"
    ;;
    16)
    imax=13
    livro="Neemias"
    abv="ne"
    ;;
    17)
    imax=10
    livro="Ester"
    abv="et"
    ;;
    18)
    imax=42
    livro="Jó"
    abv="jó"
    ;;
    19)
    imax=150
    livro="Salmos"
    abv="sl"
    ;;
    20)
    imax=31
    livro="Provérbios"
    abv="pv"
    ;;
    21)
    imax=12
    livro="Eclesiastes"
    abv="ec"
    ;;
    22)
    imax=8
    livro="Cânticos"
    abv="ct"
    ;;
    23)
    imax=66
    livro="Isaías"
    abv="is"
    ;;
    24)
    imax=52
    livro="jeremias"
    abv="jr"
    ;;
    25)
    imax=5
    livro="Lamentações"
    abv="lm"
    ;;
    26)
    imax=48
    livro="Ezequiel"
    abv="ez"
    ;;
    27)
    imax=12
    livro="Daniel"
    abv="dn"
    ;;
    28)
    imax=14
    livro="Oséias"
    abv="os"
    ;;
    29)
    imax=3
    livro="Joel"
    abv="jl"
    ;;
    30)
    imax=9
    livro="Amós"
    abv="am"
    ;;
    31)
    imax=1
    livro="Obadias"
    abv="ob"
    ;;
    32)
    imax=4
    livro="Jonas"
    abv="jn"
    ;;
    33)
    imax=7
    livro="Miqueias"
    abv="mq"
    ;;
    34)
    imax=3
    livro="Naum"
    abv="na"
    ;;
    35)
    imax=3
    livro="Habacuque"
    abv="hc"
    ;;
    36)
    imax=3
    livro="Sofonias"
    abv="sf"
    ;;
    37)
    imax=2
    livro="Ageu"
    abv="ag"
    ;;
    38)
    imax=14
    livro="Zacarias"
    abv="zc"
    ;;
    39)
    imax=4
    livro="Malaquias"
    abv="ml"
    ;;
    *)
    echo "Entre com outro número!"
    ;;
esac
 case $3 in
    1)
        bb="acf"
    ;;
    2)
        bb="nvi"
    ;;
    3)
        bb="tb"
    ;;
    4)
        bb="vc"
    ;;
    *)
        vtm
    ;;
    esac
    
if [ "$2" == "b" ]; then
    vtb="at"
    builddir "$imax" "$abv" "$vtb" "$livro" "$bb"
elif [ "$2" == "l" ] || [ "$2" == "L" ]; then
    vtb="at"
    menuler "$abv" "$vtb" "$livro" "$bb"
fi
}

function nt() {
case "$1" in
    1)
    imax=28
    livro="Mateus"
    abv="mt"
    ;;
    2)
    imax=16
    livro="Marcos"
    abv="mc"
    ;;
    3)
    imax=24
    livro="Lucas"
    abv="lc"
    ;;
    4)
    imax=21
    livro="João"
    abv="jo"
    ;;
    5)
    imax=28
    livro="Atos"
    abv="atos"
    ;;
    6)
    imax=16
    livro="Romanos"
    abv="rm"
    ;;
    7)
    imax=16
    livro="1Coríntios"
    abv="1co"
    ;;
    8)
    imax=13
    livro="2Coríntios"
    abv="2co"
    ;;
    9)
    imax=6
    livro="Gálatas"
    abv="gl"
    ;;
    10)
    imax=6
    livro="Efésios"
    abv="ef"
    ;;
    11)
    imax=4
    livro="Filipenses"
    abv="fp"
    ;;
    12)
    imax=4
    livro="Colossenses"
    abv="cl"
    ;;
    13)
    imax=5
    livro="1Tessalonicenses"
    abv="1ts"
    ;;
    14)
    imax=3
    livro="2Tessalonicenses"
    abv="2ts"
    ;;
    15)
    imax=6
    livro="1Timóteo"
    abv="1tm"
    ;;
    16)
    imax=4
    livro="2Timóteo"
    abv="2tm"
    ;;
    17)
    imax=3
    livro="Tito"
    abv="tt"
    ;;
    18)
    imax=1
    livro="Filemom"
    abv="fm"
    ;;
    19)
    imax=13
    livro="Hebreus"
    abv="hb"
    ;;
    20)
    imax=5
    livro="Tiago"
    abv="tg"
    ;;
    21)
    imax=5
    livro="1Pedro"
    abv="1pe"
    ;;
    22)
    imax=3
    livro="2Pedro"
    abv="2pe"
    ;;
    23)
    imax=5
    livro="1João"
    abv="1jo"
    ;;
    24)
    imax=1
    livro="2João"
    abv="2jo"
    ;;
    25)
    imax=1
    livro="3João"
    abv="3jo"
    ;;
    26)
    imax=1
    livro="Judas"
    abv="jd"
    ;;
    27)
    imax=22
    livro="Apocalipse"
    abv="ap"
    ;;
    *)
    echo "Entre com outro número!"
    ;;
esac
    case $3 in
    1)
        bb="acf"
    ;;
    2)
        bb="nvi"
    ;;
    3)
        bb="tb"
    ;;
    4)
        bb="vc"
    ;;
    *)
        ntm
    ;;
    esac
    
if [ "$2" == "b" ]; then
    ntb="nt"
    builddir "$imax" "$abv" "$ntb" "$livro" "$bb"
elif [ "$2" == "l" ] || [ "$2" == "L" ]; then
    ntb="nt"
    menuler "$abv" "$ntb" "$livro" "$bb"
fi
}

function versaob() {
        echo "
        +----------------------------------------+
        |     Escolha uma das versões            |
        |                                        |
        |  [1] Almeida Corrigida Fiel (ACF)      |
        |  [2] Nova Versão Internacional (NVI)   |
        |  [3] Sociedade Bíblica Critânica (SBC) |
        |  [4] Versão Católica (VC)              |
        +----------------------------------------+
        "
read -p "Digite o índice correspondente a versão bíblica: " vsb
}

#antigo testamento
    function atm() {
      clear
      echo "
      +-------------------------------------------------------+
      |           A N T I G O  T E S T A M E N T O            | 
      +-------------------------------------------------------+
      | [01] Gn    [02] Ex   [03] Lv    [04] Nm    [05] Dt    |
      | [06] Js    [07] Jz   [08] Rt    [09] 1Sm   [10] 2Sm   |
      | [11] 1Rs   [12] 2Rs  [13] 1Cr   [14] 2Cr   [15] ed    |
      | [16] Ne    [17] Et   [18] Jó    [19] Sl    [20] Pv    |
      | [21] Ec    [22] Ct   [23] Is    [24] Jr    [25] Lm    |
      | [26] Ez    [27] Dn   [28] Os    [29] Jl    [30] Am    |
      | [31] Ob    [32] Jn   [33] Mq    [34] Na    [35] Hc    |
      | [36] Sf    [37] Ag   [38] Zc    [39] Ml               |
      +-------------------------------------------------------+"
      read -p "Deseja baixar ou ler os livros (b/l)? " bl
      echo
      
       if [ "$bl" == "b" ] || [ "$bl" == "B" ]; then
      read -p "Você irá baixar um (1) ou vários livros (2)? " bv
    
        case $bv in
        1)
            versaob
            read -p "Escolha o livro pelo índice (ex.: 23): " a
            vt "$a" "$bl" "$vsb"
            menu
        ;;
        2)
            versaob
            read -p "Digite o intervalo a ser baixado (ex.1 39): " a b
            for (( j="$a"; j<="$b"; j++ ))
            do
                vt "$j" "$bl" "$vsb"
            done
            menu
        ;;
        *) 
            echo "Opção inválida! Digite '0' ou '1'."
        ;;
        esac
      elif [ "$bl" == "l" ] || [ "$bl" == "L" ]; then
        versaob
        read -p "Escolha o livro pelo índice (ex.: 23): " a
        vt "$a" "$bl" "$vsb"
        menu
      else
        atm
      fi
}
#antigo testamento

#novo testamento
    function ntm() {
      clear
      echo "
      +-------------------------------------------------------+
      |            N O V O  T E S T A M E N T O               | 
      +-------------------------------------------------------+
      | [01] Mt    [02] Mc    [03] Lc   [04] Jo    [05] At    |
      | [06] Rm    [07] 1Co   [08] 2Co  [09] Gl    [10] Ef    |
      | [11] Fp    [12] Cl    [13] 1Ts  [14] 2Ts   [15] 1Tm   |
      | [16] 2Tm   [17] Tt    [18] Fm   [19] Hb    [20] Tg    |
      | [21] 1Pe   [22] 2Pe   [23] 1Jo  [24] 2Jo   [25] 3Jo   |
      | [26] Jd    [27] Ap                                    |
      +-------------------------------------------------------+"
      read -p "Deseja baixar ou ler os livros (b/l)? " bl
      
       if [ "$bl" == "b" ] || [ "$bl" == "B" ]; then
      read -p "Você irá baixar um (1) ou vários livros (2)? " bv
    
        case $bv in
        1)
            versaob
            read -p "Escolha o livro pelo índice (ex.: 23): " a
            nt "$a" "$bl" "$vsb"
        ;;
        2)
            versaob
            read -p "Digite o intervalo a ser baixado (ex.1 27): " a b
            for (( j="$a"; j<="$b"; j++ ))
            do
                nt "$j" "$bl" "$vsb"
            done
        ;;
        *) 
            echo "Opção inválida! Digite '0' ou '1'."
        ;;
        esac
      elif [ "$bl" == "l" ] || [ "$bl" == "L" ]; then
      versaob
      read -p "Escolha o livro pelo índice (ex.: 23): " a
        nt "$a" "$bl" "$vsb"
      else
        ntm
      fi
    }
#antigo testamento


#Limpa linha
function clearline() {
    jmp "$1" "$2"
    ind=$(("$3"))
    for (( i=1; i<"$ind"; i++ )); do printf '%.s '; done
}
#Limpa linha

#barra progresso
function progresso() {
clear
    ini=2
    imax=51
    
    per=$(echo "scale=0; ($1*50)/$2" | bc)
    per2=$((2*"$per"))
    
    jmp "$ini" 0
    echo "["
    jmp "$ini" "$(($imax+3))"
    echo "][  "$per2"%  ]"
    
    echo "Baixando o livro de $3..."
  
    clearline "$ini" 1 "$per" 
    jmp "$ini" 1
    for (( i=0; i<"$per"; i++ )); do printf '%.s='; done
    echo
}
#barra progresso

#construir diretorio
function builddir() {
        [[ -d "$5" ]] || mkdir "$5"
        [[ -d "$5"/at ]] || mkdir "$5"/at

        [[ -d "$5" ]] || mkdir "$5"
        [[ -d "$5"/nt ]] || mkdir "$5"/nt
        
        buildbook "$1" "$2" "$3" "$5" "$4"
}
#construir diretorio

#Detectar a tecla up, dw e zero
function key() {
	keyup='\[A'
	keydown='\[B'
	keyzero='0'

	SUCCESSO=0

	read -n3 key                      # Ler 3 caracteres

	echo -n "$key" | grep "$keyup"  #verifica se o codigo do caract. foi detectado
	if [ "$?" -eq $SUCCESSO ]
	then
		keyud=1
	fi

	echo -n "$key" | grep "$keydown"
	if [ "$?" -eq $SUCCESSO ]
	then
		keyud=2
	fi
	
	echo -n "$key" | grep "$keyzero"
	if [ "$?" -eq $SUCCESSO ]
	then
		keyud=0
	fi
}
#Detectar a tecla up ou dw

#construir livro

function buildbook() {
    for (( k=1; k<="$1"; k++ ))
    do
       progresso "$k" "$1" "$5"
       wget -qO file "$site"/"$4"/"$2"/"$k"

       grep -oP '(?<=osisID=\\\").*(</verse>)' file |\
       sed 's/\<verse osisID=\\\"/\n/g; s/[/\><]//g; s/"/ /g; s/&quot;\|verse//g; s/—/-/g' |\
       sed '1d; s/\./@ /; s/.*@//g; s/.//' |\
       sed -e "s/^/$2 /g; s/^[a-zA-Z]/\U&/g" >> "$4"/"$3"/"$2"
    done
    [[ -f file ]] && rm -f file
}
#construir livro

#Gerenciar livro
function lerlivro() {
book="$4"/"$2"/"$1" #Diretorio do livro
linebook=$(wc -l "$book" | sed 's/[^0-9]//g') #numero de linhas do livro

unset i
i=1
read -p "Quantas linhas você deseja ler por vez? " lpv
while :
do	clear
	echo "
         +------------------------------+
         |Tecle a seta para cima ou     |
         |a tecla para baixo para       |
         |avançar ou voltar uma linha   |
         +------------------------------|
         |                              |
         | [0]  Ir ao menu              |
         |                              |
         +------------------------------+
         Linha "$i" de "$linebook""
    
	grep -oP '(?<=[a-zA-Z] ).*(?=$)' "$book" | head -"$i" | tail -n "$lpv"
	
	key #chama a funcao key
	
	if [ "$keyud" == 2 ]; then
		let i="$i"+1
	elif [ "$keyud" == 1 ] && [ "$i" > 1 ]; then
		 let i=$i-1
	elif [ "$keyud" == 1 ] && [ "$i" == 1 ]; then
		 i=1
    elif [ "$keyud" == 0 ]; then
         menuler "$1" "$2" "$3" "$4"
	fi
        #Nao pode passar do maximo
		[[ "$i" -gt "$linebook" ]] && i="$linebook"
		#Nao pode ser menor que o minimo
		[[ "$i" -lt 1 ]] && i=1
done
}

function menuler(){
     clear
     echo "
             Livro de "$3"
     +------------------------------+
     |       MENU DE LEITURA        |
     +------------------------------+
     |                              |
     | [1] Ler livro                |
     | [2] Pesquisar palavra(s)     |
     | [0] Voltar ao menu principal |
     |                              |
     +------------------------------+"
     
     read -p "Digite a opção desejada: " opc
     echo
     
     case "$opc" in
     1)
        lerlivro "$1" "$2" "$3" "$4"
     ;;
     2)
        echo "Em construção..."
        sleep 0.5
        menu
     ;;
     0)
        menu
     ;;
     *)
        echo "Digite um índice válido!"
        sleep 0.5
        menuler
     ;;
     esac
}
#Gerenciar livro

#chama menu
    menu
#chama menu
