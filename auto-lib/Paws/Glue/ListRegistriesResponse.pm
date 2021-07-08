
package Paws::Glue::ListRegistriesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Registries => (is => 'ro', isa => 'ArrayRef[Paws::Glue::RegistryListItem]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListRegistriesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token for paginating the returned list of tokens,
returned if the current segment of the list is not the last.


=head2 Registries => ArrayRef[L<Paws::Glue::RegistryListItem>]

An array of C<RegistryDetailedListItem> objects containing minimal
details of each registry.


=head2 _request_id => Str


=cut

1;