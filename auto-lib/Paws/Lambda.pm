package Paws::Lambda;
  use Moose;
  sub service { 'lambda' }
  sub version { '2015-03-31' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
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
  sub GetAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetAccountSettings', @_);
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
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListTags', @_);
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
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UntagResource', @_);
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

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventSourceMappings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListEventSourceMappings(@_, Marker => $next_result->NextMarker);
        push @{ $result->EventSourceMappings }, @{ $next_result->EventSourceMappings };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'EventSourceMappings') foreach (@{ $result->EventSourceMappings });
        $result = $self->ListEventSourceMappings(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'EventSourceMappings') foreach (@{ $result->EventSourceMappings });
    }

    return undef
  }
  sub ListAllFunctions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFunctions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListFunctions(@_, Marker => $next_result->NextMarker);
        push @{ $result->Functions }, @{ $next_result->Functions };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Functions') foreach (@{ $result->Functions });
        $result = $self->ListFunctions(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Functions') foreach (@{ $result->Functions });
    }

    return undef
  }


  sub operations { qw/AddPermission CreateAlias CreateEventSourceMapping CreateFunction DeleteAlias DeleteEventSourceMapping DeleteFunction GetAccountSettings GetAlias GetEventSourceMapping GetFunction GetFunctionConfiguration GetPolicy Invoke InvokeAsync ListAliases ListEventSourceMappings ListFunctions ListTags ListVersionsByFunction PublishVersion RemovePermission TagResource UntagResource UpdateAlias UpdateEventSourceMapping UpdateFunctionCode UpdateFunctionConfiguration / }

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
provides additional information. For the service overview, see What is
AWS Lambda, and for information about how the service works, see AWS
Lambda: How it Works in the I<AWS Lambda Developer Guide>.

=head1 METHODS

=head2 AddPermission(Action => Str, FunctionName => Str, Principal => Str, StatementId => Str, [EventSourceToken => Str, Qualifier => Str, SourceAccount => Str, SourceArn => Str])

Each argument is described in detail in: L<Paws::Lambda::AddPermission>

Returns: a L<Paws::Lambda::AddPermissionResponse> instance

  Adds a permission to the resource policy associated with the specified
AWS Lambda function. You use resource policies to grant permissions to
event sources that use I<push> model. In a I<push> model, event sources
(such as Amazon S3 and custom applications) invoke your Lambda
function. Each permission you add to the resource policy allows an
event source, permission to invoke the Lambda function.

For information about the push model, see AWS Lambda: How it Works.

If you are using versioning, the permissions you add are specific to
the Lambda function version or alias you specify in the
C<AddPermission> request via the C<Qualifier> parameter. For more
information about versioning, see AWS Lambda Function Versioning and
Aliases.

This operation requires permission for the C<lambda:AddPermission>
action.


=head2 CreateAlias(FunctionName => Str, FunctionVersion => Str, Name => Str, [Description => Str])

Each argument is described in detail in: L<Paws::Lambda::CreateAlias>

Returns: a L<Paws::Lambda::AliasConfiguration> instance

  Creates an alias that points to the specified Lambda function version.
For more information, see Introduction to AWS Lambda Aliases.

Alias names are unique for a given function. This requires permission
for the lambda:CreateAlias action.


=head2 CreateEventSourceMapping(EventSourceArn => Str, FunctionName => Str, StartingPosition => Str, [BatchSize => Int, Enabled => Bool, StartingPositionTimestamp => Str])

Each argument is described in detail in: L<Paws::Lambda::CreateEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

  Identifies a stream as an event source for a Lambda function. It can be
either an Amazon Kinesis stream or an Amazon DynamoDB stream. AWS
Lambda invokes the specified function when records are posted to the
stream.

This association between a stream source and a Lambda function is
called the event source mapping.

This event source mapping is relevant only in the AWS Lambda pull
model, where AWS Lambda invokes the function. For more information, see
AWS Lambda: How it Works in the I<AWS Lambda Developer Guide>.

You provide mapping information (for example, which stream to read from
and which Lambda function to invoke) in the request body.

Each event source, such as an Amazon Kinesis or a DynamoDB stream, can
be associated with multiple AWS Lambda function. A given Lambda
function can be associated with multiple AWS event sources.

