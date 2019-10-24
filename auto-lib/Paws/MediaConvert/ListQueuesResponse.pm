
package Paws::MediaConvert::ListQueuesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaConvert::Types qw/MediaConvert_Queue/;
  has NextToken => (is => 'ro', isa => Str);
  has Queues => (is => 'ro', isa => ArrayRef[MediaConvert_Queue]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Queues' => {
                             'class' => 'Paws::MediaConvert::Queue',
                             'type' => 'ArrayRef[MediaConvert_Queue]'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Queues' => 'queues',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ListQueuesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Use this string to request the next batch of queues.


=head2 Queues => ArrayRef[MediaConvert_Queue]

List of queues.


=head2 _request_id => Str


=cut

