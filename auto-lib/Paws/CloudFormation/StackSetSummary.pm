package Paws::CloudFormation::StackSetSummary;
  use Moose;
  has AutoDeployment => (is => 'ro', isa => 'Paws::CloudFormation::AutoDeployment');
  has Description => (is => 'ro', isa => 'Str');
  has DriftStatus => (is => 'ro', isa => 'Str');
  has LastDriftCheckTimestamp => (is => 'ro', isa => 'Str');
  has PermissionModel => (is => 'ro', isa => 'Str');
  has StackSetId => (is => 'ro', isa => 'Str');
  has StackSetName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackSetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackSetSummary object:

  $service_obj->Method(Att1 => { AutoDeployment => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackSetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoDeployment

=head1 DESCRIPTION

The structures that contain summary information about the specified
stack set.

=head1 ATTRIBUTES


=head2 AutoDeployment => L<Paws::CloudFormation::AutoDeployment>

  [C<Service-managed> permissions] Describes whether StackSets
automatically deploys to AWS Organizations accounts that are added to a
target organizational unit (OU).


=head2 Description => Str

  A description of the stack set that you specify when the stack set is
created or updated.


=head2 DriftStatus => Str

  Status of the stack set's actual configuration compared to its expected
template and parameter configuration. A stack set is considered to have
drifted if one or more of its stack instances have drifted from their
expected template and parameter configuration.

=over

=item *

C<DRIFTED>: One or more of the stack instances belonging to the stack
set stack differs from the expected template and parameter
configuration. A stack instance is considered to have drifted if one or
more of the resources in the associated stack have drifted.

=item *

C<NOT_CHECKED>: AWS CloudFormation has not checked the stack set for
drift.

=item *

C<IN_SYNC>: All of the stack instances belonging to the stack set stack
match from the expected template and parameter configuration.

=item *

C<UNKNOWN>: This value is reserved for future use.

=back



=head2 LastDriftCheckTimestamp => Str

  Most recent time when CloudFormation performed a drift detection
operation on the stack set. This value will be C<NULL> for any stack
set on which drift detection has not yet been performed.


=head2 PermissionModel => Str

  Describes how the IAM roles required for stack set operations are
created.

=over

=item *

With C<self-managed> permissions, you must create the administrator and
execution roles required to deploy to target accounts. For more
information, see Grant Self-Managed Stack Set Permissions
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html).

=item *

With C<service-managed> permissions, StackSets automatically creates
the IAM roles required to deploy to accounts managed by AWS
Organizations. For more information, see Grant Service-Managed Stack
Set Permissions
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html).

=back



=head2 StackSetId => Str

  The ID of the stack set.


=head2 StackSetName => Str

  The name of the stack set.


=head2 Status => Str

  The status of the stack set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

