bin_PROGRAMS += controller/ovn-controller
controller_ovn_controller_SOURCES = \
	controller/bfd.c \
	controller/bfd.h \
	controller/binding.c \
	controller/binding.h \
	controller/chassis.c \
	controller/chassis.h \
	controller/encaps.c \
	controller/encaps.h \
	controller/ha-chassis.c \
	controller/ha-chassis.h \
	controller/if-status.c \
	controller/if-status.h \
	controller/ip-mcast.c \
	controller/ip-mcast.h \
	controller/lflow.c \
	controller/lflow.h \
	controller/lflow-cache.c \
	controller/lflow-cache.h \
	controller/lflow-conj-ids.c \
	controller/lflow-conj-ids.h \
	controller/lport.c \
	controller/lport.h \
	controller/ofctrl.c \
	controller/ofctrl.h \
	controller/ofctrl-seqno.c \
	controller/ofctrl-seqno.h \
	controller/pinctrl.c \
	controller/pinctrl.h \
	controller/patch.c \
	controller/patch.h \
	controller/ovn-controller.c \
	controller/ovn-controller.h \
	controller/physical.c \
	controller/physical.h \
	controller/mac-learn.c \
	controller/mac-learn.h \
	controller/local_data.c \
	controller/local_data.h \
	controller/ovsport.h \
	controller/ovsport.c \
	controller/vif-plug.h \
	controller/vif-plug.c

controller_ovn_controller_LDADD = \
	lib/libovn.la $(OVS_LIBDIR)/libopenvswitch.la \
	/usr/local/lib/x86_64-linux-gnu/librte_bus_vdev.a
man_MANS += controller/ovn-controller.8
EXTRA_DIST += controller/ovn-controller.8.xml
CLEANFILES += controller/ovn-controller.8
