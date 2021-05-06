
package Paws::IoT::ListDomainConfigurationsResponse;
  use Moose;
  has DomainConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::IoT::DomainConfigurationSummary]', traits => ['NameInRequest'], request_name => 'domainConfigurations');
  has NextMarker => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextMarker');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListDomainConfigurationsResponse

=head1 ATTRIBUTES


=head2 DomainConfigurations => ArrayRef[L<Paws::IoT::DomainConfigurationSummary>]

A list of objects that contain summary information about the user's
domain configurations.


=head2 NextMarker => Str

The marker for the next set of results.


=head2 _request_id => Str


=cut

