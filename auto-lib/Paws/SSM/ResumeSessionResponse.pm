
package Paws::SSM::ResumeSessionResponse;
  use Moose;
  has SessionId => (is => 'ro', isa => 'Str');
  has StreamUrl => (is => 'ro', isa => 'Str');
  has TokenValue => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ResumeSessionResponse

=head1 ATTRIBUTES


=head2 SessionId => Str

The ID of the session.


=head2 StreamUrl => Str

A URL back to SSM Agent on the instance that the Session Manager client
uses to send commands and receive output from the instance. Format:
C<wss://ssm-messages.B<region>.amazonaws.com/v1/data-channel/B<session-id>?stream=(input|output)>.

B<region> represents the Region identifier for an AWS Region supported
by AWS Systems Manager, such as C<us-east-2> for the US East (Ohio)
Region. For a list of supported B<region> values, see the B<Region>
column in the AWS Systems Manager table of regions and endpoints
(http://docs.aws.amazon.com/general/latest/gr/rande.html#ssm_region) in
the I<AWS General Reference>.

B<session-id> represents the ID of a Session Manager session, such as
C<1a2b3c4dEXAMPLE>.


=head2 TokenValue => Str

An encrypted token value containing session and caller information.
Used to authenticate the connection to the instance.


=head2 _request_id => Str


=cut

1;