If you are using versioning, you can specify a specific function
version or an alias via the function name parameter. For more
information about versioning, see AWS Lambda Function Versioning and
Aliases.

This operation requires permission for the
C<lambda:CreateEventSourceMapping> action.


=head2 CreateFunction(Code => L<Paws::Lambda::FunctionCode>, FunctionName => Str, Handler => Str, Role => Str, Runtime => Str, [DeadLetterConfig => L<Paws::Lambda::DeadLetterConfig>, Description => Str, Environment => L<Paws::Lambda::Environment>, KMSKeyArn => Str, MemorySize => Int, Publish => Bool, Tags => L<Paws::Lambda::Tags>, Timeout => Int, TracingConfig => L<Paws::Lambda::TracingConfig>, VpcConfig => L<Paws::Lambda::VpcConfig>])

Each argument is described in detail in: L<Paws::Lambda::CreateFunction>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

  Creates a new Lambda function. The function metadata is created from
the request parameters, and the code for the function is provided by a
.zip file in the request body. If the function name already exists, the
operation will fail. Note that the function name is case-sensitive.

If you are using versioning, you can also publish a version of the
Lambda function you are creating using the C<Publish> parameter. For
more information about versioning, see AWS Lambda Function Versioning
and Aliases.

This operation requires permission for the C<lambda:CreateFunction>
action.


=head2 DeleteAlias(FunctionName => Str, Name => Str)

Each argument is described in detail in: L<Paws::Lambda::DeleteAlias>

Returns: nothing

  Deletes the specified Lambda function alias. For more information, see
Introduction to AWS Lambda Aliases.

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

If you are using the versioning feature and you don't specify a
function version in your C<DeleteFunction> request, AWS Lambda will
delete the function, including all its versions, and any aliases
pointing to the function versions. To delete a specific function
version, you must provide the function version via the C<Qualifier>
parameter. For information about function versioning, see AWS Lambda
Function Versioning and Aliases.

When you delete a function the associated resource policy is also
deleted. You will need to delete the event source mappings explicitly.

This operation requires permission for the C<lambda:DeleteFunction>
action.


=head2 GetAccountSettings()

Each argument is described in detail in: L<Paws::Lambda::GetAccountSettings>

Returns: a L<Paws::Lambda::GetAccountSettingsResponse> instance

  Returns a customer's account settings.

You can use this operation to retrieve Lambda limits information, such
as code size and concurrency limits. For more information about limits,
see AWS Lambda Limits. You can also retrieve resource usage statistics,
such as code storage usage and function count.


=head2 GetAlias(FunctionName => Str, Name => Str)

Each argument is described in detail in: L<Paws::Lambda::GetAlias>

Returns: a L<Paws::Lambda::AliasConfiguration> instance

  Returns the specified alias information such as the alias ARN,
description, and function version it is pointing to. For more
information, see Introduction to AWS Lambda Aliases.

This requires permission for the C<lambda:GetAlias> action.


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
return information about the C<$LATEST> version of the Lambda function.
For more information, see AWS Lambda Function Versioning and Aliases.

This operation requires permission for the C<lambda:GetFunction>
action.


=head2 GetFunctionConfiguration(FunctionName => Str, [Qualifier => Str])

Each argument is described in detail in: L<Paws::Lambda::GetFunctionConfiguration>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

  Returns the configuration information of the Lambda function. This the
same information you provided as parameters when uploading the function
by using CreateFunction.

If you are using the versioning feature, you can retrieve this
information for a specific function version by using the optional
C<Qualifier> parameter and specifying the function version or alias
that points to it. If you don't provide it, the API returns information
about the $LATEST version of the function. For more information about
versioning, see AWS Lambda Function Versioning and Aliases.

This operation requires permission for the
C<lambda:GetFunctionConfiguration> operation.


=head2 GetPolicy(FunctionName => Str, [Qualifier => Str])

Each argument is described in detail in: L<Paws::Lambda::GetPolicy>

Returns: a L<Paws::Lambda::GetPolicyResponse> instance

  Returns the resource policy associated with the specified Lambda
function.

