
COUNTER=0

while [ $COUNTER -lt ${SCRIPT_INPUT_FILE_COUNT} ]; do
    map="SCRIPT_INPUT_FILE_$COUNTER"
    FILE=${!map}
    if [[ "$FILE" == *.bcsymbolmap ]]; then
        echo "will copy"
        cp -v $FILE "${CONFIGURATION_BUILD_DIR}"
    fi
    let COUNTER=COUNTER+1
done


