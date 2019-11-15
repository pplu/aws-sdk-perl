
package Paws::Chime::GetPhoneNumberSettingsResponse;
  use Moose;
  has CallingName => (is => 'ro', isa => 'Str');
  has CallingNameUpdatedTimestamp => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetPhoneNumberSettingsResponse

=head1 ATTRIBUTES


=head2 CallingName => Str

The default outbound calling name for the account.


=head2 CallingNameUpdatedTimestamp => Str

The updated outbound calling name timestamp, in ISO 8601 format.


=head2 _request_id => Str


=cut

