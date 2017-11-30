
package Paws::MediaConvert::UpdateQueueResponse;
  use Moose;
  has Queue => (is => 'ro', isa => 'Paws::MediaConvert::Queue', traits => ['NameInRequest'], request_name => 'queue');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::UpdateQueueResponse

=head1 ATTRIBUTES


=head2 Queue => L<Paws::MediaConvert::Queue>




=head2 _request_id => Str


=cut

