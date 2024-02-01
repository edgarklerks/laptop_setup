if sudo true; then 
        ansible-playbook -e @vars/main.yaml -e @laptop.yaml playbooks/main.yaml
else 
        echo "Need sudo rights" 1>&2
fi 
