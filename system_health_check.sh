echo "System Check Start..."
echo "Please Wait..."
ansible-playbook /etc/ansible/task/system_health_check.yml # 2>&1 > /dev/null
cat /etc/ansible/task/acom
cat /etc/ansible/task/output
echo "" > /etc/ansible/task/output
echo ""
