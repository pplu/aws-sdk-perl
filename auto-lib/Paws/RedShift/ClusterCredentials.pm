
package Paws::RedShift::ClusterCredentials;
  use Moose;
  has DbPassword => (is => 'ro', isa => 'Str');
  has DbUser => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ClusterCredentials

=head1 ATTRIBUTES


=head2 DbPassword => Str

A temporary password that authorizes the user name returned by
C<DbUser> to log on to the database C<DbName>.


=head2 DbUser => Str

A database user name that is authorized to log on to the database
C<DbName> using the password C<DbPassword>. If the specified DbUser
exists in the database, the new user name has the same database
privileges as the the user named in DbUser. By default, the user is
added to PUBLIC. If the C<DbGroups> parameter is specifed, C<DbUser> is
added to the listed groups for any sessions created using these
credentials.


=head2 Expiration => Str

The date and time the password in C<DbPassword> expires.


=head2 _request_id => Str


=cut

