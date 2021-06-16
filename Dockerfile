FROM store/softwareag/webmethods-microservicesruntime:10.7
ARG WmJDBCAdapter
ARG WmCloudStreamsAnalytics
ENV WmCloudStreamsAnalytics1 /packages/wMPackages/WmCloudStreamsAnalytics
#ENV WmCloudStreamsAnalytics1=${WmCloudStreamsAnalytics}

RUN echo "Argument is $WmJDBCAdapter"
RUN echo "Argument is $WmCloudStreamsAnalytics"
RUN echo "Argument is $WmCloudStreamsAnalytics1"

#RUN if [ "$WmCloudStreamsAnalytics" = true ] ; then \
#echo WmCloudStreamsAnalytics is selected*****; \
#WmCloudStreamsAnalytics=WmCloudStreamsAnalytics \
#COPY /packages/wMPackages/WmCloudStreamsAnalytics /opt/softwareag/IntegrationServer/packages/WmCloudStreamsAnalytics \
#else \
#echo WmCloudStreamsAnalytics not selected; \
#fi
#RUN if [[ -z "$WmCloudStreamsAnalytics" ]] ; then WmCloudStreamsAnalytics=WmCloudStreamsAnalytics ; else WmCloudStreamsAnalytics=WmCloudStreamsAnalytics ; fi
#RUN echo $WmCloudStreamsAnalytics
# RUN if [[ -n "$WmCloudStreamsAnalytics" ]] ; then COPY /packages/wMPackages/WmCloudStreamsAnalytics /opt/softwareag/IntegrationServer/packages; else echo WmCloudStreamsAnalytics not selected; fi
# RUN if [[ -z "$WmJDBCAdapter" ]] ; then echo WmJDBCAdapter not selected ; else COPY /packages/wMPackages/WmJDBCAdapter /opt/softwareag/IntegrationServer/packages ; fi
#COPY /packages/wMPackages/WmCloudStreamsAnalytics /opt/softwareag/IntegrationServer/packages
#ARG WmCloudStreamsAnalytics1
#ARG WmCloudStreamsAnalytics10=/packages/wMPackages/WmCloudStreamsAnalytics
COPY ${WmCloudStreamsAnalytics1} /opt/softwareag/IntegrationServer/packages/WmCloudStreamsAnalytics
COPY /packages/customPackages /opt/softwareag/IntegrationServer/packages
