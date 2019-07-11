
package Paws::MediaConvert::CreateQueueResponse;
  use Moose;
  has Queue => (is => 'ro', isa => 'Paws::MediaConvert::Queue', traits => ['NameInRequest'], request_name => 'queue');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CreateQueueResponse

=head1 ATTRIBUTES


=head2 Queue => L<Paws::MediaConvert::Queue>

You can use queues to manage the resources that are available to your
AWS account for running multiple transcoding jobs at the same time. If
you don't specify a queue, the service sends all jobs through the
default queue. For more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html.


=head2 _request_id => Str


=cut

