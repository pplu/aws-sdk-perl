package Paws::CloudFormation::StackSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DeletionTime => (is => 'ro', isa => 'Str');
  has DriftInformation => (is => 'ro', isa => 'Paws::CloudFormation::StackDriftInformationSummary');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has ParentId => (is => 'ro', isa => 'Str');
  has RootId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackStatus => (is => 'ro', isa => 'Str', required => 1);
  has StackStatusReason => (is => 'ro', isa => 'Str');
  has TemplateDescription => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TemplateDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

The StackSummary Data Type

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  The time the stack was created.


=head2 DeletionTime => Str

  The time the stack was deleted.


=head2 DriftInformation => L<Paws::CloudFormation::StackDriftInformationSummary>

  Summarizes information on whether a stack's actual configuration
differs, or has I<drifted>, from it's expected configuration, as
defined in the stack template and any values specified as template
parameters. For more information, see Detecting Unregulated
Configuration Changes to Stacks and Resources
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).


=head2 LastUpdatedTime => Str

  The time the stack was last updated. This field will only be returned
if the stack has been updated at least once.


=head2 ParentId => Str

  For nested stacks--stacks created as resources for another stack--the
stack ID of the direct parent of this stack. For the first level of
nested stacks, the root stack is also the parent stack.

For more information, see Working with Nested Stacks
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html)
in the I<AWS CloudFormation User Guide>.


=head2 RootId => Str

  For nested stacks--stacks created as resources for another stack--the
stack ID of the the top-level stack to which the nested stack
ultimately belongs.

For more information, see Working with Nested Stacks
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html)
in the I<AWS CloudFormation User Guide>.


=head2 StackId => Str

  Unique stack identifier.


=head2 B<REQUIRED> StackName => Str

  The name associated with the stack.


=head2 B<REQUIRED> StackStatus => Str

  The current status of the stack.


=head2 StackStatusReason => Str

  Success/Failure message associated with the stack status.


=head2 TemplateDescription => Str

  The template description of the template used to create the stack.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

