
package Paws::Pinpoint::GetSegmentsResponse;
  use Moose;
  has SegmentsResponse => (is => 'ro', isa => 'Paws::Pinpoint::SegmentsResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'SegmentsResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetSegmentsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SegmentsResponse => L<Paws::Pinpoint::SegmentsResponse>




=head2 _request_id => Str


=cut

