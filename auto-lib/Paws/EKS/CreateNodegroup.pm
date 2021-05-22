
package Paws::EKS::CreateNodegroup;
  use Moose;
  has AmiType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'amiType');
  has CapacityType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'capacityType');
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has DiskSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'diskSize');
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'instanceTypes');
  has Labels => (is => 'ro', isa => 'Paws::EKS::LabelsMap', traits => ['NameInRequest'], request_name => 'labels');
  has LaunchTemplate => (is => 'ro', isa => 'Paws::EKS::LaunchTemplateSpecification', traits => ['NameInRequest'], request_name => 'launchTemplate');
  has NodegroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nodegroupName', required => 1);
  has NodeRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nodeRole', required => 1);
  has ReleaseVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'releaseVersion');
  has RemoteAccess => (is => 'ro', isa => 'Paws::EKS::RemoteAccessConfig', traits => ['NameInRequest'], request_name => 'remoteAccess');
  has ScalingConfig => (is => 'ro', isa => 'Paws::EKS::NodegroupScalingConfig', traits => ['NameInRequest'], request_name => 'scalingConfig');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnets', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EKS::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Taints => (is => 'ro', isa => 'ArrayRef[Paws::EKS::Taint]', traits => ['NameInRequest'], request_name => 'taints');
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
      CapacityType       => 'ON_DEMAND',            # OPTIONAL
      ClientRequestToken => 'MyString',             # OPTIONAL
      DiskSize           => 1,                      # OPTIONAL
      InstanceTypes      => [ 'MyString', ... ],    # OPTIONAL
      Labels             => {
        'MylabelKey' =>
          'MylabelValue',    # key: min: 1, max: 63, value: min: 1, max: 63
      },    # OPTIONAL
      LaunchTemplate => {
        Id      => 'MyString',
        Name    => 'MyString',
        Version => 'MyString',
      },    # OPTIONAL
      ReleaseVersion => 'MyString',    # OPTIONAL
      RemoteAccess   => {
        Ec2SshKey            => 'MyString',
        SourceSecurityGroups => [ 'MyString', ... ],
      },                               # OPTIONAL
      ScalingConfig => {
        DesiredSize => 1,              # OPTIONAL
        MaxSize     => 1,              # min: 1; OPTIONAL
        MinSize     => 1,              # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Taints => [
        {
          Effect => 'NO_SCHEDULE'
          ,    # values: NO_SCHEDULE, NO_EXECUTE, PREFER_NO_SCHEDULE; OPTIONAL
          Key   => 'MytaintKey',      # min: 1, max: 63; OPTIONAL
          Value => 'MytaintValue',    # max: 63; OPTIONAL
        },
        ...
      ],                              # OPTIONAL
      Version => 'MyString',          # OPTIONAL
    );

    # Results:
    my $Nodegroup = $CreateNodegroupResponse->Nodegroup;

    # Returns a L<Paws::EKS::CreateNodegroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/CreateNodegroup>

=head1 ATTRIBUTES


=head2 AmiType => Str

The AMI type for your node group. GPU instance types should use the
C<AL2_x86_64_GPU> AMI type. Non-GPU instances should use the
C<AL2_x86_64> AMI type. Arm instances should use the C<AL2_ARM_64> AMI
type. All types use the Amazon EKS optimized Amazon Linux 2 AMI. If you
specify C<launchTemplate>, and your launch template uses a custom AMI,
then don't specify C<amiType>, or the node group deployment will fail.
For more information about using launch templates with Amazon EKS, see
Launch template support
(https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html)
in the Amazon EKS User Guide.

Valid values are: C<"AL2_x86_64">, C<"AL2_x86_64_GPU">, C<"AL2_ARM_64">, C<"CUSTOM">

=head2 CapacityType => Str

The capacity type for your node group.

Valid values are: C<"ON_DEMAND">, C<"SPOT">

=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ClusterName => Str

The name of the cluster to create the node group in.



=head2 DiskSize => Int

The root device disk size (in GiB) for your node group instances. The
default disk size is 20 GiB. If you specify C<launchTemplate>, then
don't specify C<diskSize>, or the node group deployment will fail. For
more information about using launch templates with Amazon EKS, see
Launch template support
(https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html)
in the Amazon EKS User Guide.



=head2 InstanceTypes => ArrayRef[Str|Undef]

