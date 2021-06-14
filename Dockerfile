FROM store/softwareag/webmethods-microservicesruntime:10.7
ARG WmJDBCAdapter
ARG WmCloudStreamsAnalytics

RUN if [[ -z "$WmCloudStreamsAnalytics" ]] ; then echo WmCloudStreamsAnalytics not selected ; else COPY /packages/wMPackages/WmCloudStreamsAnalytics /opt/softwareag/IntegrationServer/packages ; fi
RUN if [[ -z "$WmJDBCAdapter" ]] ; then echo WmJDBCAdapter not selected ; else COPY /packages/wMPackages/WmJDBCAdapter /opt/softwareag/IntegrationServer/packages ; fi

COPY /packages/customPackages /opt/softwareag/IntegrationServer/packages
