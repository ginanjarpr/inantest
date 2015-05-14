while :
do
	pilih=$(zenity --entry --title="Backup" --text="Masukkan pilihan anda :\n1. Backup Dengan tar\n2. Backup dengan rsync\n3. Exit")

	case $pilih in
		1)
			pilih1=$(zenity --entry --title="tar" --text="Masukkan nama backup tar yang diinginkan beserta pathnya")
			pilih2=$(zenity --entry --title="tar" --text="Masukkan nama direktori atau file pertama yang akan dibackup beserta pathnya")
			pilih3=$(zenity --entry --title="tar" --text="Masukkan nama direktori atau file kedua yang akan dibackup")
			tar -cvf $pilih1 $pilih2 $pilih3
			exit 0
			;;
		2)
			pilih4=$(zenity --entry --title="tar" --text="Masukkan nama folder atau file yang akan dibackup beserta pathnya")
			pilih5=$(zenity --entry --title="tar" --text="Masukkan tujuan backup file atau direktori")
			rsync -avzh $pilih4 $pilih5
			exit 0
			;;
		3)
			exit 0
			;;
	esac
done
