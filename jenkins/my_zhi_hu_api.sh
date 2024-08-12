cd /var/jenkins_home/workspace/MyZhiHuAPI
docker stop my_zhi_hu_api || true
docker rm my_zhi_hu_api || true
docker rmi my_zhi_hu_api || true
docker build -t my_zhi_hu_api -f ./MyZhiHuAPI/Dockerfile .
docker create -p 8888:8888 -e ASPNETCORE_URLS="https://+" -e ASPNETCORE_HTTPS_PORTS=8888 -e ASPNETCORE_Kestrel__Certificates__Default__Password="abc123" -e ASPNETCORE_Kestrel__Certificates__Default__Path=/https/aspnetapp.pfx -v MyZhiHuAPIConfig:/https --name my_zhi_hu_api my_zhi_hu_api
docker start my_zhi_hu_api
