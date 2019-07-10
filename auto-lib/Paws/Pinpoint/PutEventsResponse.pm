
package Paws::Pinpoint::PutEventsResponse;
  use Moose;
  has EventsResponse => (is => 'ro', isa => 'Paws::Pinpoint::EventsResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EventsResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::PutEventsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventsResponse => L<Paws::Pinpoint::EventsResponse>




=head2 _request_id => Str


=cut

