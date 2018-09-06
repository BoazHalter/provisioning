  pipeline 
{
	
  agent none 
  environment {
	 AZURE_IP = '137.135.94.240'
         AZURE_AD_USER = 'root'	
	 AZURE_PASSWORD = 'cueryuc1!cueryuc1!'
	}	
   
  stages 
  { 
	stage('Run Compiler') 
	{ 
		agent { dockerfile true	}
		
	
	stages 
	{
		
	   stage('Build')
	   {
	      steps
	      {
        	sh ''' 
		  	ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa
		  	sshpass -p cueryuc1!cueryuc1! scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null  ~/.ssh/id_rsa.pub boaz@${AZURE_IP}:/home/boaz/.ssh/authorized_keys
		  	ssh -o "StrictHostKeyChecking no" boaz@$AZURE_IP "sudo cp /home/boaz/.ssh/authorized_keys /root/.ssh/authorized_keys"
		  '''
		      
		sh 'export azure_ip=$AZURE_IP && sed -i "s/AZURE_IP/$azure_ip/g" inventory.yaml && ansible-playbook -i inventory.yaml playbooks/cleanHost.yaml'//-b --become-user=root    
	      }
	   }
	   stage('Test') 
	   {		  
              steps
	      {
                 sh 'echo mvn test'
              }
            }
        }	
        		
    }
  }
}