If you are using the versioning feature, you can get the resource
policy associated with the specific Lambda function version or alias by
specifying the version or alias name using the C<Qualifier> parameter.
For more information about versioning, see AWS Lambda Function
Versioning and Aliases.

You need permission for the C<lambda:GetPolicy action.>


=head2 Invoke(FunctionName => Str, [ClientContext => Str, InvocationType => Str, LogType => Str, Payload => Str, Qualifier => Str])

Each argument is described in detail in: L<Paws::Lambda::Invoke>

Returns: a L<Paws::Lambda::InvocationResponse> instance

  Invokes a specific Lambda function. For an example, see Create the
Lambda Function and Test It Manually.

If you are using the versioning feature, you can invoke the specific
function version by providing function version or alias name that is
pointing to the function version using the C<Qualifier> parameter in
the request. If you don't provide the C<Qualifier> parameter, the
C<$LATEST> version of the Lambda function is invoked. Invocations occur
at least once in response to an event and functions must be idempotent
to handle this. For information about the versioning feature, see AWS
Lambda Function Versioning and Aliases.

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
Logs console.

This operation requires permission for the C<lambda:InvokeFunction>
action.


=head2 ListAliases(FunctionName => Str, [FunctionVersion => Str, Marker => Str, MaxItems => Int])

Each argument is described in detail in: L<Paws::Lambda::ListAliases>

Returns: a L<Paws::Lambda::ListAliasesResponse> instance

  Returns list of aliases created for a Lambda function. For each alias,
the response includes information such as the alias ARN, description,
alias name, and the function version to which it points. For more
information, see Introduction to AWS Lambda Aliases.

This requires permission for the lambda:ListAliases action.


=head2 ListEventSourceMappings([EventSourceArn => Str, FunctionName => Str, Marker => Str, MaxItems => Int])

Each argument is described in detail in: L<Paws::Lambda::ListEventSourceMappings>

Returns: a L<Paws::Lambda::ListEventSourceMappingsResponse> instance

  Returns a list of event source mappings you created using the
C<CreateEventSourceMapping> (see CreateEventSourceMapping).

For each mapping, the API returns configuration information. You can
optionally specify filters to retrieve specific event source mappings.

If you are using the versioning feature, you can get list of event
source mappings for a specific Lambda function version or an alias as
described in the C<FunctionName> parameter. For information about the
versioning feature, see AWS Lambda Function Versioning and Aliases.

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

If you are using versioning feature, the response returns list of
$LATEST versions of your functions. For information about the
versioning feature, see AWS Lambda Function Versioning and Aliases.


=head2 ListTags(Resource => Str)

Each argument is described in detail in: L<Paws::Lambda::ListTags>

Returns: a L<Paws::Lambda::ListTagsResponse> instance

  Returns a list of tags assigned to a function when supplied the
function ARN (Amazon Resource Name).


=head2 ListVersionsByFunction(FunctionName => Str, [Marker => Str, MaxItems => Int])

Each argument is described in detail in: L<Paws::Lambda::ListVersionsByFunction>

Returns: a L<Paws::Lambda::ListVersionsByFunctionResponse> instance

  List all versions of a function. For information about the versioning
feature, see AWS Lambda Function Versioning and Aliases.


=head2 PublishVersion(FunctionName => Str, [CodeSha256 => Str, Description => Str])

Each argument is described in detail in: L<Paws::Lambda::PublishVersion>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

  Publishes a version of your function from the current snapshot of
$LATEST. That is, AWS Lambda takes a snapshot of the function code and
configuration information from $LATEST and publishes a new version. The
code and configuration cannot be modified after publication. For
information about the versioning feature, see AWS Lambda Function
Versioning and Aliases.


=head2 RemovePermission(FunctionName => Str, StatementId => Str, [Qualifier => Str])

Each argument is described in detail in: L<Paws::Lambda::RemovePermission>

Returns: nothing

  You can remove individual permissions from an resource policy
associated with a Lambda function by providing a statement ID that you
provided when you added the permission.

If you are using versioning, the permissions you remove are specific to
the Lambda function version or alias you specify in the
C<AddPermission> request via the C<Qualifier> parameter. For more
information about versioning, see AWS Lambda Function Versioning and
Aliases.

Note that removal of a permission will cause an active event source to
lose permission to the function.

