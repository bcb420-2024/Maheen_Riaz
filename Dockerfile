FROM risserlin/bcb420-base-image:winter2024-arm64

# set a working directory
WORKDIR /app

# Copy files to the container
COPY . /app

#install libraries 
RUN install2.r --error --deps TRUE \
    BiocManager \
    && R -e "BiocManager::install('DESeq2')" \
    && install2.r --error \
    pheatmap

#Add port
EXPOSE 8787



