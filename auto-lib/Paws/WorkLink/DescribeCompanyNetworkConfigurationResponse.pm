
package Paws::WorkLink::DescribeCompanyNetworkConfigurationResponse;
  use Moose;
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VpcId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DescribeCompanyNetworkConfigurationResponse

=head1 ATTRIBUTES


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The security groups associated with access to the provided subnets.


=head2 SubnetIds => ArrayRef[Str|Undef]

The subnets used for X-ENI connections from Amazon WorkLink rendering
containers.


=head2 VpcId => Str

The VPC with connectivity to associated websites.


=head2 _request_id => Str


=cut

