
package Paws::DataPipeline::SetTaskStatus;
  use Moose;
  has ErrorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorId' );
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage' );
  has ErrorStackTrace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorStackTrace' );
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId' , required => 1);
  has TaskStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskStatus' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetTaskStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::SetTaskStatusOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::SetTaskStatus - Arguments for method SetTaskStatus on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetTaskStatus on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method SetTaskStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetTaskStatus.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    my $SetTaskStatusOutput = $datapipeline->SetTaskStatus(
      TaskId          => 'MytaskId',
      TaskStatus      => 'FINISHED',
      ErrorId         => 'Mystring',          # OPTIONAL
      ErrorMessage    => 'MyerrorMessage',    # OPTIONAL
      ErrorStackTrace => 'Mystring',          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/SetTaskStatus>

=head1 ATTRIBUTES


=head2 ErrorId => Str

If an error occurred during the task, this value specifies the error
code. This value is set on the physical attempt object. It is used to
display error information to the user. It should not start with string
"Service_" which is reserved by the system.



=head2 ErrorMessage => Str

If an error occurred during the task, this value specifies a text
description of the error. This value is set on the physical attempt
object. It is used to display error information to the user. The web
service does not parse this value.



=head2 ErrorStackTrace => Str

If an error occurred during the task, this value specifies the stack
trace associated with the error. This value is set on the physical
attempt object. It is used to display error information to the user.
The web service does not parse this value.



=head2 B<REQUIRED> TaskId => Str

The ID of the task assigned to the task runner. This value is provided
in the response for PollForTask.



=head2 B<REQUIRED> TaskStatus => Str

If C<FINISHED>, the task successfully completed. If C<FAILED>, the task
ended unsuccessfully. Preconditions use false.

Valid values are: C<"FINISHED">, C<"FAILED">, C<"FALSE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetTaskStatus in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

