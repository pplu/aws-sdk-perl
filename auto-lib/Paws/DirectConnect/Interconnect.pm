
package Paws::DirectConnect::Interconnect;
  use Moose;
  has Bandwidth => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bandwidth' );
  has InterconnectId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'interconnectId' );
  has InterconnectName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'interconnectName' );
  has InterconnectState => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'interconnectState' );
  has Location => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'location' );
  has Region => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'region' );


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Interconnect

=head1 ATTRIBUTES


=head2 Bandwidth => Str





=head2 InterconnectId => Str





=head2 InterconnectName => Str





=head2 InterconnectState => Str



Valid values are: C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">

=head2 Location => Str





=head2 Region => Str






=cut

1;