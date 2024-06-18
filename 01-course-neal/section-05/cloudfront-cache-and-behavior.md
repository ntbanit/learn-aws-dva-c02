# Amazon CloudFront Cache and Behavior Settings

1. Set up S3 buckets
- A bucket to upload image files (pgn / jpg)
- A bucket to upload PDF file 

2. For static website:
- Enable public access
- Config as a static website
- Add file index.html (when ready)

3. Config CloudFront :
- Create a new CloudFront distribution 
- Add the static website as an origin (use website endpoint)
- Disable caching
- Add 2 more origins for the buckets containing the files and config OAC 
- Config cache behavior settings for each origin based on file type (PDF or png/jpg) and default going to the static website
