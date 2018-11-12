
package Paws::AlexaForBusiness::CreateConferenceProviderResponse;
  use Moose;
  has ConferenceProviderArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateConferenceProviderResponse

=head1 ATTRIBUTES


=head2 ConferenceProviderArn => Str

The ARN of the newly-created conference provider.


=head2 _request_id => Str


=cut

1;