rm -rf /sjc-test-standard-vol/testuser/.cache
rm -rf /sjc-test-prem-vol/testuser/.cache
rm -rf /sjc-test-ultra-vol/testuser/.cache
rm -rf /sjc-test-sa/testuser/.cache


usermod -d /sjc-test-standard-vol/testuser testuser
su - testuser
export PATH=/opt/python/3.11.4/bin:$PATH
./pytorch.sh > ~/standard-run1
rm -rf ~/.cache
./pytorch.sh > ~/standard-run2
rm -rf ~/.cache
./pytorch.sh > ~/standard-run3
rm -rf ~/.cache
exit
usermod -d /sjc-test-prem-vol/testuser testuser
su - testuser
export PATH=/opt/python/3.11.4/bin:$PATH
./pytorch.sh > ~/prem-run1
rm -rf ~/.cache
./pytorch.sh > ~/prem-run2
rm -rf ~/.cache
./pytorch.sh > ~/prem-run3
rm -rf ~/.cache
exit
usermod -d /sjc-test-ultra-vol/testuser testuser
su - testuser
export PATH=/opt/python/3.11.4/bin:$PATH
./pytorch.sh > ~/ultra-run1
rm -rf ~/.cache
./pytorch.sh > ~/ultra-run2
rm -rf ~/.cache
./pytorch.sh > ~/ultra-run3
rm -rf ~/.cache
exit
usermod -d /sjc-test-sa/testuser testuser
su - testuser
export PATH=/opt/python/3.11.4/bin:$PATH
./pytorch.sh > ~/sa-run1
rm -rf ~/.cache
./pytorch.sh > ~/sa-run2
rm -rf ~/.cache
./pytorch.sh > ~/sa-run3
rm -rf ~/.cache
exit

usermod -d /sjc-test-nfs-vol/testuser testuser
su - testuser
export PATH=/opt/python/3.11.4/bin:$PATH
./pytorch.sh > ~/nfs-run1
rm -rf ~/.cache
./pytorch.sh > ~/nfs-run2
rm -rf ~/.cache
./pytorch.sh > ~/nfs-run3
rm -rf ~/.cache
exit

usermod -d /sjc-test-local-vol/testuser testuser
su - testuser
export PATH=/opt/python/3.11.4/bin:$PATH
./pytorch.sh > ~/local-run1
rm -rf ~/.cache
./pytorch.sh > ~/local-run2
rm -rf ~/.cache
./pytorch.sh > ~/local-run3
rm -rf ~/.cache
exit