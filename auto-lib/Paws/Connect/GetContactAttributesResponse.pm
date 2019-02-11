
package Paws::Connect::GetContactAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::Connect::Attributes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetContactAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::Connect::Attributes>

The attributes to update.


=head2 _request_id => Str


=cut

