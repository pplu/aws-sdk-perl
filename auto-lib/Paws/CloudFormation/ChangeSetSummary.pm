package Paws::CloudFormation::ChangeSetSummary;
  use Moose;
  has ChangeSetId => (is => 'ro', isa => 'Str');
  has ChangeSetName => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionStatus => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ChangeSetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::ChangeSetSummary object:

  $service_obj->Method(Att1 => { ChangeSetId => $value, ..., StatusReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::ChangeSetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ChangeSetId

=head1 DESCRIPTION

The C<ChangeSetSummary> structure describes a change set, its status,
and the stack with which it's associated.

=head1 ATTRIBUTES


=head2 ChangeSetId => Str

  The ID of the change set.


=head2 ChangeSetName => Str

  The name of the change set.


=head2 CreationTime => Str

  The start time when the change set was created, in UTC.


=head2 Description => Str

  Descriptive information about the change set.


=head2 ExecutionStatus => Str

  If the change set execution status is C<AVAILABLE>, you can execute the
change set. If you canE<rsquo>t execute the change set, the status
indicates why. For example, a change set might be in an C<UNAVAILABLE>
state because AWS CloudFormation is still creating it or in an
C<OBSOLETE> state because the stack was already updated.


=head2 StackId => Str

  The ID of the stack with which the change set is associated.


=head2 StackName => Str

  The name of the stack with which the change set is associated.


=head2 Status => Str

  The state of the change set, such as C<CREATE_IN_PROGRESS>,
C<CREATE_COMPLETE>, or C<FAILED>.


=head2 StatusReason => Str

  A description of the change set's status. For example, if your change
set is in the C<FAILED> state, AWS CloudFormation shows the error
message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

