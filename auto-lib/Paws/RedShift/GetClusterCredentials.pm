
package Paws::RedShift::GetClusterCredentials;
  use Moose;
  has AutoCreate => (is => 'ro', isa => 'Bool');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DbGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DbName => (is => 'ro', isa => 'Str');
  has DbUser => (is => 'ro', isa => 'Str', required => 1);
  has DurationSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetClusterCredentials');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ClusterCredentials');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetClusterCredentialsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::GetClusterCredentials - Arguments for method GetClusterCredentials on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetClusterCredentials on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method GetClusterCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetClusterCredentials.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ClusterCredentials = $redshift->GetClusterCredentials(
      ClusterIdentifier => 'MyString',
      DbUser            => 'MyString',
      AutoCreate        => 1,                      # OPTIONAL
      DbGroups          => [ 'MyString', ... ],    # OPTIONAL
      DbName            => 'MyString',             # OPTIONAL
      DurationSeconds   => 1,                      # OPTIONAL
    );

    # Results:
    my $DbPassword = $ClusterCredentials->DbPassword;
    my $DbUser     = $ClusterCredentials->DbUser;
    my $Expiration = $ClusterCredentials->Expiration;

    # Returns a L<Paws::RedShift::ClusterCredentials> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/GetClusterCredentials>

=head1 ATTRIBUTES


=head2 AutoCreate => Bool

Create a database user with the name specified for the user named in
C<DbUser> if one does not exist.



=head2 B<REQUIRED> ClusterIdentifier => Str

The unique identifier of the cluster that contains the database for
which your are requesting credentials. This parameter is case
sensitive.



=head2 DbGroups => ArrayRef[Str|Undef]

A list of the names of existing database groups that the user named in
C<DbUser> will join for the current session, in addition to any group
memberships for an existing user. If not specified, a new user is added
only to PUBLIC.

Database group name constraints

=over

=item *

Must be 1 to 64 alphanumeric characters or hyphens

=item *

Must contain only lowercase letters, numbers, underscore, plus sign,
period (dot), at symbol (@), or hyphen.

=item *

First character must be a letter.

=item *

Must not contain a colon ( : ) or slash ( / ).

=item *

Cannot be a reserved word. A list of reserved words can be found in
Reserved Words
(http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html) in
the Amazon Redshift Database Developer Guide.

=back




=head2 DbName => Str

The name of a database that C<DbUser> is authorized to log on to. If
C<DbName> is not specified, C<DbUser> can log on to any existing
database.

Constraints:

=over

=item *

Must be 1 to 64 alphanumeric characters or hyphens

=item *

Must contain only lowercase letters, numbers, underscore, plus sign,
period (dot), at symbol (@), or hyphen.

=item *

First character must be a letter.

=item *

Must not contain a colon ( : ) or slash ( / ).

=item *

Cannot be a reserved word. A list of reserved words can be found in
Reserved Words
(http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html) in
the Amazon Redshift Database Developer Guide.

=back




=head2 B<REQUIRED> DbUser => Str

The name of a database user. If a user name matching C<DbUser> exists
in the database, the temporary user credentials have the same
permissions as the existing user. If C<DbUser> doesn't exist in the
database and C<Autocreate> is C<True>, a new user is created using the
value for C<DbUser> with PUBLIC permissions. If a database user
matching the value for C<DbUser> doesn't exist and C<Autocreate> is
C<False>, then the command succeeds but the connection attempt will
fail because the user doesn't exist in the database.

For more information, see CREATE USER
(http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html) in
the Amazon Redshift Database Developer Guide.

Constraints:

=over

=item *

Must be 1 to 64 alphanumeric characters or hyphens. The user name can't
be C<PUBLIC>.

=item *

Must contain only lowercase letters, numbers, underscore, plus sign,
period (dot), at symbol (@), or hyphen.

=item *

First character must be a letter.

=item *

Must not contain a colon ( : ) or slash ( / ).

=item *

Cannot be a reserved word. A list of reserved words can be found in
Reserved Words
(http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html) in
the Amazon Redshift Database Developer Guide.

=back




=head2 DurationSeconds => Int

The number of seconds until the returned temporary password expires.

Constraint: minimum 900, maximum 3600.

Default: 900




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetClusterCredentials in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

