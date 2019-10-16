
package Paws::SQS::GetQueueUrlResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SQS::Types qw//;
  has QueueUrl => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'QueueUrl' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::GetQueueUrlResult

=head1 ATTRIBUTES


=head2 QueueUrl => Str

The URL of the queue.


=head2 _request_id => Str


=cut

