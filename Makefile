debs:
	rm -rf installer
	mkdir -p installer/openUtau_1.2-1_amd64/opt/
	mkdir -p installer/openUtau_1.2-1_i386/opt/
	mkdir -p installer/openUtau_1.2-1_arm64/opt/
	cp -r usr installer/openUtau_1.2-1_amd64/
	cp -r usr installer/openUtau_1.2-1_i386/
	cp -r usr installer/openUtau_1.2-1_arm64/

	mkdir -p installer/openUtau_1.2-1_i386/DEBIAN
	mkdir -p installer/openUtau_1.2-1_amd64/DEBIAN
	mkdir -p installer/openUtau_1.2-1_arm64/DEBIAN

	cp -r openUtau installer/openUtau_1.2-1_amd64/opt/
	cp deb/p* installer/openUtau_1.2-1_amd64/DEBIAN/
	cp deb/control_amd64/* installer/openUtau_1.2-1_amd64/DEBIAN/
	dpkg-deb --build --root-owner-group installer/openUtau_1.2-1_amd64


	cp -r openUtau installer/openUtau_1.2-1_i386/opt/
	cp deb/p* installer/openUtau_1.2-1_i386/DEBIAN/
	cp deb/control_i386/* installer/openUtau_1.2-1_i386/DEBIAN/
	dpkg-deb --build --root-owner-group installer/openUtau_1.2-1_i386

	cp -r openUtau installer/openUtau_1.2-1_arm64/opt/
	cp deb/p* installer/openUtau_1.2-1_arm64/DEBIAN/
	cp deb/control_arm64/* installer/openUtau_1.2-1_arm64/DEBIAN/
	dpkg-deb --build --root-owner-group installer/openUtau_1.2-1_arm64