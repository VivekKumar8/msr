FROM store/softwareag/webmethods-microservicesruntime:10.7
ARG WmJDBCAdapter
ARG WmCloudStreamsAnalytics

RUN echo "Argument is $WmJDBCAdapter"
RUN echo "Argument is $WmCloudStreamsAnalytics"

RUN if [ "$WmCloudStreamsAnalytics" = true ] ; then \
echo WmCloudStreamsAnalytics is selected*****; \
COPY /packages/wMPackages/WmCloudStreamsAnalytics /opt/softwareag/IntegrationServer/packages/WmCloudStreamsAnalytics \
else \
echo WmCloudStreamsAnalytics not selected; \
fi
# RUN if [[ -z "$WmCloudStreamsAnalytics" ]] ; then echo WmCloudStreamsAnalytics not selected ; else COPY /packages/wMPackages/WmCloudStreamsAnalytics /opt/softwareag/IntegrationServer/packages ; fi
# RUN if [[ -n "$WmCloudStreamsAnalytics" ]] ; then COPY /packages/wMPackages/WmCloudStreamsAnalytics /opt/softwareag/IntegrationServer/packages; else echo WmCloudStreamsAnalytics not selected; fi
# RUN if [[ -z "$WmJDBCAdapter" ]] ; then echo WmJDBCAdapter not selected ; else COPY /packages/wMPackages/WmJDBCAdapter /opt/softwareag/IntegrationServer/packages ; fi
#COPY /packages/wMPackages/WmCloudStreamsAnalytics /opt/softwareag/IntegrationServer/packages
COPY /packages/customPackages /opt/softwareag/IntegrationServer/packages
