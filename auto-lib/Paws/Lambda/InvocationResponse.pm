
package Paws::Lambda::InvocationResponse;
  use Moose;
  has ExecutedVersion => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Executed-Version');
  has FunctionError => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Function-Error');
  has LogResult => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Log-Result');
  has Payload => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Int');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Payload');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::InvocationResponse

=head1 ATTRIBUTES


=head2 ExecutedVersion => Str

The version of the function that executed. When you invoke a function
with an alias, this indicates which version the alias resolved to.


=head2 FunctionError => Str

If present, indicates that an error occurred during function execution.
Details about the error are included in the response payload.


=head2 LogResult => Str

The last 4 KB of the execution log, which is base64 encoded.


=head2 Payload => Str

The response from the function, or an error object.


=head2 StatusCode => Int

The HTTP status code is in the 200 range for a successful request. For
the C<RequestResponse> invocation type, this status code is 200. For
the C<Event> invocation type, this status code is 202. For the
C<DryRun> invocation type, the status code is 204.


=head2 _request_id => Str


=cut

