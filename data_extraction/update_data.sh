git config --global user.name 'sgomeza13'
git config --global user.email 'sgomeza13@eafit.edu.co'
# DEBE CONFIGURAR UNA VARIABLE DE AMBIENTE GH_TOKEN EN Github-Setttings-> Develope Settings -> Personal access token - > Tokens
# LUEGO DENTRO DEL REPOSITORIO: Settings -> Secrets and variables -> Actions -> Secrets -> Environment secrets
git remote set-url origin https://x-access-token:${{ secrets.GH_TOKEN }}@github.com/sgomeza13/sgomeza-mlops-ejemplo2.git
git add .
set +e 
git status | grep modified
if [ $? -eq 0 ]
then
    set -e
    git commit -am "Automatically updated data"
    git push
else
    set -e
    echo "No changes since last run"
fi