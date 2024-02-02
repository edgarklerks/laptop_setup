if sudo true; then 
        ansible-playbook -e @vars/main.yaml -e@vars/brew.yaml -e @work.yaml playbooks/main.yaml
else 
        echo "Need sudo rights" 1>&2
fi 
