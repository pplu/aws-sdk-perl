
package Paws::Lightsail::GetRelationalDatabaseMasterUserPasswordResult;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt' );
  has MasterUserPassword => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'masterUserPassword' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseMasterUserPasswordResult

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp when the specified version of the master user password
was created.


=head2 MasterUserPassword => Str

The master user password for the C<password version> specified.


=head2 _request_id => Str


=cut

1;