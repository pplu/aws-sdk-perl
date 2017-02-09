
package Paws::EC2::DescribeVpcClassicLinkResult;
  use Moose;
  has Vpcs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpcClassicLink]', request_name => 'vpcSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcClassicLinkResult

=head1 ATTRIBUTES


=head2 Vpcs => ArrayRef[L<Paws::EC2::VpcClassicLink>]

The ClassicLink status of one or more VPCs.


=head2 _request_id => Str


=cut

