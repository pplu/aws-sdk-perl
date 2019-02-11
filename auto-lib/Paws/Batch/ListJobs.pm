
package Paws::Batch::ListJobs;
  use Moose;
  has ArrayJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arrayJobId');
  has JobQueue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobQueue');
  has JobStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobStatus');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has MultiNodeJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'multiNodeJobId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/listjobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::ListJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ListJobs - Arguments for method ListJobs on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobs on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method ListJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobs.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    # To list running jobs
    # This example lists the running jobs in the HighPriority job queue.
    my $ListJobsResponse = $batch->ListJobs(
      {
        'JobQueue' => 'HighPriority'
      }
    );

    # Results:
    my $jobSummaryList = $ListJobsResponse->jobSummaryList;

    # Returns a L<Paws::Batch::ListJobsResponse> object.
    # To list submitted jobs
    # This example lists jobs in the HighPriority job queue that are in the
    # SUBMITTED job status.
    my $ListJobsResponse = $batch->ListJobs(
      {
        'JobQueue'  => 'HighPriority',
        'JobStatus' => 'SUBMITTED'
      }
    );

    # Results:
    my $jobSummaryList = $ListJobsResponse->jobSummaryList;

    # Returns a L<Paws::Batch::ListJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/ListJobs>

=head1 ATTRIBUTES


=head2 ArrayJobId => Str

The job ID for an array job. Specifying an array job ID with this
parameter lists all child jobs from within the specified array.



=head2 JobQueue => Str

The name or full Amazon Resource Name (ARN) of the job queue with which
to list jobs.



=head2 JobStatus => Str

The job status with which to filter jobs in the specified queue. If you
do not specify a status, only C<RUNNING> jobs are returned.

Valid values are: C<"SUBMITTED">, C<"PENDING">, C<"RUNNABLE">, C<"STARTING">, C<"RUNNING">, C<"SUCCEEDED">, C<"FAILED">

=head2 MaxResults => Int

The maximum number of results returned by C<ListJobs> in paginated
output. When this parameter is used, C<ListJobs> only returns
C<maxResults> results in a single page along with a C<nextToken>
response element. The remaining results of the initial request can be
seen by sending another C<ListJobs> request with the returned
C<nextToken> value. This value can be between 1 and 100. If this
parameter is not used, then C<ListJobs> returns up to 100 results and a
C<nextToken> value if applicable.



=head2 MultiNodeJobId => Str

The job ID for a multi-node parallel job. Specifying a multi-node
parallel job ID with this parameter lists all nodes that are associated
with the specified job.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated C<ListJobs>
request where C<maxResults> was used and the results exceeded the value
of that parameter. Pagination continues from the end of the previous
results that returned the C<nextToken> value. This value is C<null>
when there are no more results to return.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobs in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

