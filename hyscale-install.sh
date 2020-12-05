hyscale_version="$HYSCALE_VERSION"
docker pull hyscale/hyscale:${hyscale_version}

temp_container_name="hyscale=$(date +%s)"
docker create --name ${temp_container_name} hyscale/hyscale:${hyscale_version} 

docker cp $temp_container_name:/usr/local/bin/hyscale.jar /usr/local/bin/hyscale.jar

docker rm ${temp_container_name}

echo "Successfully Installed HyScale tool of version $hyscale_version"
