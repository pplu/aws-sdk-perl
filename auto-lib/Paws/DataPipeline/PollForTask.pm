
package Paws::DataPipeline::PollForTask;
  use Moose;
  has Hostname => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hostname' );
  has InstanceIdentity => (is => 'ro', isa => 'Paws::DataPipeline::InstanceIdentity', traits => ['NameInRequest'], request_name => 'instanceIdentity' );
  has WorkerGroup => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workerGroup' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PollForTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::PollForTaskOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::PollForTask - Arguments for method PollForTask on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PollForTask on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method PollForTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PollForTask.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    my $PollForTaskOutput = $datapipeline->PollForTask(
      WorkerGroup      => 'Mystring',
      Hostname         => 'Myid',       # OPTIONAL
      InstanceIdentity => {
        Document  => 'Mystring',        # max: 1024
        Signature => 'Mystring',        # max: 1024
      },    # OPTIONAL
    );

    # Results:
    my $TaskObject = $PollForTaskOutput->TaskObject;

    # Returns a L<Paws::DataPipeline::PollForTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/PollForTask>

=head1 ATTRIBUTES


=head2 Hostname => Str

The public DNS name of the calling task runner.



=head2 InstanceIdentity => L<Paws::DataPipeline::InstanceIdentity>

Identity information for the EC2 instance that is hosting the task
runner. You can get this value from the instance using
C<http://169.254.169.254/latest/meta-data/instance-id>. For more
information, see Instance Metadata
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html)
in the I<Amazon Elastic Compute Cloud User Guide.> Passing in this
value proves that your task runner is running on an EC2 instance, and
ensures the proper AWS Data Pipeline service charges are applied to
your pipeline.



=head2 B<REQUIRED> WorkerGroup => Str

The type of task the task runner is configured to accept and process.
The worker group is set as a field on objects in the pipeline when they
are created. You can only specify a single value for C<workerGroup> in
the call to C<PollForTask>. There are no wildcard values permitted in
C<workerGroup>; the string must be an exact, case-sensitive, match.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PollForTask in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

