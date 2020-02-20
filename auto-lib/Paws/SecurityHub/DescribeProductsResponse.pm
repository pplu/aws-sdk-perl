
package Paws::SecurityHub::DescribeProductsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Products => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Product]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DescribeProductsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to request the next page of results.


=head2 B<REQUIRED> Products => ArrayRef[L<Paws::SecurityHub::Product>]

A list of products, including details for each product.


=head2 _request_id => Str


=cut

