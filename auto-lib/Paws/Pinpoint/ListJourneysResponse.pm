
package Paws::Pinpoint::ListJourneysResponse;
  use Moose;
  has JourneysResponse => (is => 'ro', isa => 'Paws::Pinpoint::JourneysResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'JourneysResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ListJourneysResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JourneysResponse => L<Paws::Pinpoint::JourneysResponse>




=head2 _request_id => Str


=cut

