while :
do
	pilih=$(zenity --entry --title="File Management" --text="Masukkan pilihan anda :\n1. Membuat file baru\n2. Membuat direktori baru\n3. Mengcopy file ke direktori tertentu\n4. Menghapus file\n5. Menghapus Direktori\n6. Exit ")

	case $pilih in
		1)
			pilih1=$(zenity --entry --title="Membuat File Baru" --text="Masukkan direktori tujuan beserta nama filenya")
			touch $pilih1
			exit 0
			;;
		2)
			pilih2=$(zenity --entry --title="Membuat Direktori Baru" --text="Masukkan nama direktori baru yang akan dibuat beserta pathnya")
			mkdir $pilih2
			exit 0
			;;
		3)
			pilih3=$(zenity --entry --title="Mengcopy file ke direktori tertentu" --text="Masukkan nama file yang akan dicopy beserta pathnya")
			pilih4=$(zenity --entry --title="Mengcopy file ke direktori tertentu" --text="Masukkan tujuan direktori")
			cp $pilih3 $pilih4
			exit 0
			;;
		4)
			pilih5=$(zenity --entry --title="Menghapus file" --text="Masukkan file yang akan dihapus beserta pathnya")
			rm $pilih5
			exit 0
			;;
		5)
			pilih6=$(zenity --entry --title="Menghapus direktori" --text="Masukkan direktori yang akan dihapus beserta pathnya")
			rmdir $pilih6
			exit 0
			;;
		6)
			exit 0
			;;
	esac
done
