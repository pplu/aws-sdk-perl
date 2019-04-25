package Paws::CloudFormation::StackResource;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DriftInformation => (is => 'ro', isa => 'Paws::CloudFormation::StackResourceDriftInformation');
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has ResourceStatus => (is => 'ro', isa => 'Str', required => 1);
  has ResourceStatusReason => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackResource object:

  $service_obj->Method(Att1 => { Description => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackResource object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

The StackResource data type.

=head1 ATTRIBUTES


=head2 Description => Str

  User defined description associated with the resource.


=head2 DriftInformation => L<Paws::CloudFormation::StackResourceDriftInformation>

  Information about whether the resource's actual configuration differs,
or has I<drifted>, from its expected configuration, as defined in the
stack template and any values specified as template parameters. For
more information, see Detecting Unregulated Configuration Changes to
Stacks and Resources
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).


=head2 B<REQUIRED> LogicalResourceId => Str

  The logical name of the resource specified in the template.


=head2 PhysicalResourceId => Str

  The name or unique identifier that corresponds to a physical instance
ID of a resource supported by AWS CloudFormation.


=head2 B<REQUIRED> ResourceStatus => Str

  Current status of the resource.


=head2 ResourceStatusReason => Str

  Success/failure message associated with the resource.


=head2 B<REQUIRED> ResourceType => Str

  Type of resource. (For more information, go to AWS Resource Types
Reference
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)
in the AWS CloudFormation User Guide.)


=head2 StackId => Str

  Unique identifier of the stack.


=head2 StackName => Str

  The name associated with the stack.


=head2 B<REQUIRED> Timestamp => Str

  Time the status was updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

