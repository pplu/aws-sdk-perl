
package Paws::WorkSpaces::AssociateConnectionAliasResult;
  use Moose;
  has ConnectionIdentifier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::AssociateConnectionAliasResult

=head1 ATTRIBUTES


=head2 ConnectionIdentifier => Str

The identifier of the connection alias association. You use the
connection identifier in the DNS TXT record when you're configuring
your DNS routing policies.


=head2 _request_id => Str


=cut

1;