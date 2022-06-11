C3DIR=$1;

for C3FILE in $C3DIR/*.md; do
    C3NOEXT=${C3FILE%.md};

    kramdoc --format=GFM --wrap=ventilate --output=${C3NOEXT}.adoc ${C3FILE};
    #pandoc ${C3FILE} -f markdown -t html -s -o ${C3NOEXT}.html
done;
