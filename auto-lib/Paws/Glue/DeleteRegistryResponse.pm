
package Paws::Glue::DeleteRegistryResponse;
  use Moose;
  has RegistryArn => (is => 'ro', isa => 'Str');
  has RegistryName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteRegistryResponse

=head1 ATTRIBUTES


=head2 RegistryArn => Str

The Amazon Resource Name (ARN) of the registry being deleted.


=head2 RegistryName => Str

The name of the registry being deleted.


=head2 Status => Str

The status of the registry. A successful operation will return the
C<Deleting> status.

Valid values are: C<"AVAILABLE">, C<"DELETING">
=head2 _request_id => Str


=cut

1;