
package Paws::Glue::CreateRegistryResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has RegistryArn => (is => 'ro', isa => 'Str');
  has RegistryName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateRegistryResponse

=head1 ATTRIBUTES


=head2 Description => Str

A description of the registry.


=head2 RegistryArn => Str

The Amazon Resource Name (ARN) of the newly created registry.


=head2 RegistryName => Str

The name of the registry.


=head2 Tags => L<Paws::Glue::TagsMap>

The tags for the registry.


=head2 _request_id => Str


=cut

1;