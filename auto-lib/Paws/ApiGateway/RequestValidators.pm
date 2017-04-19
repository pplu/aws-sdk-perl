
package Paws::ApiGateway::RequestValidators;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::RequestValidator]');
  has Position => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::RequestValidators

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::RequestValidator>]

The current page of RequestValidator resources in the RequestValidators
collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

