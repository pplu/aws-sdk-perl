
package Paws::EC2::DescribeAddressesResult;
  use Moose;
  has Addresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Address]', request_name => 'addressesSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAddressesResult

=head1 ATTRIBUTES


=head2 Addresses => ArrayRef[L<Paws::EC2::Address>]

Information about one or more Elastic IP addresses.


=head2 _request_id => Str


=cut

