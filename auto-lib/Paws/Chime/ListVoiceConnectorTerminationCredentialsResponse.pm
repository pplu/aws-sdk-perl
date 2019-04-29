
package Paws::Chime::ListVoiceConnectorTerminationCredentialsResponse;
  use Moose;
  has Usernames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListVoiceConnectorTerminationCredentialsResponse

=head1 ATTRIBUTES


=head2 Usernames => ArrayRef[Str|Undef]

A list of user names.


=head2 _request_id => Str


=cut

