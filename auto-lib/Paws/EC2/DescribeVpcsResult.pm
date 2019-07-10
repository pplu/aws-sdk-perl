
package Paws::EC2::DescribeVpcsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has Vpcs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Vpc]', request_name => 'vpcSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Vpcs => ArrayRef[L<Paws::EC2::Vpc>]

Information about one or more VPCs.


=head2 _request_id => Str


=cut

