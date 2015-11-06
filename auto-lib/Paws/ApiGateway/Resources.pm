
package Paws::ApiGateway::Resources;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::Resource]');
  has Position => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Resources

=head1 ATTRIBUTES

=head2 Items => ArrayRef[L<Paws::ApiGateway::Resource>]

  Gets the current Resource resource in the collection.
=head2 Position => Str

  


=cut

