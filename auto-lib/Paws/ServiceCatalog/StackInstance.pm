package Paws::ServiceCatalog::StackInstance;
  use Moose;
  has Account => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has StackInstanceStatus => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::StackInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::StackInstance object:

  $service_obj->Method(Att1 => { Account => $value, ..., StackInstanceStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::StackInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->Account

=head1 DESCRIPTION

An AWS CloudFormation stack, in a specific account and region, that's
part of a stack set operation. A stack instance is a reference to an
attempted or actual stack in a given account within a given region. A
stack instance can exist without a stackE<mdash>for example, if the
stack couldn't be created for some reason. A stack instance is
associated with only one stack set. Each stack instance contains the ID
of its associated stack set, as well as the ID of the actual stack and
the stack status.

=head1 ATTRIBUTES


=head2 Account => Str

  The name of the AWS account that the stack instance is associated with.


=head2 Region => Str

  The name of the AWS region that the stack instance is associated with.


=head2 StackInstanceStatus => Str

  The status of the stack instance, in terms of its synchronization with
its associated stack set.

=over

=item *

C<INOPERABLE>: A C<DeleteStackInstances> operation has failed and left
the stack in an unstable state. Stacks in this state are excluded from
further C<UpdateStackSet> operations. You might need to perform a
C<DeleteStackInstances> operation, with C<RetainStacks> set to true, to
delete the stack instance, and then delete the stack manually.

=item *

C<OUTDATED>: The stack isn't currently up to date with the stack set
because either the associated stack failed during a C<CreateStackSet>
or C<UpdateStackSet> operation, or the stack was part of a
C<CreateStackSet> or C<UpdateStackSet> operation that failed or was
stopped before the stack was created or updated.

=item *

C<CURRENT>: The stack is currently up to date with the stack set.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

