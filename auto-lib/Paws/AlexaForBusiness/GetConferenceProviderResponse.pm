
package Paws::AlexaForBusiness::GetConferenceProviderResponse;
  use Moose;
  has ConferenceProvider => (is => 'ro', isa => 'Paws::AlexaForBusiness::ConferenceProvider');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetConferenceProviderResponse

=head1 ATTRIBUTES


=head2 ConferenceProvider => L<Paws::AlexaForBusiness::ConferenceProvider>

The conference provider.


=head2 _request_id => Str


=cut

1;