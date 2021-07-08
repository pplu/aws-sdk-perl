
package Paws::MediaConnect::RemoveFlowVpcInterfaceResponse;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');
  has NonDeletedNetworkInterfaceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'nonDeletedNetworkInterfaceIds');
  has VpcInterfaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcInterfaceName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::RemoveFlowVpcInterfaceResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that is associated with the VPC interface you
removed.


=head2 NonDeletedNetworkInterfaceIds => ArrayRef[Str|Undef]

IDs of network interfaces associated with the removed VPC interface
that Media Connect was unable to remove.


=head2 VpcInterfaceName => Str

The name of the VPC interface that was removed.


=head2 _request_id => Str


=cut

