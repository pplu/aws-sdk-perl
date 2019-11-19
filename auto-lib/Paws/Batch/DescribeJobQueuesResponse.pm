
package Paws::Batch::DescribeJobQueuesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Batch::Types qw/Batch_JobQueueDetail/;
  has JobQueues => (is => 'ro', isa => ArrayRef[Batch_JobQueueDetail]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'JobQueues' => {
                                'type' => 'ArrayRef[Batch_JobQueueDetail]',
                                'class' => 'Paws::Batch::JobQueueDetail'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'JobQueues' => 'jobQueues'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::DescribeJobQueuesResponse

=head1 ATTRIBUTES


=head2 JobQueues => ArrayRef[Batch_JobQueueDetail]

The list of job queues.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<DescribeJobQueues>
request. When the results of a C<DescribeJobQueues> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 _request_id => Str


=cut

