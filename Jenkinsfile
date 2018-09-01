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
		steps
		{ 
	          sh ''' 
		  ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa
		  sshpass -p cueryuc1!cueryuc1! scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null  ~/.ssh/id_rsa.pub boaz@${AZURE_IP}:/home/boaz/.ssh/authorized_keys
		  ssh -o "StrictHostKeyChecking no" boaz@$azure_ip hostname 
		  '''
		}
		

               // agent 
		//{
                //docker 
		//{
                //  image '10.0.0.26:5012/ansible:centos'
                //  args '-v /root/.ssh:/root/.ssh'	
                //}
        //}
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
