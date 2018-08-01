package Paws::EKS::VpcConfigResponse;
  use Moose;
  has ClusterSecurityGroupId => (is => 'ro', isa => 'Str', request_name => 'clusterSecurityGroupId', traits => ['NameInRequest']);
  has EndpointPrivateAccess => (is => 'ro', isa => 'Bool', request_name => 'endpointPrivateAccess', traits => ['NameInRequest']);
  has EndpointPublicAccess => (is => 'ro', isa => 'Bool', request_name => 'endpointPublicAccess', traits => ['NameInRequest']);
  has PublicAccessCidrs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'publicAccessCidrs', traits => ['NameInRequest']);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroupIds', traits => ['NameInRequest']);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnetIds', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::VpcConfigResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::VpcConfigResponse object:

  $service_obj->Method(Att1 => { ClusterSecurityGroupId => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::VpcConfigResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterSecurityGroupId

=head1 DESCRIPTION

An object representing an Amazon EKS cluster VPC configuration
response.

=head1 ATTRIBUTES


=head2 ClusterSecurityGroupId => Str

  The cluster security group that was created by Amazon EKS for the
cluster. Managed node groups use this security group for
control-plane-to-data-plane communication.


=head2 EndpointPrivateAccess => Bool

  This parameter indicates whether the Amazon EKS private API server
endpoint is enabled. If the Amazon EKS private API server endpoint is
enabled, Kubernetes API requests that originate from within your
cluster's VPC use the private VPC endpoint instead of traversing the
internet. If this value is disabled and you have worker nodes or AWS
Fargate pods in the cluster, then ensure that C<publicAccessCidrs>
includes the necessary CIDR blocks for communication with the worker
nodes or Fargate pods. For more information, see Amazon EKS Cluster
Endpoint Access Control
(https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
in the I< I<Amazon EKS User Guide> >.


=head2 EndpointPublicAccess => Bool

  This parameter indicates whether the Amazon EKS public API server
endpoint is enabled. If the Amazon EKS public API server endpoint is
disabled, your cluster's Kubernetes API server can only receive
requests that originate from within the cluster VPC.


=head2 PublicAccessCidrs => ArrayRef[Str|Undef]

  The CIDR blocks that are allowed access to your cluster's public
Kubernetes API server endpoint. Communication to the endpoint from
addresses outside of the listed CIDR blocks is denied. The default
value is C<0.0.0.0/0>. If you've disabled private endpoint access and
you have worker nodes or AWS Fargate pods in the cluster, then ensure
that the necessary CIDR blocks are listed. For more information, see
Amazon EKS Cluster Endpoint Access Control
(https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
in the I< I<Amazon EKS User Guide> >.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  The security groups associated with the cross-account elastic network
interfaces that are used to allow communication between your worker
nodes and the Kubernetes control plane.


=head2 SubnetIds => ArrayRef[Str|Undef]

  The subnets associated with your cluster.


=head2 VpcId => Str

  The VPC associated with your cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

