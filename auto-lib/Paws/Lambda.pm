package Paws::Lambda;
  warn "Paws::Lambda is not stable / supported / entirely developed";
  use Moose;
  sub service { 'lambda' }
  sub version { '2015-03-31' }
  sub flattened_arrays { 0 }

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
  sub AddPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::AddPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::CreateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::CreateEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::CreateFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunctionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetFunctionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Invoke {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::Invoke', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeAsync {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::InvokeAsync', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventSourceMappings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListEventSourceMappings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFunctions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListFunctions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVersionsByFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListVersionsByFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PublishVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemovePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::RemovePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFunctionCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateFunctionCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFunctionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateFunctionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAllEventSourceMappings {
    my $self = shift;

    my $result = $self->ListEventSourceMappings(@_);
    my $array = [];
    push @$array, @{ $result->EventSourceMappings };

    while ($result->NextMarker) {
      $result = $self->ListEventSourceMappings(@_, Marker => $result->NextMarker);
      push @$array, @{ $result->EventSourceMappings };
    }

    return 'Paws::Lambda::ListEventSourceMappings'->_returns->new(EventSourceMappings => $array);
  }
  sub ListAllFunctions {
    my $self = shift;

    my $result = $self->ListFunctions(@_);
    my $array = [];
    push @$array, @{ $result->Functions };

    while ($result->NextMarker) {
      $result = $self->ListFunctions(@_, Marker => $result->NextMarker);
      push @$array, @{ $result->Functions };
    }

    return 'Paws::Lambda::ListFunctions'->_returns->new(Functions => $array);
  }

  sub operations { qw/AddPermission CreateAlias CreateEventSourceMapping CreateFunction DeleteAlias DeleteEventSourceMapping DeleteFunction GetAlias GetEventSourceMapping GetFunction GetFunctionConfiguration GetPolicy Invoke InvokeAsync ListAliases ListEventSourceMappings ListFunctions ListVersionsByFunction PublishVersion RemovePermission UpdateAlias UpdateEventSourceMapping UpdateFunctionCode UpdateFunctionConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda - Perl Interface to AWS AWS Lambda

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Lambda');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Lambda

B<Overview>

This is the I<AWS Lambda API Reference>. The AWS Lambda Developer Guide
provides additional information. For the service overview, go to What
is AWS Lambda, and for information about how the service works, go to
AWS Lambda: How it Works in the I<AWS Lambda Developer Guide>.

=head1 METHODS

=head2 AddPermission(Action => Str, FunctionName => Str, Principal => Str, StatementId => Str, [Qualifier => Str, SourceAccount => Str, SourceArn => Str])

Each argument is described in detail in: L<Paws::Lambda::AddPermission>

Returns: a L<Paws::Lambda::AddPermissionResponse> instance

  Adds a permission to the resource policy associated with the specified
AWS Lambda function. You use resource policies to grant permissions to
event sources that use "push" model. In "push" model, event sources
(such as Amazon S3 and custom applications) invoke your Lambda
function. Each permission you add to the resource policy allows an
event source, permission to invoke the Lambda function.

For information about the push model, see AWS Lambda: How it Works.

If you are using versioning feature (see AWS Lambda Function Versioning
and Aliases), a Lambda function can have multiple ARNs that can be used
to invoke the function. Note that, each permission you add to resource
policy using this API is specific to an ARN, specified using the
C<Qualifier> parameter

This operation requires permission for the C<lambda:AddPermission>
action.


=head2 CreateAlias(FunctionName => Str, FunctionVersion => Str, Name => Str, [Description => Str])

Each argument is described in detail in: L<Paws::Lambda::CreateAlias>

Returns: a L<Paws::Lambda::AliasConfiguration> instance

  Creates an alias to the specified Lambda function version. For more
information, see Introduction to AWS Lambda Aliases

This requires permission for the lambda:CreateAlias action.


=head2 CreateEventSourceMapping(EventSourceArn => Str, FunctionName => Str, StartingPosition => Str, [BatchSize => Int, Enabled => Bool])

Each argument is described in detail in: L<Paws::Lambda::CreateEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

  Identifies a stream as an event source for a Lambda function. It can be
either an Amazon Kinesis stream or an Amazon DynamoDB stream. AWS
Lambda invokes the specified function when records are posted to the
stream.

This is the pull model, where AWS Lambda invokes the function. For more
information, go to AWS Lambda: How it Works in the I<AWS Lambda
Developer Guide>.

This association between an Amazon Kinesis stream and a Lambda function
is called the event source mapping. You provide the configuration
information (for example, which stream to read from and which Lambda
function to invoke) for the event source mapping in the request body.

Each event source, such as an Amazon Kinesis or a DynamoDB stream, can
be associated with multiple AWS Lambda function. A given Lambda
function can be associated with multiple AWS event sources.

This operation requires permission for the
C<lambda:CreateEventSourceMapping> action.


=head2 CreateFunction(Code => L<Paws::Lambda::FunctionCode>, FunctionName => Str, Handler => Str, Role => Str, Runtime => Str, [Description => Str, MemorySize => Int, Publish => Bool, Timeout => Int])

Each argument is described in detail in: L<Paws::Lambda::CreateFunction>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

  Creates a new Lambda function. The function metadata is created from
the request parameters, and the code for the function is provided by a
.zip file in the request body. If the function name already exists, the
operation will fail. Note that the function name is case-sensitive.

This operation requires permission for the C<lambda:CreateFunction>
action.


=head2 DeleteAlias(FunctionName => Str, Name => Str)

Each argument is described in detail in: L<Paws::Lambda::DeleteAlias>

Returns: nothing

  Deletes specified Lambda function alias. For more information, see
Introduction to AWS Lambda Aliases

This requires permission for the lambda:DeleteAlias action.


=head2 DeleteEventSourceMapping(UUID => Str)

Each argument is described in detail in: L<Paws::Lambda::DeleteEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

  Removes an event source mapping. This means AWS Lambda will no longer
invoke the function for events in the associated source.

This operation requires permission for the
C<lambda:DeleteEventSourceMapping> action.


=head2 DeleteFunction(FunctionName => Str, [Qualifier => Str])

Each argument is described in detail in: L<Paws::Lambda::DeleteFunction>

Returns: nothing

  Deletes the specified Lambda function code and configuration.

If you don't specify a function version, AWS Lambda will delete the
function, including all its versions, and any aliases pointing to the
function versions.

When you delete a function the associated resource policy is also
deleted. You will need to delete the event source mappings explicitly.

For information about function versioning, see AWS Lambda Function
Versioning and Aliases.

This operation requires permission for the C<lambda:DeleteFunction>
action.


=head2 GetAlias(FunctionName => Str, Name => Str)

Each argument is described in detail in: L<Paws::Lambda::GetAlias>

Returns: a L<Paws::Lambda::AliasConfiguration> instance

  Returns the specified alias information such as the alias ARN,
description, and function version it is pointing to. For more
information, see Introduction to AWS Lambda Aliases

This requires permission for the lambda:GetAlias action.


=head2 GetEventSourceMapping(UUID => Str)

Each argument is described in detail in: L<Paws::Lambda::GetEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

  Returns configuration information for the specified event source
mapping (see CreateEventSourceMapping).

This operation requires permission for the
C<lambda:GetEventSourceMapping> action.


=head2 GetFunction(FunctionName => Str, [Qualifier => Str])

Each argument is described in detail in: L<Paws::Lambda::GetFunction>

Returns: a L<Paws::Lambda::GetFunctionResponse> instance

  Returns the configuration information of the Lambda function and a
presigned URL link to the .zip file you uploaded with CreateFunction so
you can download the .zip file. Note that the URL is valid for up to 10
minutes. The configuration information is the same information you
provided as parameters when uploading the function.

Using the optional C<Qualifier> parameter, you can specify a specific
function version for which you want this information. If you don't
specify this parameter, the API uses unqualified function ARN which
return information about the $LATEST version of the Lambda function.
For more information, see AWS Lambda Function Versioning and Aliases.

This operation requires permission for the C<lambda:GetFunction>
action.


=head2 GetFunctionConfiguration(FunctionName => Str, [Qualifier => Str])

Each argument is described in detail in: L<Paws::Lambda::GetFunctionConfiguration>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

  Returns the configuration information of the Lambda function. This the
same information you provided as parameters when uploading the function
by using CreateFunction.

You can use the optional C<Qualifier> parameter to retrieve
configuration information for a specific Lambda function version. If
you don't provide it, the API returns information about the $LATEST
version of the function. For more information about versioning, see AWS
Lambda Function Versioning and Aliases.

This operation requires permission for the
C<lambda:GetFunctionConfiguration> operation.


=head2 GetPolicy(FunctionName => Str, [Qualifier => Str])

Each argument is described in detail in: L<Paws::Lambda::GetPolicy>

Returns: a L<Paws::Lambda::GetPolicyResponse> instance

  Returns the resource policy, containing a list of permissions that
apply to a specific to an ARN that you specify via the C<Qualifier>
paramter.

For informration about adding permissions, see AddPermission.

You need permission for the C<lambda:GetPolicy action.>


=head2 Invoke(FunctionName => Str, [ClientContext => Str, InvocationType => Str, LogType => Str, Payload => Str, Qualifier => Str])

Each argument is described in detail in: L<Paws::Lambda::Invoke>

Returns: a L<Paws::Lambda::InvocationResponse> instance

  Invokes a specific Lambda function version.

If you don't provide the C<Qualifier> parameter, it uses the
unqualified function ARN which results in invocation of the $LATEST
version of the Lambda function (when you create a Lambda function, the
$LATEST is the version). The AWS Lambda versioning and aliases feature
allows you to publish multiple versions of a Lambda function and also
create aliases for each function version. So each your Lambda function
version can be invoked using multiple ARNs. For more information, see
AWS Lambda Function Versioning and Aliases. Using the C<Qualifier>
parameter, you can specify a function version or alias name to invoke
specific function version. If you specify function version, the API
uses the qualified function ARN to invoke a specific function version.
If you specify alias name, the API uses the alias ARN to invoke the
function version to which the alias points.

This operation requires permission for the C<lambda:InvokeFunction>
action.


=head2 InvokeAsync(FunctionName => Str, InvokeArgs => Str)

Each argument is described in detail in: L<Paws::Lambda::InvokeAsync>

Returns: a L<Paws::Lambda::InvokeAsyncResponse> instance

  This API is deprecated. We recommend you use C<Invoke> API (see
Invoke).

Submits an invocation request to AWS Lambda. Upon receiving the
request, Lambda executes the specified function asynchronously. To see
the logs generated by the Lambda function execution, see the CloudWatch
logs console.

This operation requires permission for the C<lambda:InvokeFunction>
action.


=head2 ListAliases(FunctionName => Str, [FunctionVersion => Str, Marker => Str, MaxItems => Int])

Each argument is described in detail in: L<Paws::Lambda::ListAliases>

Returns: a L<Paws::Lambda::ListAliasesResponse> instance

  Returns list of aliases created for a Lambda function. For each alias,
the response includes information such as the alias ARN, description,
alias name, and the function version to which it points. For more
information, see Introduction to AWS Lambda Aliases

This requires permission for the lambda:ListAliases action.


=head2 ListEventSourceMappings([EventSourceArn => Str, FunctionName => Str, Marker => Str, MaxItems => Int])

Each argument is described in detail in: L<Paws::Lambda::ListEventSourceMappings>

Returns: a L<Paws::Lambda::ListEventSourceMappingsResponse> instance

  Returns a list of event source mappings you created using the
C<CreateEventSourceMapping> (see CreateEventSourceMapping), where you
identify a stream as an event source. This list does not include Amazon
S3 event sources.

For each mapping, the API returns configuration information. You can
optionally specify filters to retrieve specific event source mappings.

This operation requires permission for the
C<lambda:ListEventSourceMappings> action.


=head2 ListFunctions([Marker => Str, MaxItems => Int])

Each argument is described in detail in: L<Paws::Lambda::ListFunctions>

Returns: a L<Paws::Lambda::ListFunctionsResponse> instance

  Returns a list of your Lambda functions. For each function, the
response includes the function configuration information. You must use
GetFunction to retrieve the code for your function.

This operation requires permission for the C<lambda:ListFunctions>
action.


=head2 ListVersionsByFunction(FunctionName => Str, [Marker => Str, MaxItems => Int])

Each argument is described in detail in: L<Paws::Lambda::ListVersionsByFunction>

Returns: a L<Paws::Lambda::ListVersionsByFunctionResponse> instance

  List all versions of a function.


=head2 PublishVersion(FunctionName => Str, [CodeSha256 => Str, Description => Str])

Each argument is described in detail in: L<Paws::Lambda::PublishVersion>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

  Publishes a version of your function from the current snapshot of HEAD.
That is, AWS Lambda takes a snapshot of the function code and
configuration information from HEAD and publishes a new version. The
code and C<handler> of this specific Lambda function version cannot be
modified after publication, but you can modify the configuration
information.


=head2 RemovePermission(FunctionName => Str, StatementId => Str, [Qualifier => Str])

Each argument is described in detail in: L<Paws::Lambda::RemovePermission>

Returns: nothing

  You can remove individual permissions from an resource policy
associated with a Lambda function by providing a statement ID that you
provided when you addded the permission. The API removes corresponding
permission that is associated with the specific ARN identified by the
C<Qualifier> parameter.

Note that removal of a permission will cause an active event source to
lose permission to the function.

You need permission for the C<lambda:RemovePermission> action.


=head2 UpdateAlias(FunctionName => Str, Name => Str, [Description => Str, FunctionVersion => Str])

Each argument is described in detail in: L<Paws::Lambda::UpdateAlias>

Returns: a L<Paws::Lambda::AliasConfiguration> instance

  Using this API you can update function version to which the alias
points to and alias description. For more information, see Introduction
to AWS Lambda Aliases

This requires permission for the lambda:UpdateAlias action.


=head2 UpdateEventSourceMapping(UUID => Str, [BatchSize => Int, Enabled => Bool, FunctionName => Str])

Each argument is described in detail in: L<Paws::Lambda::UpdateEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

  You can update an event source mapping. This is useful if you want to
change the parameters of the existing mapping without losing your
position in the stream. You can change which function will receive the
stream records, but to change the stream itself, you must create a new
mapping.

This operation requires permission for the
C<lambda:UpdateEventSourceMapping> action.


=head2 UpdateFunctionCode(FunctionName => Str, [Publish => Bool, S3Bucket => Str, S3Key => Str, S3ObjectVersion => Str, ZipFile => Str])

Each argument is described in detail in: L<Paws::Lambda::UpdateFunctionCode>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

  Updates the code for the specified Lambda function. This operation must
only be used on an existing Lambda function and cannot be used to
update the function configuration.

This operation requires permission for the C<lambda:UpdateFunctionCode>
action.


=head2 UpdateFunctionConfiguration(FunctionName => Str, [Description => Str, Handler => Str, MemorySize => Int, Role => Str, Timeout => Int])

Each argument is described in detail in: L<Paws::Lambda::UpdateFunctionConfiguration>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

  Updates the configuration parameters for the specified Lambda function
by using the values provided in the request. You provide only the
parameters you want to change. This operation must only be used on an
existing Lambda function and cannot be used to update the function's
code.

This operation requires permission for the
C<lambda:UpdateFunctionConfiguration> action.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

