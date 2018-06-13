
package Paws::Batch::DescribeJobQueues;
  use Moose;
  has JobQueues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'jobQueues');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJobQueues');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/describejobqueues');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::DescribeJobQueuesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::DescribeJobQueues - Arguments for method DescribeJobQueues on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeJobQueues on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method DescribeJobQueues.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeJobQueues.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    # To describe a job queue
    # This example describes the HighPriority job queue.
    my $DescribeJobQueuesResponse = $batch->DescribeJobQueues(
      {
        'JobQueues' => ['HighPriority']
      }
    );

    # Results:
    my $jobQueues = $DescribeJobQueuesResponse->jobQueues;

    # Returns a L<Paws::Batch::DescribeJobQueuesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/DescribeJobQueues>

=head1 ATTRIBUTES


=head2 JobQueues => ArrayRef[Str|Undef]

A list of up to 100 queue names or full queue Amazon Resource Name
(ARN) entries.



=head2 MaxResults => Int

The maximum number of results returned by C<DescribeJobQueues> in
paginated output. When this parameter is used, C<DescribeJobQueues>
only returns C<maxResults> results in a single page along with a
C<nextToken> response element. The remaining results of the initial
request can be seen by sending another C<DescribeJobQueues> request
with the returned C<nextToken> value. This value can be between 1 and
100. If this parameter is not used, then C<DescribeJobQueues> returns
up to 100 results and a C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<DescribeJobQueues> request where C<maxResults> was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the C<nextToken> value.
This value is C<null> when there are no more results to return.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeJobQueues in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

