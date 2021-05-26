
package Paws::Pinpoint::UpdateJourneyStateResponse;
  use Moose;
  has JourneyResponse => (is => 'ro', isa => 'Paws::Pinpoint::JourneyResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'JourneyResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateJourneyStateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JourneyResponse => L<Paws::Pinpoint::JourneyResponse>




=head2 _request_id => Str


=cut

