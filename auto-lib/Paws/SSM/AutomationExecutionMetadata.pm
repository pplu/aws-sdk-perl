package Paws::SSM::AutomationExecutionMetadata;
  use Moose;
  has AutomationExecutionId => (is => 'ro', isa => 'Str');
  has AutomationExecutionStatus => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has ExecutedBy => (is => 'ro', isa => 'Str');
  has ExecutionEndTime => (is => 'ro', isa => 'Str');
  has ExecutionStartTime => (is => 'ro', isa => 'Str');
  has LogFile => (is => 'ro', isa => 'Str');
  has Outputs => (is => 'ro', isa => 'Paws::SSM::AutomationParameterMap');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AutomationExecutionMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::AutomationExecutionMetadata object:

  $service_obj->Method(Att1 => { AutomationExecutionId => $value, ..., Outputs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::AutomationExecutionMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->AutomationExecutionId

=head1 DESCRIPTION

Details about a specific Automation execution.

=head1 ATTRIBUTES


=head2 AutomationExecutionId => Str

  The execution ID.


=head2 AutomationExecutionStatus => Str

  The status of the execution. Valid values include: Running, Succeeded,
Failed, Timed out, or Cancelled.


=head2 DocumentName => Str

  The name of the Automation document used during execution.


=head2 DocumentVersion => Str

  The document version used during the execution.


=head2 ExecutedBy => Str

  The IAM role ARN of the user who executed the Automation.


=head2 ExecutionEndTime => Str

  The time the execution finished. This is not populated if the execution
is still in progress.


=head2 ExecutionStartTime => Str

  The time the execution started.E<gt>


=head2 LogFile => Str

  An Amazon S3 bucket where execution information is stored.


=head2 Outputs => L<Paws::SSM::AutomationParameterMap>

  The list of execution outputs as defined in the Automation document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

