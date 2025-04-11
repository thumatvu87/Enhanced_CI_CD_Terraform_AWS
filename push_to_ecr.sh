
#!/bin/bash
$(aws ecr get-login --no-include-email --region us-east-1)
docker tag myapp:latest 123456789012.dkr.ecr.us-east-1.amazonaws.com/myapp:latest
docker push 123456789012.dkr.ecr.us-east-1.amazonaws.com/myapp:latest
