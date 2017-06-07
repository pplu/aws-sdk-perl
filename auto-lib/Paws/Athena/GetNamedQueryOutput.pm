
package Paws::Athena::GetNamedQueryOutput;
  use Moose;
  has NamedQuery => (is => 'ro', isa => 'Paws::Athena::NamedQuery');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetNamedQueryOutput

=head1 ATTRIBUTES


=head2 NamedQuery => L<Paws::Athena::NamedQuery>

Information about the query.


=head2 _request_id => Str


=cut

1;