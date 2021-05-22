
package Paws::EKS::CreateCluster;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has EncryptionConfig => (is => 'ro', isa => 'ArrayRef[Paws::EKS::EncryptionConfig]', traits => ['NameInRequest'], request_name => 'encryptionConfig');
  has KubernetesNetworkConfig => (is => 'ro', isa => 'Paws::EKS::KubernetesNetworkConfigRequest', traits => ['NameInRequest'], request_name => 'kubernetesNetworkConfig');
  has Logging => (is => 'ro', isa => 'Paws::EKS::Logging', traits => ['NameInRequest'], request_name => 'logging');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ResourcesVpcConfig => (is => 'ro', isa => 'Paws::EKS::VpcConfigRequest', traits => ['NameInRequest'], request_name => 'resourcesVpcConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EKS::TagMap', traits => ['NameInRequest'], request_name => 'tags');
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
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    # To create a new cluster
    # The following example creates an Amazon EKS cluster called prod.
    my $CreateClusterResponse = $eks->CreateCluster(
      'ClientRequestToken' => '1d2129a1-3d38-460a-9756-e5b91fddb951',
      'Name'               => 'prod',
      'ResourcesVpcConfig' => {
        'SecurityGroupIds' => ['sg-6979fe18'],
        'SubnetIds'        => [ 'subnet-6782e71e', 'subnet-e7e761ac' ]
      },
      'RoleArn' =>
'arn:aws:iam::012345678910:role/eks-service-role-AWSServiceRoleForAmazonEKS-J7ONKE3BQ4PI',
      'Version' => 1.10
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/CreateCluster>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 EncryptionConfig => ArrayRef[L<Paws::EKS::EncryptionConfig>]

The encryption configuration for the cluster.



=head2 KubernetesNetworkConfig => L<Paws::EKS::KubernetesNetworkConfigRequest>

The Kubernetes network configuration for the cluster.



=head2 Logging => L<Paws::EKS::Logging>

Enable or disable exporting the Kubernetes control plane logs for your
cluster to CloudWatch Logs. By default, cluster control plane logs
aren't exported to CloudWatch Logs. For more information, see Amazon
EKS Cluster Control Plane Logs
(https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
in the I< I<Amazon EKS User Guide> >.

CloudWatch Logs ingestion, archive storage, and data scanning rates
apply to exported control plane logs. For more information, see Amazon
CloudWatch Pricing (http://aws.amazon.com/cloudwatch/pricing/).



=head2 B<REQUIRED> Name => Str

The unique name to give to your cluster.



=head2 B<REQUIRED> ResourcesVpcConfig => L<Paws::EKS::VpcConfigRequest>

The VPC configuration used by the cluster control plane. Amazon EKS VPC
resources have specific requirements to work properly with Kubernetes.
For more information, see Cluster VPC Considerations
(https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html)
and Cluster Security Group Considerations
(https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html)
in the I<Amazon EKS User Guide>. You must specify at least two subnets.
You can specify up to five security groups, but we recommend that you
use a dedicated security group for your cluster control plane.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that provides
permissions for the Kubernetes control plane to make calls to AWS API
operations on your behalf. For more information, see Amazon EKS Service
IAM Role
(https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html)
in the I< I<Amazon EKS User Guide> >.



=head2 Tags => L<Paws::EKS::TagMap>

The metadata to apply to the cluster to assist with categorization and
organization. Each tag consists of a key and an optional value, both of
which you define.



=head2 Version => Str

The desired Kubernetes version for your cluster. If you don't specify a
value here, the latest version available in Amazon EKS is used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

