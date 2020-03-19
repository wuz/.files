unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=linux;;
    Darwin*)    machine=mac;;
    *)          machine="unknown:${unameOut}"
esac

echo "Looks like this is a ${machine}..."

#---- ALL MACHINES

# install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.2
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc

#---- MAC
if [ "$machine" == "mac" ]
then
  echo "Installing Mac tools..."
fi
