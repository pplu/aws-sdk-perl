
package Paws::ApiGateway::Authorizers;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::Authorizer]');
  has Position => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Authorizers

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::Authorizer>]

Gets the current list of Authorizer resources in the collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

