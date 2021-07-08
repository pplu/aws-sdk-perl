
package Paws::WorkSpaces::CreateConnectionAliasResult;
  use Moose;
  has AliasId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateConnectionAliasResult

=head1 ATTRIBUTES


=head2 AliasId => Str

The identifier of the connection alias.


=head2 _request_id => Str


=cut

1;