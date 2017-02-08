
package Paws::ApiGateway::DocumentationVersions;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::DocumentationVersion]', traits => ['Unwrapped'], xmlname => 'items');
  has Position => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'position');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DocumentationVersions

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::DocumentationVersion>]

The current page of DocumentationVersion items from the
DocumentationVersions collection of an API.


=head2 Position => Str




=head2 _request_id => Str


=cut

