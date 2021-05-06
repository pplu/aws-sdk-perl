
package Paws::ECS::PutAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Attribute]', traits => ['NameInRequest'], request_name => 'attributes' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::PutAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::ECS::Attribute>]

The attributes applied to your resource.


=head2 _request_id => Str


=cut

1;