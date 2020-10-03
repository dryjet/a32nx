docker rm -f python
docker run -it -d --name python -v %cd%/A32NX:/usr/src/myapp/ python
docker exec -w /usr/src/myapp -it python python /usr/src/myapp/build.py
docker rm -f python

del /S /F /Q H:\Flightsim\Packages\Community\A32NX
rmdir /S /Q H:\Flightsim\Packages\Community\A32NX
echo d | xcopy A32NX H:\Flightsim\Packages\Community\A32NX /E /H /C /R /Q /Y