
use Paws::API;


package Paws::Lambda {
  warn "Paws::Lambda is not stable / supported / entirely developed";
  use Moose;
  sub service { 'lambda' }
  sub version { '2014-11-11' }
  sub flattened_arrays { 0 }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
  sub AddEventSource {
    my $self = shift;
    return $self->caller->do_call('Paws::Lambda::AddEventSource', @_);
  }
  sub DeleteFunction {
    my $self = shift;
    return $self->caller->do_call('Paws::Lambda::DeleteFunction', @_);
  }
  sub GetEventSource {
    my $self = shift;
    return $self->caller->do_call('Paws::Lambda::GetEventSource', @_);
  }
  sub GetFunction {
    my $self = shift;
    return $self->caller->do_call('Paws::Lambda::GetFunction', @_);
  }
  sub GetFunctionConfiguration {
    my $self = shift;
    return $self->caller->do_call('Paws::Lambda::GetFunctionConfiguration', @_);
  }
  sub InvokeAsync {
    my $self = shift;
    return $self->caller->do_call('Paws::Lambda::InvokeAsync', @_);
  }
  sub ListEventSources {
    my $self = shift;
    return $self->caller->do_call('Paws::Lambda::ListEventSources', @_);
  }
  sub ListFunctions {
    my $self = shift;
    return $self->caller->do_call('Paws::Lambda::ListFunctions', @_);
  }
  sub RemoveEventSource {
    my $self = shift;
    return $self->caller->do_call('Paws::Lambda::RemoveEventSource', @_);
  }
  sub UpdateFunctionConfiguration {
    my $self = shift;
    return $self->caller->do_call('Paws::Lambda::UpdateFunctionConfiguration', @_);
  }
  sub UploadFunction {
    my $self = shift;
    return $self->caller->do_call('Paws::Lambda::UploadFunction', @_);
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



AWS Lambda

B<Overview>

This is the AWS Lambda API Reference. The AWS Lambda Developer Guide
provides additional information. For the service overview, go to What
is AWS Lambda, and for information about how the service works, go to
AWS LambdaL How it Works in the AWS Lambda Developer Guide.










=head1 METHODS

=head2 AddEventSource()

  Arguments described in: L<Paws::Lambda::AddEventSource>

  Returns: L<Paws::Lambda::EventSourceConfiguration>

  

Identifies a stream as an event source for an AWS Lambda function. It
can be either an Amazon Kinesis stream or a Amazon DynamoDB stream. AWS
Lambda invokes the specified function when records are posted to the
stream.

This is the pull model, where AWS Lambda invokes the function. For more
information, go to AWS Lambda: How it Works in the AWS Lambda Developer
Guide.

This association between an Amazon Kinesis stream and an AWS Lambda
function is called the event source mapping. You provide the
configuration information (for example, which stream to read from and
which AWS Lambda function to invoke) for the event source mapping in
the request body.

Each event source, such as a Kinesis stream, can only be associated
with one AWS Lambda function. If you call AddEventSource for an event
source that is already mapped to another AWS Lambda function, the
existing mapping is updated to call the new function instead of the old
one.

This operation requires permission for the C<iam:PassRole> action for
the IAM role. It also requires permission for the
C<lambda:AddEventSource> action.











=head2 DeleteFunction()

  Arguments described in: L<Paws::Lambda::DeleteFunction>

  Returns: nothing

  

Deletes the specified Lambda function code and configuration.

This operation requires permission for the C<lambda:DeleteFunction>
action.











=head2 GetEventSource()

  Arguments described in: L<Paws::Lambda::GetEventSource>

  Returns: L<Paws::Lambda::EventSourceConfiguration>

  

Returns configuration information for the specified event source
mapping (see AddEventSource).

This operation requires permission for the C<lambda:GetEventSource>
action.











=head2 GetFunction()

  Arguments described in: L<Paws::Lambda::GetFunction>

  Returns: L<Paws::Lambda::GetFunctionResponse>

  

Returns the configuration information of the Lambda function and a
presigned URL link to the .zip file you uploaded with UploadFunction so
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
by using UploadFunction.

This operation requires permission for the
C<lambda:GetFunctionConfiguration> operation.











=head2 InvokeAsync()

  Arguments described in: L<Paws::Lambda::InvokeAsync>

  Returns: L<Paws::Lambda::InvokeAsyncResponse>

  

Submits an invocation request to AWS Lambda. Upon receiving the
request, Lambda executes the specified function asynchronously. To see
the logs generated by the Lambda function execution, see the CloudWatch
logs console.

This operation requires permission for the C<lambda:InvokeAsync>
action.











=head2 ListEventSources()

  Arguments described in: L<Paws::Lambda::ListEventSources>

  Returns: L<Paws::Lambda::ListEventSourcesResponse>

  

Returns a list of event source mappings you created using the
C<AddEventSource> (see AddEventSource), where you identify a stream as
event source. This list does not include Amazon S3 event sources.

For each mapping, the API returns configuration information. You can
optionally specify filters to retrieve specific event source mappings.

This operation requires permission for the C<lambda:ListEventSources>
action.











=head2 ListFunctions()

  Arguments described in: L<Paws::Lambda::ListFunctions>

  Returns: L<Paws::Lambda::ListFunctionsResponse>

  

Returns a list of your Lambda functions. For each function, the
response includes the function configuration information. You must use
GetFunction to retrieve the code for your function.

This operation requires permission for the C<lambda:ListFunctions>
action.











=head2 RemoveEventSource()

  Arguments described in: L<Paws::Lambda::RemoveEventSource>

  Returns: nothing

  

Removes an event source mapping. This means AWS Lambda will no longer
invoke the function for events in the associated source.

This operation requires permission for the C<lambda:RemoveEventSource>
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











=head2 UploadFunction()

  Arguments described in: L<Paws::Lambda::UploadFunction>

  Returns: L<Paws::Lambda::FunctionConfiguration>

  

Creates a new Lambda function or updates an existing function. The
function metadata is created from the request parameters, and the code
for the function is provided by a .zip file in the request body. If the
function name already exists, the existing Lambda function is updated
with the new code and metadata.

This operation requires permission for the C<lambda:UploadFunction>
action.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

