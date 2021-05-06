
package Paws::ECS::DeleteAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Attribute]', traits => ['NameInRequest'], request_name => 'attributes' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::ECS::Attribute>]

A list of attribute objects that were successfully deleted from your
resource.


=head2 _request_id => Str


=cut

1;