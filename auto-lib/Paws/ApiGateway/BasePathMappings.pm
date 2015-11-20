
package Paws::ApiGateway::BasePathMappings;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::BasePathMapping]');
  has Position => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::BasePathMappings

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::BasePathMapping>]

  The current page of any BasePathMapping resources in the collection of
base path mapping resources.

=head2 Position => Str

  


=cut

