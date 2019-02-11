
package Paws::DataPipeline::ReportTaskProgress;
  use Moose;
  has Fields => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::Field]', traits => ['NameInRequest'], request_name => 'fields' );
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReportTaskProgress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::ReportTaskProgressOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ReportTaskProgress - Arguments for method ReportTaskProgress on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReportTaskProgress on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method ReportTaskProgress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReportTaskProgress.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    my $ReportTaskProgressOutput = $datapipeline->ReportTaskProgress(
      TaskId => 'MytaskId',
      Fields => [
        {
          Key         => 'MyfieldNameString',     # min: 1, max: 256
          RefValue    => 'MyfieldNameString',     # min: 1, max: 256
          StringValue => 'MyfieldStringValue',    # max: 10240; OPTIONAL
        },
        ...
      ],                                          # OPTIONAL
    );

    # Results:
    my $Canceled = $ReportTaskProgressOutput->Canceled;

    # Returns a L<Paws::DataPipeline::ReportTaskProgressOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/ReportTaskProgress>

=head1 ATTRIBUTES


=head2 Fields => ArrayRef[L<Paws::DataPipeline::Field>]

Key-value pairs that define the properties of the
ReportTaskProgressInput object.



=head2 B<REQUIRED> TaskId => Str

The ID of the task assigned to the task runner. This value is provided
in the response for PollForTask.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReportTaskProgress in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

