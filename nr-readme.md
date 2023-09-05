# Spring PetClinic Sample Application with NR or Otel [![Build Status](https://github.com/spring-projects/spring-petclinic/actions/workflows/maven-build.yml/badge.svg)](https://github.com/spring-projects/spring-petclinic/actions/workflows/maven-build.yml)

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/spring-projects/spring-petclinic) [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=7517918)



## Petclinic README
Read more about Petclinic in the original [README](./readme.md)


## Build project and set up NR and otel agent locally
```
./gradlew assemble
./gradlew setupNewRelic
./gradlew downloadOtel
```

## Setup NR licenses
Update [licenses.sh](./licenses.sh) with NR ingest license key

## Run petclinic with NR agent
```
./run-petclinic-nr.sh
```
## Run petclinic with Otel agent
```
./run-petclinic-otel.sh
```

##Enable NR Browser agent for petclinic
1. Create a new browser app by searching for APM app name for petclinic and use the Copy/Paste method
For more details refer to NR documentation on creating new Browser app.
2. Paste the NR Browser agent JavaScript snippet in the following file
   [layout.html](./src/main/resources/templates/fragments/layout.html)
   Right before the <title> tag (around line 12)
3. clean, rebuild and restart the petclinic project
