sudo systemctl start bsm-monitor.service
sudo systemctl status bsm-monitor.service
touch /home/eto/bsm/test/sample.txt
echo "Test içerik" > /home/eto/bsm/test/sample.txt
cat /home/eto/bsm/logs/changes.json
pip list
(bsm_env) eto@ertugrul:~$
printenv
# Sanal ortam oluştur
python3 -m venv ~/bsm_env
# Sanal ortamı etkinleştir
source ~/bsm_env/bin/activate
# Gerekli kütüphaneleri yükle
pip install watchdog
nano ~/directory_watcher.py
python3 ~/directory_watcher.py
touch ~/bsm/test/test1.txt
echo "Merhaba" > ~/bsm/test/test1.txt
rm ~/bsm/test/test1.txt
cat ~/bsm/logs/changes.json
sudo nano /etc/systemd/system/directory_watcher.service
sudo systemctl daemon-reload
sudo systemctl enable directory_watcher.service
sudo systemctl start directory_watcher.service
sudo systemctl status directory_watcher.service
touch ~/bsm/test/example.txt
echo "Deneme içerik" > ~/bsm/test/example.txt
rm ~/bsm/test/example.txt
cat ~/bsm/logs/changes.json
cd ~
git init
git add directory_watcher.py
git add /etc/systemd/system/directory_watcher.service
git commit -m "Dizin izleyici ödevi"
git branch -M main
git remote add origin <repository-url>
git push -u origin main
sudo apt update
sudo apt install git
git --version
git config --global user.name "Ertuğrul Kerem Serdaroğlu"
git config --global user.email "ertugrul.serdaroglu@ogr.sakarya.edu.tr"
git config --list
cd ~
git init
git add directory_watcher.py
git add /etc/systemd/system/directory_watcher.service
git commit -m "Dizin izleyici ödevi"
sudo reboot
