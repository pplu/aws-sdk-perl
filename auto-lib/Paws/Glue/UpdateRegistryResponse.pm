
package Paws::Glue::UpdateRegistryResponse;
  use Moose;
  has RegistryArn => (is => 'ro', isa => 'Str');
  has RegistryName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateRegistryResponse

=head1 ATTRIBUTES


=head2 RegistryArn => Str

The Amazon Resource name (ARN) of the updated registry.


=head2 RegistryName => Str

The name of the updated registry.


=head2 _request_id => Str


=cut

1;