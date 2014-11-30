
package Paws::KMS::CreateGrantResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has GrantId => (is => 'ro', isa => 'Str');
  has GrantToken => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::KMS::CreateGrantResponse

=head1 ATTRIBUTES

=head2 GrantId => Str

  

Unique grant identifier. You can use the I<GrantId> value to revoke a
grant.









=head2 GrantToken => Str

  

The grant token. A grant token is a string that identifies a grant and
which can be used to make a grant take effect immediately. A token
contains all of the information necessary to create a grant.











=cut

1;