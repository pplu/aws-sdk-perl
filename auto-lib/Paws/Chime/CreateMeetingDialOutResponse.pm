
package Paws::Chime::CreateMeetingDialOutResponse;
  use Moose;
  has TransactionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateMeetingDialOutResponse

=head1 ATTRIBUTES


=head2 TransactionId => Str

Unique ID that tracks API calls.


=head2 _request_id => Str


=cut

