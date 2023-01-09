# json-validate
JSON/ JSONL validator in bash.

## Requirements
```
conda create --name validatejson
conda activate validatejson
conda install -c conda-forge jq
```
or
```
conda install -c conda-forge python
```
## Run

```
chmod +x validate_json.sh

./validate_json.sh <file>
```
Replace `<file>` with the path to the file you want to validate.
