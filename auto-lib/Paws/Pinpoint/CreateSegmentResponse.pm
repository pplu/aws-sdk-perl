
package Paws::Pinpoint::CreateSegmentResponse;
  use Moose;
  has SegmentResponse => (is => 'ro', isa => 'Paws::Pinpoint::SegmentResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'SegmentResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateSegmentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SegmentResponse => L<Paws::Pinpoint::SegmentResponse>




=head2 _request_id => Str


=cut

