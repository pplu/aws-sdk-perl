
package Paws::Discovery::GetConfigurationAttributesResponse;
  use Moose;
  has Configurations => (is => 'ro', isa => 'Paws::Discovery::ConfigIdAttributesMap', traits => ['Unwrapped'], xmlname => 'configurations' );


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::GetConfigurationAttributesResponse

=head1 ATTRIBUTES


=head2 Configurations => L<Paws::Discovery::ConfigIdAttributesMap>

Returns configuration details, including the configuration ID,
attribute names, and attribute values.




=cut

1;