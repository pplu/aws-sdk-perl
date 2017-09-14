package Paws::Batch::ComputeResource;
  use Moose;
  has BidPercentage => (is => 'ro', isa => 'Int', request_name => 'bidPercentage', traits => ['NameInRequest']);
  has DesiredvCpus => (is => 'ro', isa => 'Int', request_name => 'desiredvCpus', traits => ['NameInRequest']);
  has Ec2KeyPair => (is => 'ro', isa => 'Str', request_name => 'ec2KeyPair', traits => ['NameInRequest']);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest']);
  has InstanceRole => (is => 'ro', isa => 'Str', request_name => 'instanceRole', traits => ['NameInRequest'], required => 1);
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'instanceTypes', traits => ['NameInRequest'], required => 1);
  has MaxvCpus => (is => 'ro', isa => 'Int', request_name => 'maxvCpus', traits => ['NameInRequest'], required => 1);
  has MinvCpus => (is => 'ro', isa => 'Int', request_name => 'minvCpus', traits => ['NameInRequest'], required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroupIds', traits => ['NameInRequest'], required => 1);
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

  The minimum percentage that a Spot Instance price must be when compared
with the On-Demand price for that instance type before instances are
launched. For example, if your bid percentage is 20%, then the Spot
price must be below 20% of the current On-Demand price for that EC2
instance.


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
For more information, see Amazon ECS Instance Role in the I<AWS Batch
User Guide>.


=head2 B<REQUIRED> InstanceTypes => ArrayRef[Str|Undef]

  The instances types that may launched.


=head2 B<REQUIRED> MaxvCpus => Int

  The maximum number of EC2 vCPUs that an environment can reach.


=head2 B<REQUIRED> MinvCpus => Int

  The minimum number of EC2 vCPUs that an environment should maintain.


=head2 B<REQUIRED> SecurityGroupIds => ArrayRef[Str|Undef]

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

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

