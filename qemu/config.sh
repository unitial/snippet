# for qemu-2.0 above
./configure --target-list=x86_64-softmmu --enable-linux-aio --enable-vhost-net --enable-glusterfs --enable-virtio-blk-data-plane --enable-vhost-scsi

# if need netmap, the modules and header files have to be installed first
./configure --target-list=x86_64-softmmu --enable-linux-aio --enable-vhost-net --enable-glusterfs --enable-virtio-blk-data-plane --enable-vhost-scsi --enable-netmap
