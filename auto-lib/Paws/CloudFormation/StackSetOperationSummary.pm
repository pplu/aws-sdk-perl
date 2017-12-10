package Paws::CloudFormation::StackSetOperationSummary;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has EndTimestamp => (is => 'ro', isa => 'Str');
  has OperationId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackSetOperationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackSetOperationSummary object:

  $service_obj->Method(Att1 => { Action => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackSetOperationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

The structures that contain summary information about the specified
operation.

=head1 ATTRIBUTES


=head2 Action => Str

  The type of operation: C<CREATE>, C<UPDATE>, or C<DELETE>. Create and
delete operations affect only the specified stack instances that are
associated with the specified stack set. Update operations affect both
the stack set itself as well as I<all> associated stack set instances.


=head2 CreationTimestamp => Str

  The time at which the operation was initiated. Note that the creation
times for the stack set operation might differ from the creation time
of the individual stacks themselves. This is because AWS CloudFormation
needs to perform preparatory work for the operation, such as
dispatching the work to the requested regions, before actually creating
the first stacks.


=head2 EndTimestamp => Str

  The time at which the stack set operation ended, across all accounts
and regions specified. Note that this doesn't necessarily mean that the
stack set operation was successful, or even attempted, in each account
or region.


=head2 OperationId => Str

  The unique ID of the stack set operation.


=head2 Status => Str

  The overall status of the operation.

=over

=item *

C<FAILED>: The operation exceeded the specified failure tolerance. The
failure tolerance value that you've set for an operation is applied for
each region during stack create and update operations. If the number of
failed stacks within a region exceeds the failure tolerance, the status
of the operation in the region is set to C<FAILED>. This in turn sets
the status of the operation as a whole to C<FAILED>, and AWS
CloudFormation cancels the operation in any remaining regions.

=item *

C<RUNNING>: The operation is currently being performed.

=item *

C<STOPPED>: The user has cancelled the operation.

=item *

C<STOPPING>: The operation is in the process of stopping, at user
request.

=item *

C<SUCCEEDED>: The operation completed creating or updating all the
specified stacks without exceeding the failure tolerance for the
operation.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

