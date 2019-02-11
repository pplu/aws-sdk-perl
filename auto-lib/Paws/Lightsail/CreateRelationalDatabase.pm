
package Paws::Lightsail::CreateRelationalDatabase;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone' );
  has MasterDatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'masterDatabaseName' , required => 1);
  has MasterUsername => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'masterUsername' , required => 1);
  has MasterUserPassword => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'masterUserPassword' );
  has PreferredBackupWindow => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'preferredBackupWindow' );
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'preferredMaintenanceWindow' );
  has PubliclyAccessible => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publiclyAccessible' );
  has RelationalDatabaseBlueprintId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationalDatabaseBlueprintId' , required => 1);
  has RelationalDatabaseBundleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationalDatabaseBundleId' , required => 1);
  has RelationalDatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationalDatabaseName' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRelationalDatabase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateRelationalDatabaseResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateRelationalDatabase - Arguments for method CreateRelationalDatabase on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRelationalDatabase on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateRelationalDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRelationalDatabase.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateRelationalDatabaseResult = $lightsail->CreateRelationalDatabase(
      MasterDatabaseName            => 'Mystring',
      MasterUsername                => 'Mystring',
      RelationalDatabaseBlueprintId => 'Mystring',
      RelationalDatabaseBundleId    => 'Mystring',
      RelationalDatabaseName        => 'MyResourceName',
      AvailabilityZone              => 'Mystring',             # OPTIONAL
      MasterUserPassword            => 'MySensitiveString',    # OPTIONAL
      PreferredBackupWindow         => 'Mystring',             # OPTIONAL
      PreferredMaintenanceWindow    => 'Mystring',             # OPTIONAL
      PubliclyAccessible            => 1,                      # OPTIONAL
      Tags                          => [
        {
          Key   => 'MyTagKey',                                 # OPTIONAL
          Value => 'MyTagValue',                               # OPTIONAL
        },
        ...
      ],                                                       # OPTIONAL
    );

    # Results:
    my $Operations = $CreateRelationalDatabaseResult->Operations;

    # Returns a L<Paws::Lightsail::CreateRelationalDatabaseResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateRelationalDatabase>

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone in which to create your new database. Use the
C<us-east-2a> case-sensitive format.

You can get a list of Availability Zones by using the C<get regions>
operation. Be sure to add the C<include relational database
Availability Zones> parameter to your request.



=head2 B<REQUIRED> MasterDatabaseName => Str

The name of the master database created when the Lightsail database
resource is created.

Constraints:

=over

=item *

Must contain from 1 to 64 alphanumeric characters.

=item *

Cannot be a word reserved by the specified database engine

=back




=head2 B<REQUIRED> MasterUsername => Str

The master user name for your new database.

Constraints:

=over

=item *

Master user name is required.

=item *

Must contain from 1 to 16 alphanumeric characters.

=item *

The first character must be a letter.

=item *

Cannot be a reserved word for the database engine you choose.

For more information about reserved words in MySQL 5.6 or 5.7, see the
Keywords and Reserved Words articles for MySQL 5.6
(https://dev.mysql.com/doc/refman/5.6/en/keywords.html) or MySQL 5.7
(https://dev.mysql.com/doc/refman/5.7/en/keywords.html) respectively.

=back




=head2 MasterUserPassword => Str

The password for the master user of your new database. The password can
include any printable ASCII character except "/", """, or "@".

Constraints: Must contain 8 to 41 characters.



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created for
your new database if automated backups are enabled.

The default is a 30-minute window selected at random from an 8-hour
block of time for each AWS Region. For more information about the
preferred backup window time blocks for each region, see the Working
With Backups
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow)
guide in the Amazon Relational Database Service (Amazon RDS)
documentation.

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
new database.

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

Specifies the accessibility options for your new database. A value of
C<true> specifies a database that is available to resources outside of
your Lightsail account. A value of C<false> specifies a database that
is available only to your Lightsail resources in the same region as
your database.



=head2 B<REQUIRED> RelationalDatabaseBlueprintId => Str

The blueprint ID for your new database. A blueprint describes the major
engine version of a database.

You can get a list of database blueprints IDs by using the C<get
relational database blueprints> operation.



=head2 B<REQUIRED> RelationalDatabaseBundleId => Str

The bundle ID for your new database. A bundle describes the performance
specifications for your database.

You can get a list of database bundle IDs by using the C<get relational
database bundles> operation.



=head2 B<REQUIRED> RelationalDatabaseName => Str

The name to use for your new database.

Constraints:

=over

=item *

Must contain from 2 to 255 alphanumeric characters, or hyphens.

=item *

The first and last character must be a letter or number.

=back




=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values to add to the resource during create.

To tag a resource after it has been created, see the C<tag resource>
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRelationalDatabase in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

