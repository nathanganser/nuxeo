echo Building addons-core...
cd addons-core
mvn clean install -DskipTests

echo Building addons POM only...
cd ../addons
mvn clean install -N

echo Building nuxeo-dmk-adaptor...
cd nuxeo-dmk-adaptor
mvn clean install -DskipTests

echo Building nuxeo-platform-lang-ext
cd ../nuxeo-platform-lang-ext
mvn clean install -DskipTests

echo Building nuxeo-binary-metadata
cd ../nuxeo-binary-metadata
mvn clean install -DskipTests

echo Building nuxeo-platform-suggestbox
cd ../nuxeo-platform-suggestbox
mvn clean install -DskipTests

echo Building nuxeo-platform-document-routing...
cd ../nuxeo-platform-document-routing
mvn clean install -DskipTests

echo Building nuxeo-chemistry...
cd ../nuxeo-chemistry
mvn clean install -DskipTests

echo Building nuxeo-filesystem-connectors
cd ../nuxeo-filesystem-connectors
mvn clean install -DskipTests

echo Building nuxeo-platform-pdf-utils...
cd ../nuxeo-platform-pdf-utils
mvn clean install -DskipTests

echo Building nuxeo-apidoc-server...
cd ../nuxeo-apidoc-server
mvn clean install -DskipTests

echo Building nuxeo-connect-tools...
cd ../nuxeo-connect-tools
mvn clean install -DskipTests

echo Building nuxeo-logs-viewer...
cd ../../../nuxeo-logs-viewer
git checkout release-10.10-HF62
mvn clean install -DskipTests

echo Building nuxeo-shell...
cd ../nuxeo-shell
git checkout release-10.10-HF62
mvn clean install -DskipTests

echo Building nuxeo-startup-wizard...
cd ../nuxeo/nuxeo-distribution/nuxeo-startup-wizard
mvn clean install -DskipTests

echo Building nuxeo-startup-wizard POM only...
mvn clean install -N

echo Building nuxeo-distribution parent POM only...
cd ../
mvn clean install -N

echo Building nuxeo-nxr-server...
cd nuxeo-nxr-server
mvn clean install -DskipTests

echo Building nuxeo-nxr-server POM only...
mvn clean install -N

echo Building nuxeo-nxr-jsf-ui...
cd ../nuxeo-nxr-jsf-ui
mvn clean install -DskipTests

echo Building nuxeo-launcher...
cd ../nuxeo-launcher
mvn clean install -DskipTests

echo Building nuxeo-server-tomcat...
cd ../nuxeo-server-tomcat
mvn clean install -DskipTests

echo Building nuxeo-platform-audio..
cd ../../addons/nuxeo-platform-audio
mvn clean install -DskipTests

echo Building nuxeo-platform-video-api..
cd ../nuxeo-platform-video/nuxeo-platform-video-api
mvn clean install -DskipTests

echo Building nuxeo-platform-video..
cd ..
mvn clean install -DskipTests

echo Building nuxeo-dam...
cd ../nuxeo-dam/nuxeo-dam
mvn clean install -DskipTests

echo building nuxeo-common...
cd ../../../nuxeo-common
mvn clean install -DskipTests

echo Building nuxeo-core-api...
cd ../nuxeo-core/nuxeo-core-api
mvn clean install -DskipTests

echo Building nuxeo-platform-filemanager-core
cd ../../nuxeo-services/nuxeo-platform-filemanager-core
mvn clean install -DskipTests

echo Building nuxeo-platform-audio-jsf...
cd ../../addons/nuxeo-platform-audio/nuxeo-platform-audio-jsf
mvn clean install -DskipTests
