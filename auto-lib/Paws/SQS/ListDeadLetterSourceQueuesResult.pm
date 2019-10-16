
package Paws::SQS::ListDeadLetterSourceQueuesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::SQS::Types qw//;
  has QueueUrls => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'QueueUrls' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'QueueUrls' => 'QueueUrl'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ListDeadLetterSourceQueuesResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueueUrls => ArrayRef[Str|Undef]

A list of source queue URLs that have the C<RedrivePolicy> queue
attribute configured with a dead-letter queue.


=head2 _request_id => Str


=cut

