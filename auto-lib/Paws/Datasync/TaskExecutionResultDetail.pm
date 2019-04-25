package Paws::Datasync::TaskExecutionResultDetail;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorDetail => (is => 'ro', isa => 'Str');
  has PrepareDuration => (is => 'ro', isa => 'Int');
  has PrepareStatus => (is => 'ro', isa => 'Str');
  has TransferDuration => (is => 'ro', isa => 'Int');
  has TransferStatus => (is => 'ro', isa => 'Str');
  has VerifyDuration => (is => 'ro', isa => 'Int');
  has VerifyStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::TaskExecutionResultDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::TaskExecutionResultDetail object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., VerifyStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::TaskExecutionResultDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Describes the detailed result of a C<TaskExecution> operation. This
result includes the time in milliseconds spent in each phase, the
status of the task execution, and the errors encountered.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  Errors that AWS DataSync encountered during execution of the task. You
can use this error code to help troubleshoot issues.


=head2 ErrorDetail => Str

  Detailed description of an error that was encountered during the task
execution. You can use this information to help troubleshoot issues.


=head2 PrepareDuration => Int

  The total time in milliseconds that AWS DataSync spent in the PREPARING
phase.


=head2 PrepareStatus => Str

  The status of the PREPARING phase.


=head2 TransferDuration => Int

  The total time in milliseconds that AWS DataSync spent in the
TRANSFERRING phase.


=head2 TransferStatus => Str

  The status of the TRANSFERRING Phase.


=head2 VerifyDuration => Int

  The total time in milliseconds that AWS DataSync spent in the VERIFYING
phase.


=head2 VerifyStatus => Str

  The status of the VERIFYING Phase.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

