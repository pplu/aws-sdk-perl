
package Paws::Chime::GetAppInstanceStreamingConfigurationsResponse;
  use Moose;
  has AppInstanceStreamingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Chime::AppInstanceStreamingConfiguration]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetAppInstanceStreamingConfigurationsResponse

=head1 ATTRIBUTES


=head2 AppInstanceStreamingConfigurations => ArrayRef[L<Paws::Chime::AppInstanceStreamingConfiguration>]

The streaming settings.


=head2 _request_id => Str


=cut

