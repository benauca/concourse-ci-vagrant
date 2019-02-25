docker-containers:
  lookup:
    registry:
      image: "registry:2"
      cmd:
      runoptions:
        - "-e REGISTRY_LOG_LEVEL=debug"
        - "-e REGISTRY_HTTP_DEBUG_ADDR=0.0.0.0:5001"
        - "-e REGISTRY_STORAGE_CACHE_LAYERINFO=inmemory"
        - "-e REGISTRY_STORAGE=s3"
        - "-e REGISTRY_STORAGE_S3_ACCESSKEY=minio"
        - "-e REGISTRY_STORAGE_S3_SECRETKEY=CHANGEME-05ba7d7c95362608"
        - "-e REGISTRY_STORAGE_S3_BUCKET=docker-registry"
        - "-e REGISTRY_STORAGE_S3_REGION=us-east-1"
        - "-e REGISTRY_STORAGE_S3_REGIONENDPOINT=http://192.168.50.4:9000"
        - "-e REGISTRY_STORAGE_S3_ENCRYPT=false"
        - "-e REGISTRY_STORAGE_S3_SECURE=true"
        - "-e REGISTRY_STORAGE_S3_V4AUTH=true"
        - "-e REGISTRY_STORAGE_S3_CHUNKSIZE=5242880"
        - "-e REGISTRY_STORAGE_S3_ROOTDIRECTORY=/"
        - "-p 5000:5000 -p 5001:5001"
        - "--restart=always"
        - "--name registry"