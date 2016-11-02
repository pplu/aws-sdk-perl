
package Paws::DMS::RefreshSchemasResponse;
  use Moose;
  has RefreshSchemasStatus => (is => 'ro', isa => 'Paws::DMS::RefreshSchemasStatus');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::RefreshSchemasResponse

=head1 ATTRIBUTES


=head2 RefreshSchemasStatus => L<Paws::DMS::RefreshSchemasStatus>

The status of the refreshed schema.


=head2 _request_id => Str


=cut

1;