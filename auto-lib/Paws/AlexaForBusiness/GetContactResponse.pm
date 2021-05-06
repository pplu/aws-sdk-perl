
package Paws::AlexaForBusiness::GetContactResponse;
  use Moose;
  has Contact => (is => 'ro', isa => 'Paws::AlexaForBusiness::Contact');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetContactResponse

=head1 ATTRIBUTES


=head2 Contact => L<Paws::AlexaForBusiness::Contact>

The details of the requested contact.


=head2 _request_id => Str


=cut

1;