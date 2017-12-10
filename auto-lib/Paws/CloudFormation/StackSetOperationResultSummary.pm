package Paws::CloudFormation::StackSetOperationResultSummary;
  use Moose;
  has Account => (is => 'ro', isa => 'Str');
  has AccountGateResult => (is => 'ro', isa => 'Paws::CloudFormation::AccountGateResult');
  has Region => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackSetOperationResultSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackSetOperationResultSummary object:

  $service_obj->Method(Att1 => { Account => $value, ..., StatusReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackSetOperationResultSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Account

=head1 DESCRIPTION

The structure that contains information about a specified operation's
results for a given account in a given region.

=head1 ATTRIBUTES


=head2 Account => Str

  The name of the AWS account for this operation result.


=head2 AccountGateResult => L<Paws::CloudFormation::AccountGateResult>

  The results of the account gate function AWS CloudFormation invokes, if
present, before proceeding with stack set operations in an account


=head2 Region => Str

  The name of the AWS region for this operation result.


=head2 Status => Str

  The result status of the stack set operation for the given account in
the given region.

=over

=item *

C<CANCELLED>: The operation in the specified account and region has
been cancelled. This is either because a user has stopped the stack set
operation, or because the failure tolerance of the stack set operation
has been exceeded.

=item *

C<FAILED>: The operation in the specified account and region failed.

If the stack set operation fails in enough accounts within a region,
the failure tolerance for the stack set operation as a whole might be
exceeded.

=item *

C<RUNNING>: The operation in the specified account and region is
currently in progress.

=item *

C<PENDING>: The operation in the specified account and region has yet
to start.

=item *

C<SUCCEEDED>: The operation in the specified account and region
completed successfully.

=back



=head2 StatusReason => Str

  The reason for the assigned result status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

