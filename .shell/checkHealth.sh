sudo apt-get install jq
export API_URL_SSM="`aws ssm get-parameter --name /jcloudify-706038ca-39c9-41f5-a167-15b9f6eaef21/$1/api/url`"
export API_URL=`echo $API_URL_SSM | jq -r '.Parameter.Value'`
curl --fail "$API_URL$2"