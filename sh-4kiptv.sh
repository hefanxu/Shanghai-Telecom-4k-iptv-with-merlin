cd /jffs/scripts
rm -rf 4k-start*
wget --no-check-certificate https://raw.githubusercontent.com/hefanxu/Shanghai-Telecom-4k-iptv-with-merlin/master/4k-start
chmod -R 0755 4k-start
cd /jffs/ss/redchn
rm -rf dnsmasq.postconf
wget --no-check-certificate https://raw.githubusercontent.com/hefanxu/Shanghai-Telecom-4k-iptv-with-merlin/master/ss
mv ss dnsmasq.postconf
chmod -R 0755 dnsmasq.postconf
service restart_dnsmasq
cd
echo Finish!!! You Can Watch 4K IPTV In Lan4
