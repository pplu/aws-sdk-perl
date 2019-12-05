
package Paws::EKS::CreateNodegroup;
  use Moose;
  has AmiType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'amiType');
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has DiskSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'diskSize');
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'instanceTypes');
  has Labels => (is => 'ro', isa => 'Paws::EKS::LabelsMap', traits => ['NameInRequest'], request_name => 'labels');
  has NodegroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nodegroupName', required => 1);
  has NodeRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nodeRole', required => 1);
  has ReleaseVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'releaseVersion');
  has RemoteAccess => (is => 'ro', isa => 'Paws::EKS::RemoteAccessConfig', traits => ['NameInRequest'], request_name => 'remoteAccess');
  has ScalingConfig => (is => 'ro', isa => 'Paws::EKS::NodegroupScalingConfig', traits => ['NameInRequest'], request_name => 'scalingConfig');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnets', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EKS::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNodegroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/node-groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::CreateNodegroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::CreateNodegroup - Arguments for method CreateNodegroup on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNodegroup on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method CreateNodegroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNodegroup.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $CreateNodegroupResponse = $eks->CreateNodegroup(
      ClusterName        => 'MyString',
      NodeRole           => 'MyString',
      NodegroupName      => 'MyString',
      Subnets            => [ 'MyString', ... ],
      AmiType            => 'AL2_x86_64',           # OPTIONAL
      ClientRequestToken => 'MyString',             # OPTIONAL
      DiskSize           => 1,                      # OPTIONAL
      InstanceTypes      => [ 'MyString', ... ],    # OPTIONAL
      Labels             => {
        'MylabelKey' =>
          'MylabelValue',    # key: min: 1, max: 63, value: min: 1, max: 253
      },    # OPTIONAL
      ReleaseVersion => 'MyString',    # OPTIONAL
      RemoteAccess   => {
        Ec2SshKey            => 'MyString',
        SourceSecurityGroups => [ 'MyString', ... ],
      },                               # OPTIONAL
      ScalingConfig => {
        DesiredSize => 1,              # min: 1; OPTIONAL
        MaxSize     => 1,              # min: 1; OPTIONAL
        MinSize     => 1,              # min: 1; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Version => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Nodegroup = $CreateNodegroupResponse->Nodegroup;

    # Returns a L<Paws::EKS::CreateNodegroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/CreateNodegroup>

=head1 ATTRIBUTES


=head2 AmiType => Str

The AMI type for your node group. GPU instance types should use the
C<AL2_x86_64_GPU> AMI type, which uses the Amazon EKS-optimized Linux
AMI with GPU support. Non-GPU instances should use the C<AL2_x86_64>
AMI type, which uses the Amazon EKS-optimized Linux AMI.

Valid values are: C<"AL2_x86_64">, C<"AL2_x86_64_GPU">

=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ClusterName => Str

The name of the cluster to create the node group in.



=head2 DiskSize => Int

The root device disk size (in GiB) for your node group instances. The
default disk size is 20 GiB.



=head2 InstanceTypes => ArrayRef[Str|Undef]

The instance type to use for your node group. Currently, you can
specify a single instance type for a node group. The default value for
this parameter is C<t3.medium>. If you choose a GPU instance type, be
sure to specify the C<AL2_x86_64_GPU> with the C<amiType> parameter.



=head2 Labels => L<Paws::EKS::LabelsMap>

The Kubernetes labels to be applied to the nodes in the node group when
they are created.



=head2 B<REQUIRED> NodegroupName => Str

The unique name to give your node group.



=head2 B<REQUIRED> NodeRole => Str

The IAM role associated with your node group. The Amazon EKS worker
node C<kubelet> daemon makes calls to AWS APIs on your behalf. Worker
nodes receive permissions for these API calls through an IAM instance
profile and associated policies. Before you can launch worker nodes and
register them into a cluster, you must create an IAM role for those
worker nodes to use when they are launched. For more information, see
Amazon EKS Worker Node IAM Role
(https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html)
in the I< I<Amazon EKS User Guide> >.



=head2 ReleaseVersion => Str

The AMI version of the Amazon EKS-optimized AMI to use with your node
group. By default, the latest available AMI version for the node
group's current Kubernetes version is used. For more information, see
Amazon EKS-Optimized Linux AMI Versions
(https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html)
in the I<Amazon EKS User Guide>.



=head2 RemoteAccess => L<Paws::EKS::RemoteAccessConfig>

The remote access (SSH) configuration to use with your node group.



=head2 ScalingConfig => L<Paws::EKS::NodegroupScalingConfig>

The scaling configuration details for the Auto Scaling group that is
created for your node group.



=head2 B<REQUIRED> Subnets => ArrayRef[Str|Undef]

The subnets to use for the Auto Scaling group that is created for your
node group. These subnets must have the tag key
C<kubernetes.io/cluster/CLUSTER_NAME> with a value of C<shared>, where
C<CLUSTER_NAME> is replaced with the name of your cluster.



=head2 Tags => L<Paws::EKS::TagMap>

The metadata to apply to the node group to assist with categorization
and organization. Each tag consists of a key and an optional value,
both of which you define. Node group tags do not propagate to any other
resources associated with the node group, such as the Amazon EC2
instances or subnets.



=head2 Version => Str

The Kubernetes version to use for your managed nodes. By default, the
Kubernetes version of the cluster is used, and this is the only
accepted specified value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNodegroup in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

