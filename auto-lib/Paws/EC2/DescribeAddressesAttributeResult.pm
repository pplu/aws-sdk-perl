
package Paws::EC2::DescribeAddressesAttributeResult;
  use Moose;
  has Addresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AddressAttribute]', request_name => 'addressSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAddressesAttributeResult

=head1 ATTRIBUTES


=head2 Addresses => ArrayRef[L<Paws::EC2::AddressAttribute>]

Information about the IP addresses.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

