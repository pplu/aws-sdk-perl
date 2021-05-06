
package Paws::GroundStation::ContactIdResponse;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contactId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ContactIdResponse

=head1 ATTRIBUTES


=head2 ContactId => Str

UUID of a contact.


=head2 _request_id => Str


=cut

