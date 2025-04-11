
#!/bin/bash
ssh -o StrictHostKeyChecking=no ec2-user@<EC2-PUBLIC-IP> << 'ENDSSH'
  docker pull 123456789012.dkr.ecr.us-east-1.amazonaws.com/myapp:latest
  docker run -d -p 80:80 myapp:latest
ENDSSH
