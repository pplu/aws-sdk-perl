
package Paws::Pinpoint::DeleteEventStreamResponse;
  use Moose;
  has EventStream => (is => 'ro', isa => 'Paws::Pinpoint::EventStream', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EventStream');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DeleteEventStreamResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventStream => L<Paws::Pinpoint::EventStream>




=head2 _request_id => Str


=cut

