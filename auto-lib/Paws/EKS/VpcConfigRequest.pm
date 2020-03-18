package Paws::EKS::VpcConfigRequest;
  use Moose;
  has EndpointPrivateAccess => (is => 'ro', isa => 'Bool', request_name => 'endpointPrivateAccess', traits => ['NameInRequest']);
  has EndpointPublicAccess => (is => 'ro', isa => 'Bool', request_name => 'endpointPublicAccess', traits => ['NameInRequest']);
  has PublicAccessCidrs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'publicAccessCidrs', traits => ['NameInRequest']);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroupIds', traits => ['NameInRequest']);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnetIds', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::VpcConfigRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::VpcConfigRequest object:

  $service_obj->Method(Att1 => { EndpointPrivateAccess => $value, ..., SubnetIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::VpcConfigRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->EndpointPrivateAccess

=head1 DESCRIPTION

An object representing the VPC configuration to use for an Amazon EKS
cluster.

=head1 ATTRIBUTES


=head2 EndpointPrivateAccess => Bool

  Set this value to C<true> to enable private access for your cluster's
Kubernetes API server endpoint. If you enable private access,
Kubernetes API requests from within your cluster's VPC use the private
VPC endpoint. The default value for this parameter is C<false>, which
disables private access for your Kubernetes API server. If you disable
private access and you have worker nodes or AWS Fargate pods in the
cluster, then ensure that C<publicAccessCidrs> includes the necessary
CIDR blocks for communication with the worker nodes or Fargate pods.
For more information, see Amazon EKS Cluster Endpoint Access Control
(https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
in the I< I<Amazon EKS User Guide> >.


=head2 EndpointPublicAccess => Bool

  Set this value to C<false> to disable public access to your cluster's
Kubernetes API server endpoint. If you disable public access, your
cluster's Kubernetes API server can only receive requests from within
the cluster VPC. The default value for this parameter is C<true>, which
enables public access for your Kubernetes API server. For more
information, see Amazon EKS Cluster Endpoint Access Control
(https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
in the I< I<Amazon EKS User Guide> >.


=head2 PublicAccessCidrs => ArrayRef[Str|Undef]

  The CIDR blocks that are allowed access to your cluster's public
Kubernetes API server endpoint. Communication to the endpoint from
addresses outside of the CIDR blocks that you specify is denied. The
default value is C<0.0.0.0/0>. If you've disabled private endpoint
access and you have worker nodes or AWS Fargate pods in the cluster,
then ensure that you specify the necessary CIDR blocks. For more
information, see Amazon EKS Cluster Endpoint Access Control
(https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
in the I< I<Amazon EKS User Guide> >.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  Specify one or more security groups for the cross-account elastic
network interfaces that Amazon EKS creates to use to allow
communication between your worker nodes and the Kubernetes control
plane. If you don't specify a security group, the default security
group for your VPC is used.


=head2 SubnetIds => ArrayRef[Str|Undef]

  Specify subnets for your Amazon EKS worker nodes. Amazon EKS creates
cross-account elastic network interfaces in these subnets to allow
communication between your worker nodes and the Kubernetes control
plane.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

