pipeline
{
 agent any
 stages {
 stage('build'){
 steps{
 script{
 sh "ansible-playbook Ansible/build.yml -i Ansible/inventory/hosts.yml"
 }
 }
 
 }
 stage('docker')
 {
 steps{
 script{
 sh " ansible-playbook  /var/lib/jenkins/workspace/livraison/ansible/docker.yml -i ansible/hosts.yml "
 }
 }
 }
 }
 }