You need permission for the C<lambda:RemovePermission> action.


=head2 TagResource(Resource => Str, Tags => L<Paws::Lambda::Tags>)

Each argument is described in detail in: L<Paws::Lambda::TagResource>

Returns: nothing

  Creates a list of tags (key-value pairs) on the Lambda function.
Requires the Lambda function ARN (Amazon Resource Name). If a key is
specified without a value, Lambda creates a tag with the specified key
and a value of null.


=head2 UntagResource(Resource => Str, TagKeys => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Lambda::UntagResource>

Returns: nothing

  Removes tags from a Lambda function. Requires the function ARN (Amazon
Resource Name).


=head2 UpdateAlias(FunctionName => Str, Name => Str, [Description => Str, FunctionVersion => Str])

Each argument is described in detail in: L<Paws::Lambda::UpdateAlias>

Returns: a L<Paws::Lambda::AliasConfiguration> instance

  Using this API you can update the function version to which the alias
points and the alias description. For more information, see
Introduction to AWS Lambda Aliases.

This requires permission for the lambda:UpdateAlias action.


=head2 UpdateEventSourceMapping(UUID => Str, [BatchSize => Int, Enabled => Bool, FunctionName => Str])

Each argument is described in detail in: L<Paws::Lambda::UpdateEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

  You can update an event source mapping. This is useful if you want to
change the parameters of the existing mapping without losing your
position in the stream. You can change which function will receive the
stream records, but to change the stream itself, you must create a new
mapping.

If you are using the versioning feature, you can update the event
source mapping to map to a specific Lambda function version or alias as
described in the C<FunctionName> parameter. For information about the
versioning feature, see AWS Lambda Function Versioning and Aliases.

If you disable the event source mapping, AWS Lambda stops polling. If
you enable again, it will resume polling from the time it had stopped
polling, so you don't lose processing of any records. However, if you
delete event source mapping and create it again, it will reset.

This operation requires permission for the
C<lambda:UpdateEventSourceMapping> action.


=head2 UpdateFunctionCode(FunctionName => Str, [DryRun => Bool, Publish => Bool, S3Bucket => Str, S3Key => Str, S3ObjectVersion => Str, ZipFile => Str])

Each argument is described in detail in: L<Paws::Lambda::UpdateFunctionCode>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

  Updates the code for the specified Lambda function. This operation must
only be used on an existing Lambda function and cannot be used to
update the function configuration.

If you are using the versioning feature, note this API will always
update the $LATEST version of your Lambda function. For information
about the versioning feature, see AWS Lambda Function Versioning and
Aliases.

This operation requires permission for the C<lambda:UpdateFunctionCode>
action.


=head2 UpdateFunctionConfiguration(FunctionName => Str, [DeadLetterConfig => L<Paws::Lambda::DeadLetterConfig>, Description => Str, Environment => L<Paws::Lambda::Environment>, Handler => Str, KMSKeyArn => Str, MemorySize => Int, Role => Str, Runtime => Str, Timeout => Int, TracingConfig => L<Paws::Lambda::TracingConfig>, VpcConfig => L<Paws::Lambda::VpcConfig>])

Each argument is described in detail in: L<Paws::Lambda::UpdateFunctionConfiguration>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

  Updates the configuration parameters for the specified Lambda function
by using the values provided in the request. You provide only the
parameters you want to change. This operation must only be used on an
existing Lambda function and cannot be used to update the function's
code.

If you are using the versioning feature, note this API will always
update the $LATEST version of your Lambda function. For information
about the versioning feature, see AWS Lambda Function Versioning and
Aliases.

This operation requires permission for the
C<lambda:UpdateFunctionConfiguration> action.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllEventSourceMappings(sub { },[EventSourceArn => Str, FunctionName => Str, Marker => Str, MaxItems => Int])

=head2 ListAllEventSourceMappings([EventSourceArn => Str, FunctionName => Str, Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EventSourceMappings, passing the object as the first parameter, and the string 'EventSourceMappings' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListEventSourceMappingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFunctions(sub { },[Marker => Str, MaxItems => Int])

=head2 ListAllFunctions([Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Functions, passing the object as the first parameter, and the string 'Functions' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListFunctionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

