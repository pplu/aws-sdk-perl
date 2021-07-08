
package Paws::MediaConnect::AddFlowVpcInterfacesResponse;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');
  has VpcInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::VpcInterface]', traits => ['NameInRequest'], request_name => 'vpcInterfaces');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::AddFlowVpcInterfacesResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that these VPC interfaces were added to.


=head2 VpcInterfaces => ArrayRef[L<Paws::MediaConnect::VpcInterface>]

The details of the newly added VPC interfaces.


=head2 _request_id => Str


=cut

