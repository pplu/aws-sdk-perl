
package Paws::Athena::CreateNamedQueryOutput;
  use Moose;
  has NamedQueryId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::CreateNamedQueryOutput

=head1 ATTRIBUTES


=head2 NamedQueryId => Str

The unique ID of the query.


=head2 _request_id => Str


=cut

1;