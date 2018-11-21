package Paws::Batch::ComputeResource;
  use Moose;
  has BidPercentage => (is => 'ro', isa => 'Int', request_name => 'bidPercentage', traits => ['NameInRequest']);
  has DesiredvCpus => (is => 'ro', isa => 'Int', request_name => 'desiredvCpus', traits => ['NameInRequest']);
  has Ec2KeyPair => (is => 'ro', isa => 'Str', request_name => 'ec2KeyPair', traits => ['NameInRequest']);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest']);
  has InstanceRole => (is => 'ro', isa => 'Str', request_name => 'instanceRole', traits => ['NameInRequest'], required => 1);
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'instanceTypes', traits => ['NameInRequest'], required => 1);
  has LaunchTemplate => (is => 'ro', isa => 'Paws::Batch::LaunchTemplateSpecification', request_name => 'launchTemplate', traits => ['NameInRequest']);
  has MaxvCpus => (is => 'ro', isa => 'Int', request_name => 'maxvCpus', traits => ['NameInRequest'], required => 1);
  has MinvCpus => (is => 'ro', isa => 'Int', request_name => 'minvCpus', traits => ['NameInRequest'], required => 1);
  has PlacementGroup => (is => 'ro', isa => 'Str', request_name => 'placementGroup', traits => ['NameInRequest']);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroupIds', traits => ['NameInRequest']);
  has SpotIamFleetRole => (is => 'ro', isa => 'Str', request_name => 'spotIamFleetRole', traits => ['NameInRequest']);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnets', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Batch::TagsMap', request_name => 'tags', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ComputeResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::ComputeResource object:

  $service_obj->Method(Att1 => { BidPercentage => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::ComputeResource object:

  $result = $service_obj->Method(...);
  $result->Att1->BidPercentage

=head1 DESCRIPTION

An object representing an AWS Batch compute resource.

=head1 ATTRIBUTES


=head2 BidPercentage => Int

  The maximum percentage that a Spot Instance price can be when compared
with the On-Demand price for that instance type before instances are
launched. For example, if your maximum percentage is 20%, then the Spot
price must be below 20% of the current On-Demand price for that EC2
instance. You always pay the lowest (market) price and never more than
your maximum percentage. If you leave this field empty, the default
value is 100% of the On-Demand price.


=head2 DesiredvCpus => Int

  The desired number of EC2 vCPUS in the compute environment.


=head2 Ec2KeyPair => Str

  The EC2 key pair that is used for instances launched in the compute
environment.


=head2 ImageId => Str

  The Amazon Machine Image (AMI) ID used for instances launched in the
compute environment.


=head2 B<REQUIRED> InstanceRole => Str

  The Amazon ECS instance profile applied to Amazon EC2 instances in a
compute environment. You can specify the short name or full Amazon
Resource Name (ARN) of an instance profile. For example,
C<ecsInstanceRole> or
C<arn:aws:iam::E<lt>aws_account_idE<gt>:instance-profile/ecsInstanceRole>.
For more information, see Amazon ECS Instance Role
(http://docs.aws.amazon.com/batch/latest/userguide/instance_IAM_role.html)
in the I<AWS Batch User Guide>.


=head2 B<REQUIRED> InstanceTypes => ArrayRef[Str|Undef]

  The instances types that may be launched. You can specify instance
families to launch any instance type within those families (for
example, C<c4> or C<p3>), or you can specify specific sizes within a
family (such as C<c4.8xlarge>). You can also choose C<optimal> to pick
instance types (from the latest C, M, and R instance families) on the
fly that match the demand of your job queues.


=head2 LaunchTemplate => L<Paws::Batch::LaunchTemplateSpecification>

  The launch template to use for your compute resources. Any other
compute resource parameters that you specify in a
CreateComputeEnvironment API operation override the same parameters in
the launch template. You must specify either the launch template ID or
launch template name in the request, but not both.


=head2 B<REQUIRED> MaxvCpus => Int

  The maximum number of EC2 vCPUs that an environment can reach.


=head2 B<REQUIRED> MinvCpus => Int

  The minimum number of EC2 vCPUs that an environment should maintain
(even if the compute environment is C<DISABLED>).


=head2 PlacementGroup => Str

  The Amazon EC2 placement group to associate with your compute
resources. If you intend to submit multi-node parallel jobs to your
compute environment, you should consider creating a cluster placement
group and associate it with your compute resources. This keeps your
multi-node parallel job on a logical grouping of instances within a
single Availability Zone with high network flow potential. For more
information, see Placement Groups
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the I<Amazon EC2 User Guide for Linux Instances>.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  The EC2 security group that is associated with instances launched in
the compute environment.


=head2 SpotIamFleetRole => Str

  The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role
applied to a C<SPOT> compute environment.


=head2 B<REQUIRED> Subnets => ArrayRef[Str|Undef]

  The VPC subnets into which the compute resources are launched.


=head2 Tags => L<Paws::Batch::TagsMap>

  Key-value pair tags to be applied to resources that are launched in the
compute environment.


=head2 B<REQUIRED> Type => Str

  The type of compute environment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

