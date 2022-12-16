debs:
	# mkdir -p installer/openUtau_1.2-1_amd64/usr/local/bin
	# mkdir -p installer/openUtau_1.2-1_i386/usr/local/bin
	# mkdir -p installer/openUtau_1.2-1_arm64/usr/local/bin
	mkdir -p installer/openUtau_1.2-1_amd64/opt/
	mkdir -p installer/openUtau_1.2-1_i386/opt/
	mkdir -p installer/openUtau_1.2-1_arm64/opt/
	mkdir -p installer/openUtau_1.2-1_amd64/usr/share/applications/
	mkdir -p installer/openUtau_1.2-1_i386/usr/share/applications/
	mkdir -p installer/openUtau_1.2-1_arm64/usr/share/applications/

	mkdir -p installer/openUtau_1.2-1_amd64/usr/share/pixmaps/
	mkdir -p installer/openUtau_1.2-1_i386/usr/share/pixmaps/
	mkdir -p installer/openUtau_1.2-1_arm64/usr/share/pixmaps/
	
	cp openutau.desktop installer/openUtau_1.2-1_amd64/usr/share/applications/
	cp openutau.desktop installer/openUtau_1.2-1_arm64/usr/share/applications/
	cp openutau.desktop installer/openUtau_1.2-1_i386/usr/share/applications/

	cp openutau.svg installer/openUtau_1.2-1_amd64/usr/share/pixmaps/
	cp openutau.svg installer/openUtau_1.2-1_arm64/usr/share/pixmaps/
	cp openutau.svg installer/openUtau_1.2-1_i386/usr/share/pixmaps/


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