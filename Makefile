MICROOVN_SNAP_PATH=$(CURDIR)/microovn.snap
build:
	@echo "Building the snap"
	@snapcraft pack --use-lxd -o $MICROOVN_SNAP_PATH

func-tests:
	@echo "Running functional tests"
	@bats tests/basic_cluster.bats