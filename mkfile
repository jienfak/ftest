<mkconfig

CFLAGS = -Wall
LDFLAGS = -lm

SRC = `{ls *.c}
OBJ = ${SRC:%.c=%.o}
TGT = ftest

all :Q: $TGT 
	echo -n
$TGT : $OBJ
	$LD $LDFLAGS -o $target $prereq
%.o :V: %.c
	$CC $CFLAGS -c -o $target $prereq
%.c :
	
%.h :
	
clean :V:
	rm -rf $TGT *.o
install :V: $TGT
	cp -f $TGT $ROOT/bin/
	sed s/VERSION/$VERSION/g <$TGT.1 > $ROOT/share/man/man1/$TGT.1
	chmod 0755 $ROOT/bin/$TGT
	chmod u+s $ROOT/bin/$TGT
	chmod 0644 $ROOT/share/man/man1/$TGT.1
