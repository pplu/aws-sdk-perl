
package Paws::Glue::GetTableVersionResponse;
  use Moose;
  has TableVersion => (is => 'ro', isa => 'Paws::Glue::TableVersion');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetTableVersionResponse

=head1 ATTRIBUTES


=head2 TableVersion => L<Paws::Glue::TableVersion>

The requested table version.


=head2 _request_id => Str


=cut

1;