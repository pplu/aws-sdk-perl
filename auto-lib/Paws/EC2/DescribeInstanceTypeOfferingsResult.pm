
package Paws::EC2::DescribeInstanceTypeOfferingsResult;
  use Moose;
  has InstanceTypeOfferings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceTypeOffering]', request_name => 'instanceTypeOfferingSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstanceTypeOfferingsResult

=head1 ATTRIBUTES


=head2 InstanceTypeOfferings => ArrayRef[L<Paws::EC2::InstanceTypeOffering>]

The instance types offered.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

