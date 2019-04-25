
package Paws::DataPipeline::ReportTaskRunnerHeartbeat;
  use Moose;
  has Hostname => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hostname' );
  has TaskrunnerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskrunnerId' , required => 1);
  has WorkerGroup => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workerGroup' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReportTaskRunnerHeartbeat');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::ReportTaskRunnerHeartbeatOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ReportTaskRunnerHeartbeat - Arguments for method ReportTaskRunnerHeartbeat on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReportTaskRunnerHeartbeat on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method ReportTaskRunnerHeartbeat.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReportTaskRunnerHeartbeat.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    my $ReportTaskRunnerHeartbeatOutput =
      $datapipeline->ReportTaskRunnerHeartbeat(
      TaskrunnerId => 'Myid',
      Hostname     => 'Myid',        # OPTIONAL
      WorkerGroup  => 'Mystring',    # OPTIONAL
      );

    # Results:
    my $Terminate = $ReportTaskRunnerHeartbeatOutput->Terminate;

    # Returns a L<Paws::DataPipeline::ReportTaskRunnerHeartbeatOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/ReportTaskRunnerHeartbeat>

=head1 ATTRIBUTES


=head2 Hostname => Str

The public DNS name of the task runner.



=head2 B<REQUIRED> TaskrunnerId => Str

The ID of the task runner. This value should be unique across your AWS
account. In the case of AWS Data Pipeline Task Runner launched on a
resource managed by AWS Data Pipeline, the web service provides a
unique identifier when it launches the application. If you have written
a custom task runner, you should assign a unique identifier for the
task runner.



=head2 WorkerGroup => Str

The type of task the task runner is configured to accept and process.
The worker group is set as a field on objects in the pipeline when they
are created. You can only specify a single value for C<workerGroup>.
There are no wildcard values permitted in C<workerGroup>; the string
must be an exact, case-sensitive, match.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReportTaskRunnerHeartbeat in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

