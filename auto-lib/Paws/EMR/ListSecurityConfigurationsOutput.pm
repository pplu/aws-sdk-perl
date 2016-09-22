
package Paws::EMR::ListSecurityConfigurationsOutput;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has SecurityConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::EMR::SecurityConfigurationSummary]');


### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListSecurityConfigurationsOutput

=head1 ATTRIBUTES


=head2 Marker => Str

A pagination token that indicates the next set of results to retrieve.
Include the marker in the next ListSecurityConfiguration call to
retrieve the next page of results, if required.



=head2 SecurityConfigurations => ArrayRef[L<Paws::EMR::SecurityConfigurationSummary>]

The creation date and time, and name, of each security configuration.




=cut

1;