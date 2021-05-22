
package Paws::Glue::GetRegistryResponse;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has RegistryArn => (is => 'ro', isa => 'Str');
  has RegistryName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetRegistryResponse

=head1 ATTRIBUTES


=head2 CreatedTime => Str

The date and time the registry was created.


=head2 Description => Str

A description of the registry.


=head2 RegistryArn => Str

The Amazon Resource Name (ARN) of the registry.


=head2 RegistryName => Str

The name of the registry.


=head2 Status => Str

The status of the registry.

Valid values are: C<"AVAILABLE">, C<"DELETING">
=head2 UpdatedTime => Str

The date and time the registry was updated.


=head2 _request_id => Str


=cut

1;