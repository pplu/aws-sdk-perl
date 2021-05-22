
package Paws::ApiGatewayV2::GetVpcLinksResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGatewayV2::VpcLink]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetVpcLinksResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGatewayV2::VpcLink>]

A collection of VPC links.


=head2 NextToken => Str

The next page of elements from this collection. Not valid for the last
element of the collection.


=head2 _request_id => Str


=cut

