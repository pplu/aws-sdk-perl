
package Paws::AlexaForBusiness::GetProfileResponse;
  use Moose;
  has Profile => (is => 'ro', isa => 'Paws::AlexaForBusiness::Profile');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetProfileResponse

=head1 ATTRIBUTES


=head2 Profile => L<Paws::AlexaForBusiness::Profile>

The details of the room profile requested. Required.


=head2 _request_id => Str


=cut

1;