
package Paws::Lightsail::UpdateRelationalDatabase;
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'applyImmediately' );
  has DisableBackupRetention => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disableBackupRetention' );
  has EnableBackupRetention => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableBackupRetention' );
  has MasterUserPassword => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'masterUserPassword' );
  has PreferredBackupWindow => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'preferredBackupWindow' );
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'preferredMaintenanceWindow' );
  has PubliclyAccessible => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publiclyAccessible' );
  has RelationalDatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationalDatabaseName' , required => 1);
  has RotateMasterUserPassword => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'rotateMasterUserPassword' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRelationalDatabase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::UpdateRelationalDatabaseResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::UpdateRelationalDatabase - Arguments for method UpdateRelationalDatabase on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRelationalDatabase on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method UpdateRelationalDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRelationalDatabase.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $UpdateRelationalDatabaseResult = $lightsail->UpdateRelationalDatabase(
      RelationalDatabaseName     => 'MyResourceName',
      ApplyImmediately           => 1,                      # OPTIONAL
      DisableBackupRetention     => 1,                      # OPTIONAL
      EnableBackupRetention      => 1,                      # OPTIONAL
      MasterUserPassword         => 'MySensitiveString',    # OPTIONAL
      PreferredBackupWindow      => 'Mystring',             # OPTIONAL
      PreferredMaintenanceWindow => 'Mystring',             # OPTIONAL
      PubliclyAccessible         => 1,                      # OPTIONAL
      RotateMasterUserPassword   => 1,                      # OPTIONAL
    );

    # Results:
    my $Operations = $UpdateRelationalDatabaseResult->Operations;

    # Returns a L<Paws::Lightsail::UpdateRelationalDatabaseResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/UpdateRelationalDatabase>

=head1 ATTRIBUTES


=head2 ApplyImmediately => Bool

When C<true>, applies changes immediately. When C<false>, applies
changes during the preferred maintenance window. Some changes may cause
an outage.

Default: C<false>



=head2 DisableBackupRetention => Bool

When C<true>, disables automated backup retention for your database.

Disabling backup retention deletes all automated database backups.
Before disabling this, you may want to create a snapshot of your
database using the C<create relational database snapshot> operation.

Updates are applied during the next maintenance window because this can
result in an outage.



=head2 EnableBackupRetention => Bool

When C<true>, enables automated backup retention for your database.

Updates are applied during the next maintenance window because this can
result in an outage.



=head2 MasterUserPassword => Str

The password for the master user of your database. The password can
include any printable ASCII character except "/", """, or "@".

Constraints: Must contain 8 to 41 characters.



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created for
your database if automated backups are enabled.

Constraints:

=over

=item *

Must be in the C<hh24:mi-hh24:mi> format.

Example: C<16:00-16:30>

=item *

Specified in Universal Coordinated Time (UTC).

=item *

Must not conflict with the preferred maintenance window.

=item *

Must be at least 30 minutes.

=back




=head2 PreferredMaintenanceWindow => Str

The weekly time range during which system maintenance can occur on your
database.

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region, occurring on a random day of the
week.

Constraints:

=over

=item *

Must be in the C<ddd:hh24:mi-ddd:hh24:mi> format.

=item *

Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

=item *

Must be at least 30 minutes.

=item *

Specified in Universal Coordinated Time (UTC).

=item *

Example: C<Tue:17:00-Tue:17:30>

=back




=head2 PubliclyAccessible => Bool

Specifies the accessibility options for your database. A value of
C<true> specifies a database that is available to resources outside of
your Lightsail account. A value of C<false> specifies a database that
is available only to your Lightsail resources in the same region as
your database.



=head2 B<REQUIRED> RelationalDatabaseName => Str

The name of your database to update.



=head2 RotateMasterUserPassword => Bool

When C<true>, the master user password is changed to a new strong
password generated by Lightsail.

Use the C<get relational database master user password> operation to
get the new password.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRelationalDatabase in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

