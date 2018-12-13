
package Paws::EKS::CreateCluster;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ResourcesVpcConfig => (is => 'ro', isa => 'Paws::EKS::VpcConfigRequest', traits => ['NameInRequest'], request_name => 'resourcesVpcConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::CreateClusterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::CreateCluster - Arguments for method CreateCluster on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<Amazon Elastic Container Service for Kubernetes|Paws::EKS> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $CreateClusterResponse = $eks->CreateCluster(
      Name               => 'MyClusterName',
      ResourcesVpcConfig => {
        SubnetIds        => [ 'MyString', ... ],
        SecurityGroupIds => [ 'MyString', ... ],
      },
      RoleArn            => 'MyString',
      ClientRequestToken => 'MyString',    # OPTIONAL
      Version            => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Cluster = $CreateClusterResponse->Cluster;

    # Returns a L<Paws::EKS::CreateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/CreateCluster>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> Name => Str

The unique name to give to your cluster.



=head2 B<REQUIRED> ResourcesVpcConfig => L<Paws::EKS::VpcConfigRequest>

The VPC subnets and security groups used by the cluster control plane.
Amazon EKS VPC resources have specific requirements to work properly
with Kubernetes. For more information, see Cluster VPC Considerations
(http://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html) and
Cluster Security Group Considerations
(http://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html)
in the I<Amazon EKS User Guide>. You must specify at least two subnets.
You may specify up to five security groups, but we recommend that you
use a dedicated security group for your cluster control plane.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that provides
permissions for Amazon EKS to make calls to other AWS API operations on
your behalf. For more information, see Amazon EKS Service IAM Role
(http://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html)
in the I< I<Amazon EKS User Guide> >.



=head2 Version => Str

The desired Kubernetes version for your cluster. If you do not specify
a value here, the latest version available in Amazon EKS is used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

