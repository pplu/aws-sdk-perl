
package Paws::Lambda::InvocationResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Payload');
  use Types::Standard qw/Str Int/;
  use Paws::Lambda::Types qw//;
  has ExecutedVersion => (is => 'ro', isa => Str);
  has FunctionError => (is => 'ro', isa => Str);
  has LogResult => (is => 'ro', isa => Str);
  has Payload => (is => 'ro', isa => Str);
  has StatusCode => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StatusCode' => {
                                 'type' => 'Int'
                               },
               'FunctionError' => {
                                    'type' => 'Str'
                                  },
               'Payload' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ExecutedVersion' => {
                                      'type' => 'Str'
                                    },
               'LogResult' => {
                                'type' => 'Str'
                              }
             },
  'ParamInHeader' => {
                       'FunctionError' => 'X-Amz-Function-Error',
                       'LogResult' => 'X-Amz-Log-Result',
                       'ExecutedVersion' => 'X-Amz-Executed-Version'
                     }
}
;
    return $Params_map;
  }

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

=over

=item *

C<Handled> - The runtime caught an error thrown by the function and
formatted it into a JSON document.

=item *

C<Unhandled> - The runtime didn't handle the error. For example, the
function ran out of memory or timed out.

=back



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

