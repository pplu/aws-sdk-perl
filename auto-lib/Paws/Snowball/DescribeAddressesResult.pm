
package Paws::Snowball::DescribeAddressesResult;
  use Moose;
  has Addresses => (is => 'ro', isa => 'ArrayRef[Paws::Snowball::Address]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::DescribeAddressesResult

=head1 ATTRIBUTES


=head2 Addresses => ArrayRef[L<Paws::Snowball::Address>]

The Snowball shipping addresses that were created for this account.


=head2 NextToken => Str

HTTP requests are stateless. If you use the automatically generated
C<NextToken> value in your next C<DescribeAddresses> call, your list of
returned addresses will start from this point in the array.


=head2 _request_id => Str


=cut

1;