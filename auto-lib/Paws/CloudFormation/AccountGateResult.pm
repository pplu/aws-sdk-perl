package Paws::CloudFormation::AccountGateResult;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::AccountGateResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::AccountGateResult object:

  $service_obj->Method(Att1 => { Status => $value, ..., StatusReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::AccountGateResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

Structure that contains the results of the account gate function which
AWS CloudFormation invokes, if present, before proceeding with a stack
set operation in an account and region.

For each account and region, AWS CloudFormation lets you specify a
Lamdba function that encapsulates any requirements that must be met
before CloudFormation can proceed with a stack set operation in that
account and region. CloudFormation invokes the function each time a
stack set operation is requested for that account and region; if the
function returns C<FAILED>, CloudFormation cancels the operation in
that account and region, and sets the stack set operation result status
for that account and region to C<FAILED>.

For more information, see Configuring a target account gate
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-account-gating.html).

=head1 ATTRIBUTES


=head2 Status => Str

  The status of the account gate function.

=over

=item *

C<SUCCEEDED>: The account gate function has determined that the account
and region passes any requirements for a stack set operation to occur.
AWS CloudFormation proceeds with the stack operation in that account
and region.

=item *

C<FAILED>: The account gate function has determined that the account
and region does not meet the requirements for a stack set operation to
occur. AWS CloudFormation cancels the stack set operation in that
account and region, and sets the stack set operation result status for
that account and region to C<FAILED>.

=item *

C<SKIPPED>: AWS CloudFormation has skipped calling the account gate
function for this account and region, for one of the following reasons:

=over

=item *

An account gate function has not been specified for the account and
region. AWS CloudFormation proceeds with the stack set operation in
this account and region.

=item *

The C<AWSCloudFormationStackSetExecutionRole> of the stack set
adminstration account lacks permissions to invoke the function. AWS
CloudFormation proceeds with the stack set operation in this account
and region.

=item *

Either no action is necessary, or no action is possible, on the stack.
AWS CloudFormation skips the stack set operation in this account and
region.

=back

=back



=head2 StatusReason => Str

  The reason for the account gate status assigned to this account and
region for the stack set operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

