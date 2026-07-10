echo "[+] Summary:"
echo "Failed passwords: $(grep -c 'Failed password' $LOG_FILE)"
echo "Invalid users: $(grep -c 'Invalid user' $LOG_FILE)"