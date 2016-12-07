
package Paws::ApiGateway::DocumentationParts;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::DocumentationPart]');
  has Position => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DocumentationParts

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::DocumentationPart>]

The current page of DocumentationPart resources in the
DocumentationParts collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

