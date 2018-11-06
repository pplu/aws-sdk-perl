
package Paws::AlexaForBusiness::ListConferenceProvidersResponse;
  use Moose;
  has ConferenceProviders => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::ConferenceProvider]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListConferenceProvidersResponse

=head1 ATTRIBUTES


=head2 ConferenceProviders => ArrayRef[L<Paws::AlexaForBusiness::ConferenceProvider>]

The conference providers.


=head2 NextToken => Str

The tokens used for pagination.


=head2 _request_id => Str


=cut

1;