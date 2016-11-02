
package Paws::ApiGateway::Models;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::Model]');
  has Position => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Models

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::Model>]

Gets the current Model resource in the collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

