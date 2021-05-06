
package Paws::EC2::DescribeVpcAttributeResult;
  use Moose;
  has EnableDnsHostnames => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', request_name => 'enableDnsHostnames', traits => ['NameInRequest',]);
  has EnableDnsSupport => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', request_name => 'enableDnsSupport', traits => ['NameInRequest',]);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcAttributeResult

=head1 ATTRIBUTES


=head2 EnableDnsHostnames => L<Paws::EC2::AttributeBooleanValue>

Indicates whether the instances launched in the VPC get DNS hostnames.
If this attribute is C<true>, instances in the VPC get DNS hostnames;
otherwise, they do not.


=head2 EnableDnsSupport => L<Paws::EC2::AttributeBooleanValue>

Indicates whether DNS resolution is enabled for the VPC. If this
attribute is C<true>, the Amazon DNS server resolves DNS hostnames for
your instances to their corresponding IP addresses; otherwise, it does
not.


=head2 VpcId => Str

The ID of the VPC.


=head2 _request_id => Str


=cut

