
package Paws::Connect::ListQueuesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Connect::Types qw/Connect_QueueSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has QueueSummaryList => (is => 'ro', isa => ArrayRef[Connect_QueueSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'QueueSummaryList' => {
                                       'type' => 'ArrayRef[Connect_QueueSummary]',
                                       'class' => 'Paws::Connect::QueueSummary'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListQueuesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 QueueSummaryList => ArrayRef[Connect_QueueSummary]

Information about the queues.


=head2 _request_id => Str


=cut

