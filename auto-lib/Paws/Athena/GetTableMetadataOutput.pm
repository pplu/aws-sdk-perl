
package Paws::Athena::GetTableMetadataOutput;
  use Moose;
  has TableMetadata => (is => 'ro', isa => 'Paws::Athena::TableMetadata');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetTableMetadataOutput

=head1 ATTRIBUTES


=head2 TableMetadata => L<Paws::Athena::TableMetadata>

An object that contains table metadata.


=head2 _request_id => Str


=cut

1;