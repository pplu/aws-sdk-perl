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

Structure that contains the results of the account gate function AWS
CloudFormation StackSets invokes, if present, before proceeding with
stack set operations in an account.

Account gating enables you to specify a Lamdba function for an account
that encapsulates any requirements that must be met before AWS
CloudFormation StackSets proceeds with stack set operations in that
account. CloudFormation invokes the function each time stack set
operations are initiated for that account, and only proceeds if the
function returns a success code.

=head1 ATTRIBUTES


=head2 Status => Str

  The status of the account gate function.

=over

=item *

C<SUCCEEDED>: The account gate function has determined that the account
passes any requirements for stack set operations to occur. AWS
CloudFormation proceeds with stack operations in the account.

=item *

C<FAILED>: The account gate function has determined that the account
does not meet the requirements for stack set operations to occur. AWS
CloudFormation cancels the stack set operations in that account, and
the stack set operation status is set to FAILED.

=item *

C<SKIPPED>: An account gate function has not been specified for the
account, or the AWSCloudFormationStackSetExecutionRole of the stack set
adminstration account lacks permissions to invoke the function. AWS
CloudFormation proceeds with stack set operations in the account.

=back



=head2 StatusReason => Str

  The reason for the account gate status assigned to this account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

