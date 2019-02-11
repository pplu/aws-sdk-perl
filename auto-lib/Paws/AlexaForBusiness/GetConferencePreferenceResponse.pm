
package Paws::AlexaForBusiness::GetConferencePreferenceResponse;
  use Moose;
  has Preference => (is => 'ro', isa => 'Paws::AlexaForBusiness::ConferencePreference');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetConferencePreferenceResponse

=head1 ATTRIBUTES


=head2 Preference => L<Paws::AlexaForBusiness::ConferencePreference>

The conference preference.


=head2 _request_id => Str


=cut

1;