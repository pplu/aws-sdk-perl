
use Paws::API;


package Paws::Lambda {
  warn "Paws::Lambda is not stable / supported / entirely developed";
  use Moose;
  sub service { 'lambda' }
  sub version { '2015-03-31' }
  sub flattened_arrays { 0 }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
  sub AddPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::AddPermission', @_);
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
  sub RemovePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::RemovePermission', @_);
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
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda - Perl Interface to AWS AWS Lambda

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



AWS LambdaS

B<Overview>

This is the I<AWS Lambda API Reference>. The AWS Lambda Developer Guide
provides additional information. For the service overview, go to What
is AWS Lambda, and for information about how the service works, go to
AWS LambdaL How it Works in the I<AWS Lambda Developer Guide>.










=head1 METHODS

=head2 AddPermission()

  Arguments described in: L<Paws::Lambda::AddPermission>

  Returns: L<Paws::Lambda::AddPermissionResponse>

  

Adds a permission to the access policy associated with the specified
AWS Lambda function. In a "push event" model, the access policy
attached to the Lambda function grants Amazon S3 or a user application
permission for the Lambda C<lambda:Invoke> action. For information
about the push model, see AWS Lambda: How it Works. Each Lambda
function has one access policy associated with it. You can use the
C<AddPermission> API to add a permission to the policy. You have one
access policy but it can have multiple permission statements.

This operation requires permission for the C<lambda:AddPermission>
action.











=head2 CreateEventSourceMapping()

  Arguments described in: L<Paws::Lambda::CreateEventSourceMapping>

  Returns: L<Paws::Lambda::EventSourceMappingConfiguration>

  

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











=head2 CreateFunction()

  Arguments described in: L<Paws::Lambda::CreateFunction>

  Returns: L<Paws::Lambda::FunctionConfiguration>

  

Creates a new Lambda function. The function metadata is created from
the request parameters, and the code for the function is provided by a
.zip file in the request body. If the function name already exists, the
operation will fail. Note that the function name is case-sensitive.

This operation requires permission for the C<lambda:CreateFunction>
action.











=head2 DeleteEventSourceMapping()

  Arguments described in: L<Paws::Lambda::DeleteEventSourceMapping>

  Returns: L<Paws::Lambda::EventSourceMappingConfiguration>

  

Removes an event source mapping. This means AWS Lambda will no longer
invoke the function for events in the associated source.

This operation requires permission for the
C<lambda:DeleteEventSourceMapping> action.











=head2 DeleteFunction()

  Arguments described in: L<Paws::Lambda::DeleteFunction>

  Returns: nothing

  

Deletes the specified Lambda function code and configuration.

When you delete a function the associated access policy is also
deleted. You will need to delete the event source mappings explicitly.

This operation requires permission for the C<lambda:DeleteFunction>
action.











=head2 GetEventSourceMapping()

  Arguments described in: L<Paws::Lambda::GetEventSourceMapping>

  Returns: L<Paws::Lambda::EventSourceMappingConfiguration>

  

Returns configuration information for the specified event source
mapping (see CreateEventSourceMapping).

This operation requires permission for the
C<lambda:GetEventSourceMapping> action.











=head2 GetFunction()

  Arguments described in: L<Paws::Lambda::GetFunction>

  Returns: L<Paws::Lambda::GetFunctionResponse>

  

Returns the configuration information of the Lambda function and a
presigned URL link to the .zip file you uploaded with CreateFunction so
you can download the .zip file. Note that the URL is valid for up to 10
minutes. The configuration information is the same information you
provided as parameters when uploading the function.

This operation requires permission for the C<lambda:GetFunction>
action.











=head2 GetFunctionConfiguration()

  Arguments described in: L<Paws::Lambda::GetFunctionConfiguration>

  Returns: L<Paws::Lambda::FunctionConfiguration>

  

Returns the configuration information of the Lambda function. This the
same information you provided as parameters when uploading the function
by using CreateFunction.

This operation requires permission for the
C<lambda:GetFunctionConfiguration> operation.











=head2 GetPolicy()

  Arguments described in: L<Paws::Lambda::GetPolicy>

  Returns: L<Paws::Lambda::GetPolicyResponse>

  

Returns the access policy, containing a list of permissions granted via
the C<AddPermission> API, associated with the specified bucket.

You need permission for the C<lambda:GetPolicy action.>











=head2 Invoke()

  Arguments described in: L<Paws::Lambda::Invoke>

  Returns: L<Paws::Lambda::InvocationResponse>

  

Invokes a specified Lambda function.

This operation requires permission for the C<lambda:Invoke> action.











=head2 InvokeAsync()

  Arguments described in: L<Paws::Lambda::InvokeAsync>

  Returns: L<Paws::Lambda::InvokeAsyncResponse>

  


=head2 ListEventSourceMappings()

  Arguments described in: L<Paws::Lambda::ListEventSourceMappings>

  Returns: L<Paws::Lambda::ListEventSourceMappingsResponse>

  

Returns a list of event source mappings you created using the
C<CreateEventSourceMapping> (see CreateEventSourceMapping), where you
identify a stream as an event source. This list does not include Amazon
S3 event sources.

For each mapping, the API returns configuration information. You can
optionally specify filters to retrieve specific event source mappings.

This operation requires permission for the
C<lambda:ListEventSourceMappings> action.











=head2 ListFunctions()

  Arguments described in: L<Paws::Lambda::ListFunctions>

  Returns: L<Paws::Lambda::ListFunctionsResponse>

  

Returns a list of your Lambda functions. For each function, the
response includes the function configuration information. You must use
GetFunction to retrieve the code for your function.

This operation requires permission for the C<lambda:ListFunctions>
action.











=head2 RemovePermission()

  Arguments described in: L<Paws::Lambda::RemovePermission>

  Returns: nothing

  

You can remove individual permissions from an access policy associated
with a Lambda function by providing a Statement ID.

Note that removal of a permission will cause an active event source to
lose permission to the function.

You need permission for the C<lambda:RemovePermission> action.











=head2 UpdateEventSourceMapping()

  Arguments described in: L<Paws::Lambda::UpdateEventSourceMapping>

  Returns: L<Paws::Lambda::EventSourceMappingConfiguration>

  

You can update an event source mapping. This is useful if you want to
change the parameters of the existing mapping without losing your
position in the stream. You can change which function will receive the
stream records, but to change the stream itself, you must create a new
mapping.

This operation requires permission for the
C<lambda:UpdateEventSourceMapping> action.











=head2 UpdateFunctionCode()

  Arguments described in: L<Paws::Lambda::UpdateFunctionCode>

  Returns: L<Paws::Lambda::FunctionConfiguration>

  

Updates the code for the specified Lambda function. This operation must
only be used on an existing Lambda function and cannot be used to
update the function configuration.

This operation requires permision for the C<lambda:UpdateFunctionCode>
action.











=head2 UpdateFunctionConfiguration()

  Arguments described in: L<Paws::Lambda::UpdateFunctionConfiguration>

  Returns: L<Paws::Lambda::FunctionConfiguration>

  

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

