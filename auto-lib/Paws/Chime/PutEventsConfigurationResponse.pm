
package Paws::Chime::PutEventsConfigurationResponse;
  use Moose;
  has EventsConfiguration => (is => 'ro', isa => 'Paws::Chime::EventsConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PutEventsConfigurationResponse

=head1 ATTRIBUTES


=head2 EventsConfiguration => L<Paws::Chime::EventsConfiguration>




=head2 _request_id => Str


=cut

