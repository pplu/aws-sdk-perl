
package Paws::MediaConvert::ListQueuesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaConvert::Types qw/MediaConvert_Queue/;
  has NextToken => (is => 'ro', isa => Str);
  has Queues => (is => 'ro', isa => ArrayRef[MediaConvert_Queue]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Queues' => 'queues'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Queues' => {
                             'type' => 'ArrayRef[MediaConvert_Queue]',
                             'class' => 'Paws::MediaConvert::Queue'
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

Paws::MediaConvert::ListQueuesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Use this string to request the next batch of queues.


=head2 Queues => ArrayRef[MediaConvert_Queue]

List of queues.


=head2 _request_id => Str


=cut

