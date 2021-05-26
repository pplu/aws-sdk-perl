
package Paws::Kendra::CreateIndexResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::CreateIndexResponse

=head1 ATTRIBUTES


=head2 Id => Str

The unique identifier of the index. Use this identifier when you query
an index, set up a data source, or index a document.


=head2 _request_id => Str


=cut

1;