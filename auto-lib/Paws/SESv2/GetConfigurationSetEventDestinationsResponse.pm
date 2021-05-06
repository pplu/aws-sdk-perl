
package Paws::SESv2::GetConfigurationSetEventDestinationsResponse;
  use Moose;
  has EventDestinations => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::EventDestination]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetConfigurationSetEventDestinationsResponse

=head1 ATTRIBUTES


=head2 EventDestinations => ArrayRef[L<Paws::SESv2::EventDestination>]

An array that includes all of the events destinations that have been
configured for the configuration set.


=head2 _request_id => Str


=cut

