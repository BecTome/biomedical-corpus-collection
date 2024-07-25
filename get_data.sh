# Create a data directory if not exists
mkdir -p data

## ClinSpEn corpora
# Download ClinSpEn corpora
wget https://zenodo.org/records/7711516/files/clinspen_corpora_complete.zip

## BARR corpora
# Download BARR  corpora (Train 2)
wget https://temu.bsc.es/BARR/BARR_ibereval_training2_set.zip

# Download BARR Background 1
wget https://temu.bsc.es/BARR/BARR_ibereval_background1_set.zip

# Download spradie train

## Extract all the zips and save them in the data directory
unzip -o '*.zip' -d data

# Remove the zips
rm *.zip

# move BARR corpora to BARR directory
mkdir -p data/BARR
mv data/BARR_* data/BARR

