/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/processing/models/qgsprocessingmodelchildparametersource.h  *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/





class QgsProcessingModelChildParameterSource
{
%Docstring
Source for the value of a parameter for a child algorithm within a model.

.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgsprocessingmodelchildparametersource.h"
%End
  public:

    enum Source
    {
      ModelParameter,
      ChildOutput,
      StaticValue,
      Expression,
    };

    QgsProcessingModelChildParameterSource();
%Docstring
Constructor for QgsProcessingModelChildParameterSource. It is recommended that the static methods
fromStaticValue(), fromModelParameter(), fromChildOutput() and fromExpression() are used instead.
%End

    bool operator==( const QgsProcessingModelChildParameterSource &other ) const;
    bool operator!=( const QgsProcessingModelChildParameterSource &other ) const;

    static QgsProcessingModelChildParameterSource fromStaticValue( const QVariant &value );
%Docstring
Returns a new QgsProcessingModelChildParameterSource which takes its value from a static ``value``.

.. seealso:: :py:func:`fromModelParameter()`

.. seealso:: :py:func:`fromChildOutput()`

.. seealso:: :py:func:`fromExpression()`
%End

    static QgsProcessingModelChildParameterSource fromModelParameter( const QString &parameterName );
%Docstring
Returns a new QgsProcessingModelChildParameterSource which takes its value from a parent model parameter.

.. seealso:: :py:func:`fromStaticValue()`

.. seealso:: :py:func:`fromChildOutput()`

.. seealso:: :py:func:`fromExpression()`
%End

    static QgsProcessingModelChildParameterSource fromChildOutput( const QString &childId, const QString &outputName );
%Docstring
Returns a new QgsProcessingModelChildParameterSource which takes its value from an output generated by a child algorithm.

.. seealso:: :py:func:`fromStaticValue()`

.. seealso:: :py:func:`fromModelParameter()`

.. seealso:: :py:func:`fromExpression()`
%End

    static QgsProcessingModelChildParameterSource fromExpression( const QString &expression );
%Docstring
Returns a new QgsProcessingModelChildParameterSource which takes its value from an expression. The expression
is evaluated just before the child algorithm executes, and can use functions available
in its expression context to include results calculated from the child algorithms already
executed by the model.

.. seealso:: :py:func:`fromStaticValue()`

.. seealso:: :py:func:`fromChildOutput()`

.. seealso:: :py:func:`fromModelParameter()`
%End

    Source source() const;
%Docstring
Returns the parameter value's source.
%End

    QVariant staticValue() const;
%Docstring
Returns the source's static value. This is only used when the source() is StaticValue.

.. seealso:: :py:func:`setStaticValue()`
%End

    void setStaticValue( const QVariant &value );
%Docstring
Sets the source's static value. Calling this will also change the source() to StaticValue.

.. seealso:: :py:func:`staticValue()`
%End

    QString parameterName() const;
%Docstring
Returns the source's model parameter name. This is only used when the source() is ModelParameter.

.. seealso:: :py:func:`setParameterName()`
%End

    void setParameterName( const QString &name );
%Docstring
Sets the source's model parameter ``name``. Calling this will also change the source() to ModelParameter.

.. seealso:: :py:func:`parameterName()`
%End

    QString outputChildId() const;
%Docstring
Returns the source's child algorithm ID from which the output value will be taken. This is only used when the source() is ChildOutput.

.. seealso:: :py:func:`setOutputChildId()`

.. seealso:: :py:func:`outputName()`
%End

    void setOutputChildId( const QString &id );
%Docstring
Sets the source's child algorithm ``id`` from which the output value will be taken. Calling this will also change the source() to ChildOutput.

.. seealso:: :py:func:`parameterName()`

.. seealso:: :py:func:`setOutputName()`
%End

    QString outputName() const;
%Docstring
Returns the source's child algorithm output name from which the output value will be taken. This is only used when the source() is ChildOutput.

.. seealso:: :py:func:`setOutputName()`

.. seealso:: :py:func:`outputChildId()`
%End

    void setOutputName( const QString &name );
%Docstring
Sets the source's child algorithm output ``name`` from which the output value will be taken. Calling this will also change the source() to ChildOutput.

.. seealso:: :py:func:`outputName()`

.. seealso:: :py:func:`setOutputChildId()`
%End

    QString expression() const;
%Docstring
Returns the source's expression. This is only used when the source() is Expression.

.. seealso:: :py:func:`setExpression()`
%End

    void setExpression( const QString &expression );
%Docstring
Sets the source's expression. Calling this will also change the source() to Expression.
The expression is evaluated just before the child algorithm executes, and can use functions available
in its expression context to include results calculated from the child algorithms already
executed by the model.

.. seealso:: :py:func:`expression()`
%End

    QVariant toVariant() const;
%Docstring
Saves this source to a QVariant.

.. seealso:: :py:func:`loadVariant()`
%End

    bool loadVariant( const QVariantMap &map );
%Docstring
Loads this source from a QVariantMap.

.. seealso:: :py:func:`toVariant()`
%End

    QString asPythonCode() const;
%Docstring
Attempts to convert the source to executable Python code.
%End

};



/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/processing/models/qgsprocessingmodelchildparametersource.h  *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
