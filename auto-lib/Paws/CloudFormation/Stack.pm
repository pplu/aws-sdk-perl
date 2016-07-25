package Paws::CloudFormation::Stack;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has DisableRollback => (is => 'ro', isa => 'Bool');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str]');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Output]');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackStatus => (is => 'ro', isa => 'Str', required => 1);
  has StackStatusReason => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TimeoutInMinutes => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::Stack

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::Stack object:

  $service_obj->Method(Att1 => { Capabilities => $value, ..., TimeoutInMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::Stack object:

  $result = $service_obj->Method(...);
  $result->Att1->Capabilities

=head1 DESCRIPTION

The Stack data type.

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str]

  The capabilities allowed in the stack.


=head2 B<REQUIRED> CreationTime => Str

  The time at which the stack was created.


=head2 Description => Str

  A user-defined description associated with the stack.


=head2 DisableRollback => Bool

  Boolean to enable or disable rollback on stack creation failures:

=over

=item *

C<true>: disable rollback

=item *

C<false>: enable rollback

=back



=head2 LastUpdatedTime => Str

  The time the stack was last updated. This field will only be returned
if the stack has been updated at least once.


=head2 NotificationARNs => ArrayRef[Str]

  SNS topic ARNs to which stack related events are published.


=head2 Outputs => ArrayRef[L<Paws::CloudFormation::Output>]

  A list of output structures.


=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

  A list of C<Parameter> structures.


=head2 StackId => Str

  Unique identifier of the stack.


=head2 B<REQUIRED> StackName => Str

  The name associated with the stack.


=head2 B<REQUIRED> StackStatus => Str

  Current status of the stack.


=head2 StackStatusReason => Str

  Success/failure message associated with the stack status.


=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

  A list of C<Tag>s that specify information about the stack.


=head2 TimeoutInMinutes => Int

  The amount of time within which stack creation should complete.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

