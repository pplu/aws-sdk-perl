
package Paws::ApiGatewayV2::GetApisResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGatewayV2::Api]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetApisResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGatewayV2::Api>]

The elements from this collection.


=head2 NextToken => Str

The next page of elements from this collection. Not valid for the last
element of the collection.


=head2 _request_id => Str


=cut

