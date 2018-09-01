  pipeline 
{
	
  agent none 
  environment {
	 AZURE_IP = '137.117.108.102'
         AZURE_AD_USER = 'root'	
	 AZURE_PASSWORD = 'cueryuc1!cueryuc1!'
	}	
   
  stages 
  { 
	stage('Run Compiler') 
	{ 
           agent { dockerfile true }
        stage('Connect to host') 
	{
		steps{
			sh ''' 
		  	ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa
		  	sshpass -p cueryuc1!cueryuc1! scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null  ~/.ssh/id_rsa.pub boaz@${AZURE_IP}:/home/boaz/.ssh/authorized_keys
		  	ssh -o "StrictHostKeyChecking no" boaz@$azure_ip hostname 
		  '''
		}
	}
	stages 
	{
		
	   stage('Build')
	   {
	      steps
	      {
	         sh 'printenv'
	         input ''
		  sh 'ansible-playbook -i inventory.yaml play.yaml -vvv'    
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
