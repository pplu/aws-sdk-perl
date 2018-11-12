
package Paws::SimpleWorkflow::PollForActivityTask;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domain' , required => 1);
  has Identity => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identity' );
  has TaskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', traits => ['NameInRequest'], request_name => 'taskList' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PollForActivityTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::ActivityTask');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::PollForActivityTask - Arguments for method PollForActivityTask on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PollForActivityTask on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method PollForActivityTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PollForActivityTask.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    my $ActivityTask = $swf->PollForActivityTask(
      Domain   => 'MyDomainName',
      TaskList => {
        Name => 'MyName',    # min: 1, max: 256

      },
      Identity => 'MyIdentity',    # OPTIONAL
    );

    # Results:
    my $ActivityId        = $ActivityTask->ActivityId;
    my $ActivityType      = $ActivityTask->ActivityType;
    my $Input             = $ActivityTask->Input;
    my $StartedEventId    = $ActivityTask->StartedEventId;
    my $TaskToken         = $ActivityTask->TaskToken;
    my $WorkflowExecution = $ActivityTask->WorkflowExecution;

    # Returns a L<Paws::SimpleWorkflow::ActivityTask> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/PollForActivityTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the task lists being polled.



=head2 Identity => Str

Identity of the worker making the request, recorded in the
C<ActivityTaskStarted> event in the workflow history. This enables
diagnostic tracing when problems arise. The form of this identity is
user defined.



=head2 B<REQUIRED> TaskList => L<Paws::SimpleWorkflow::TaskList>

Specifies the task list to poll for activity tasks.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (C<\u0000-\u001f> | C<\u007f-\u009f>). Also, it must
not contain the literal string C<arn>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PollForActivityTask in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

