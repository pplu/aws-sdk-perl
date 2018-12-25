package Paws::CloudFormation::StackResourceDrift;
  use Moose;
  has ActualProperties => (is => 'ro', isa => 'Str');
  has ExpectedProperties => (is => 'ro', isa => 'Str');
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has PhysicalResourceIdContext => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::PhysicalResourceIdContextKeyValuePair]');
  has PropertyDifferences => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::PropertyDifference]');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has StackResourceDriftStatus => (is => 'ro', isa => 'Str', required => 1);
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackResourceDrift

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackResourceDrift object:

  $service_obj->Method(Att1 => { ActualProperties => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackResourceDrift object:

  $result = $service_obj->Method(...);
  $result->Att1->ActualProperties

=head1 DESCRIPTION

Contains the drift information for a resource that has been checked for
drift. This includes actual and expected property values for resources
in which AWS CloudFormation has detected drift. Only resource
properties explicitly defined in the stack template are checked for
drift. For more information, see Detecting Unregulated Configuration
Changes to Stacks and Resources
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

Resources that do not currently support drift detection cannot be
checked. For a list of resources that support drift detection, see
Resources that Support Drift Detection
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).

Use DetectStackResourceDrift to detect drift on individual resources,
or DetectStackDrift to detect drift on all resources in a given stack
that support drift detection.

=head1 ATTRIBUTES


=head2 ActualProperties => Str

  A JSON structure containing the actual property values of the stack
resource.

For resources whose C<StackResourceDriftStatus> is C<DELETED>, this
structure will not be present.


=head2 ExpectedProperties => Str

  A JSON structure containing the expected property values of the stack
resource, as defined in the stack template and any values specified as
template parameters.

For resources whose C<StackResourceDriftStatus> is C<DELETED>, this
structure will not be present.


=head2 B<REQUIRED> LogicalResourceId => Str

  The logical name of the resource specified in the template.


=head2 PhysicalResourceId => Str

  The name or unique identifier that corresponds to a physical instance
ID of a resource supported by AWS CloudFormation.


=head2 PhysicalResourceIdContext => ArrayRef[L<Paws::CloudFormation::PhysicalResourceIdContextKeyValuePair>]

  Context information that enables AWS CloudFormation to uniquely
identify a resource. AWS CloudFormation uses context key-value pairs in
cases where a resource's logical and physical IDs are not enough to
uniquely identify that resource. Each context key-value pair specifies
a unique resource that contains the targeted resource.


=head2 PropertyDifferences => ArrayRef[L<Paws::CloudFormation::PropertyDifference>]

  A collection of the resource properties whose actual values differ from
their expected values. These will be present only for resources whose
C<StackResourceDriftStatus> is C<MODIFIED>.


=head2 B<REQUIRED> ResourceType => Str

  The type of the resource.


=head2 B<REQUIRED> StackId => Str

  The ID of the stack.


=head2 B<REQUIRED> StackResourceDriftStatus => Str

  Status of the resource's actual configuration compared to its expected
configuration

=over

=item *

C<DELETED>: The resource differs from its expected template
configuration because the resource has been deleted.

=item *

C<MODIFIED>: One or more resource properties differ from their expected
values (as defined in the stack template and any values specified as
template parameters).

=item *

C<IN_SYNC>: The resources's actual configuration matches its expected
template configuration.

=item *

C<NOT_CHECKED>: AWS CloudFormation does not currently return this
value.

=back



=head2 B<REQUIRED> Timestamp => Str

  Time at which AWS CloudFormation performed drift detection on the stack
resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

