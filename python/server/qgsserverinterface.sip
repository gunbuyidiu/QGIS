/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/server/qgsserverinterface.h                                      *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/







class QgsServerInterface
{
%Docstring
QgsServerInterface
Class defining interfaces exposed by QGIS Server and
made available to plugins.

This class provides methods to access the request handler and
the capabilities cache. A method to read the environment
variables set in the main FCGI loop is also available.
Plugins can add listeners (instances of QgsServerFilter) with
a certain priority through the registerFilter( QgsServerFilter* , int) method.
%End

%TypeHeaderCode
#include "qgsserverinterface.h"
%End
  public:


    virtual ~QgsServerInterface();



    virtual QgsCapabilitiesCache *capabilitiesCache() = 0 /KeepReference/;
%Docstring
Get pointer to the capabiblities cache

:return: QgsCapabilitiesCache
%End

    virtual QgsRequestHandler *requestHandler() = 0 /KeepReference/;
%Docstring
Get pointer to the request handler

:return: QgsRequestHandler
%End

    virtual void registerFilter( QgsServerFilter *filter /Transfer/, int priority = 0 ) = 0;
%Docstring
Register a QgsServerFilter

:param filter: the QgsServerFilter to add
:param priority: an optional priority for the filter order
%End

    virtual void setFilters( QgsServerFiltersMap *filters /Transfer/ ) = 0;
%Docstring
Set the filters map

:param filters: the QgsServerFiltersMap
%End

    virtual QgsServerFiltersMap filters() = 0;
%Docstring
Return the list of current QgsServerFilter

:return: QgsServerFiltersMap list of QgsServerFilter
%End

    virtual void registerAccessControl( QgsAccessControlFilter *accessControl /Transfer/, int priority = 0 ) = 0;
%Docstring
Register an access control filter

:param accessControl: the access control to register
:param priority: the priority used to order them
%End

    virtual QgsAccessControl *accessControls() const = 0;
%Docstring
Gets the registered access control filters
%End

    virtual QString getEnv( const QString &name ) const = 0;
%Docstring
Return an enrironment variable, used to pass  environment variables to Python
%End

    virtual QString configFilePath() = 0;
%Docstring
Return the configuration file path

:return: QString containing the configuration file path
%End

    virtual void setConfigFilePath( const QString &configFilePath ) = 0;
%Docstring
Set the configuration file path

:param configFilePath: QString with the configuration file path
%End

    virtual void removeConfigCacheEntry( const QString &path ) = 0;
%Docstring
Remove entry from config cache

:param path: the path of the file to remove
%End

    virtual void removeProjectLayers( const QString &path ) = 0;
%Docstring
Remove entries from layer cache

:param path: the path of the project which own the layers to be removed
%End

    virtual QgsServiceRegistry *serviceRegistry() = 0 /KeepReference/;
%Docstring
Return the service registry

:return: QgsServiceResgistry
%End


  private:
    QgsServerInterface();
};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/server/qgsserverinterface.h                                      *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
