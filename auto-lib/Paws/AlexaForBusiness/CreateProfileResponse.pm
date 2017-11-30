
package Paws::AlexaForBusiness::CreateProfileResponse;
  use Moose;
  has ProfileArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateProfileResponse

=head1 ATTRIBUTES


=head2 ProfileArn => Str

The ARN of the newly created room profile in the response.


=head2 _request_id => Str


=cut

1;