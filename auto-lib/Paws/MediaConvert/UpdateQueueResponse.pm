
package Paws::MediaConvert::UpdateQueueResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw/MediaConvert_Queue/;
  has Queue => (is => 'ro', isa => MediaConvert_Queue);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Queue' => {
                            'class' => 'Paws::MediaConvert::Queue',
                            'type' => 'MediaConvert_Queue'
                          }
             },
  'NameInRequest' => {
                       'Queue' => 'queue'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::UpdateQueueResponse

=head1 ATTRIBUTES


=head2 Queue => MediaConvert_Queue

You can use queues to manage the resources that are available to your
AWS account for running multiple transcoding jobs at the same time. If
you don't specify a queue, the service sends all jobs through the
default queue. For more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html.


=head2 _request_id => Str


=cut

