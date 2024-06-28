# Deploy Hello World application 
python --version
sam init --runtime python3.9 --dependency-manager pip --app-template hello-world --name sam-app 
cd sam-app
sam build 
sam deploy --guided
curl API-ENDPOINT-URL