Specify the instance types for a node group. If you specify a GPU
instance type, be sure to specify C<AL2_x86_64_GPU> with the C<amiType>
parameter. If you specify C<launchTemplate>, then you can specify zero
or one instance type in your launch template I<or> you can specify 0-20
instance types for C<instanceTypes>. If however, you specify an
instance type in your launch template I<and> specify any
C<instanceTypes>, the node group deployment will fail. If you don't
specify an instance type in a launch template or for C<instanceTypes>,
then C<t3.medium> is used, by default. If you specify C<Spot> for
C<capacityType>, then we recommend specifying multiple values for
C<instanceTypes>. For more information, see Managed node group capacity
types
(https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html#managed-node-group-capacity-types)
and Launch template support
(https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html)
in the I<Amazon EKS User Guide>.



=head2 Labels => L<Paws::EKS::LabelsMap>

The Kubernetes labels to be applied to the nodes in the node group when
they are created.



=head2 LaunchTemplate => L<Paws::EKS::LaunchTemplateSpecification>

An object representing a node group's launch template specification. If
specified, then do not specify C<instanceTypes>, C<diskSize>, or
C<remoteAccess> and make sure that the launch template meets the
requirements in C<launchTemplateSpecification>.



=head2 B<REQUIRED> NodegroupName => Str

The unique name to give your node group.



=head2 B<REQUIRED> NodeRole => Str

The Amazon Resource Name (ARN) of the IAM role to associate with your
node group. The Amazon EKS worker node C<kubelet> daemon makes calls to
AWS APIs on your behalf. Nodes receive permissions for these API calls
through an IAM instance profile and associated policies. Before you can
launch nodes and register them into a cluster, you must create an IAM
role for those nodes to use when they are launched. For more
information, see Amazon EKS node IAM role
(https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html)
in the I< I<Amazon EKS User Guide> >. If you specify C<launchTemplate>,
then don't specify C<IamInstanceProfile>
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html)
in your launch template, or the node group deployment will fail. For
more information about using launch templates with Amazon EKS, see
Launch template support
(https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html)
in the Amazon EKS User Guide.



=head2 ReleaseVersion => Str

The AMI version of the Amazon EKS optimized AMI to use with your node
group. By default, the latest available AMI version for the node
group's current Kubernetes version is used. For more information, see
Amazon EKS optimized Amazon Linux 2 AMI versions
(https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html)
in the I<Amazon EKS User Guide>. If you specify C<launchTemplate>, and
your launch template uses a custom AMI, then don't specify
C<releaseVersion>, or the node group deployment will fail. For more
information about using launch templates with Amazon EKS, see Launch
template support
(https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html)
in the Amazon EKS User Guide.



=head2 RemoteAccess => L<Paws::EKS::RemoteAccessConfig>

The remote access (SSH) configuration to use with your node group. If
you specify C<launchTemplate>, then don't specify C<remoteAccess>, or
the node group deployment will fail. For more information about using
launch templates with Amazon EKS, see Launch template support
(https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html)
in the Amazon EKS User Guide.



=head2 ScalingConfig => L<Paws::EKS::NodegroupScalingConfig>

The scaling configuration details for the Auto Scaling group that is
created for your node group.



=head2 B<REQUIRED> Subnets => ArrayRef[Str|Undef]

The subnets to use for the Auto Scaling group that is created for your
node group. If you specify C<launchTemplate>, then don't specify
C<SubnetId>
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html)
in your launch template, or the node group deployment will fail. For
more information about using launch templates with Amazon EKS, see
Launch template support
(https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html)
in the Amazon EKS User Guide.



=head2 Tags => L<Paws::EKS::TagMap>

The metadata to apply to the node group to assist with categorization
and organization. Each tag consists of a key and an optional value,
both of which you define. Node group tags do not propagate to any other
resources associated with the node group, such as the Amazon EC2
instances or subnets.



=head2 Taints => ArrayRef[L<Paws::EKS::Taint>]

The Kubernetes taints to be applied to the nodes in the node group.



=head2 Version => Str

The Kubernetes version to use for your managed nodes. By default, the
Kubernetes version of the cluster is used, and this is the only
accepted specified value. If you specify C<launchTemplate>, and your
launch template uses a custom AMI, then don't specify C<version>, or
the node group deployment will fail. For more information about using
launch templates with Amazon EKS, see Launch template support
(https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html)
in the Amazon EKS User Guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNodegroup in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

