package Paws::Lightsail::RelationalDatabase;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has BackupRetentionEnabled => (is => 'ro', isa => 'Bool', request_name => 'backupRetentionEnabled', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Engine => (is => 'ro', isa => 'Str', request_name => 'engine', traits => ['NameInRequest']);
  has EngineVersion => (is => 'ro', isa => 'Str', request_name => 'engineVersion', traits => ['NameInRequest']);
  has Hardware => (is => 'ro', isa => 'Paws::Lightsail::RelationalDatabaseHardware', request_name => 'hardware', traits => ['NameInRequest']);
  has LatestRestorableTime => (is => 'ro', isa => 'Str', request_name => 'latestRestorableTime', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::Lightsail::ResourceLocation', request_name => 'location', traits => ['NameInRequest']);
  has MasterDatabaseName => (is => 'ro', isa => 'Str', request_name => 'masterDatabaseName', traits => ['NameInRequest']);
  has MasterEndpoint => (is => 'ro', isa => 'Paws::Lightsail::RelationalDatabaseEndpoint', request_name => 'masterEndpoint', traits => ['NameInRequest']);
  has MasterUsername => (is => 'ro', isa => 'Str', request_name => 'masterUsername', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ParameterApplyStatus => (is => 'ro', isa => 'Str', request_name => 'parameterApplyStatus', traits => ['NameInRequest']);
  has PendingMaintenanceActions => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::PendingMaintenanceAction]', request_name => 'pendingMaintenanceActions', traits => ['NameInRequest']);
  has PendingModifiedValues => (is => 'ro', isa => 'Paws::Lightsail::PendingModifiedRelationalDatabaseValues', request_name => 'pendingModifiedValues', traits => ['NameInRequest']);
  has PreferredBackupWindow => (is => 'ro', isa => 'Str', request_name => 'preferredBackupWindow', traits => ['NameInRequest']);
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str', request_name => 'preferredMaintenanceWindow', traits => ['NameInRequest']);
  has PubliclyAccessible => (is => 'ro', isa => 'Bool', request_name => 'publiclyAccessible', traits => ['NameInRequest']);
  has RelationalDatabaseBlueprintId => (is => 'ro', isa => 'Str', request_name => 'relationalDatabaseBlueprintId', traits => ['NameInRequest']);
  has RelationalDatabaseBundleId => (is => 'ro', isa => 'Str', request_name => 'relationalDatabaseBundleId', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has SecondaryAvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'secondaryAvailabilityZone', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has SupportCode => (is => 'ro', isa => 'Str', request_name => 'supportCode', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::RelationalDatabase

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::RelationalDatabase object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::RelationalDatabase object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes a database.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the database.


=head2 BackupRetentionEnabled => Bool

  A Boolean value indicating whether automated backup retention is
enabled for the database.


=head2 CreatedAt => Str

  The timestamp when the database was created. Formatted in Unix time.


=head2 Engine => Str

  The database software (for example, C<MySQL>).


=head2 EngineVersion => Str

  The database engine version (for example, C<5.7.23>).


=head2 Hardware => L<Paws::Lightsail::RelationalDatabaseHardware>

  Describes the hardware of the database.


=head2 LatestRestorableTime => Str

  The latest point in time to which the database can be restored.
Formatted in Unix time.


=head2 Location => L<Paws::Lightsail::ResourceLocation>

  The Region name and Availability Zone where the database is located.


=head2 MasterDatabaseName => Str

  The name of the master database created when the Lightsail database
resource is created.


=head2 MasterEndpoint => L<Paws::Lightsail::RelationalDatabaseEndpoint>

  The master endpoint for the database.


=head2 MasterUsername => Str

  The master user name of the database.


=head2 Name => Str

  The unique name of the database resource in Lightsail.


=head2 ParameterApplyStatus => Str

  The status of parameter updates for the database.


=head2 PendingMaintenanceActions => ArrayRef[L<Paws::Lightsail::PendingMaintenanceAction>]

  Describes the pending maintenance actions for the database.


=head2 PendingModifiedValues => L<Paws::Lightsail::PendingModifiedRelationalDatabaseValues>

  Describes pending database value modifications.


=head2 PreferredBackupWindow => Str

  The daily time range during which automated backups are created for the
database (for example, C<16:00-16:30>).


=head2 PreferredMaintenanceWindow => Str

  The weekly time range during which system maintenance can occur on the
database.

In the format C<ddd:hh24:mi-ddd:hh24:mi>. For example,
C<Tue:17:00-Tue:17:30>.


=head2 PubliclyAccessible => Bool

  A Boolean value indicating whether the database is publicly accessible.


=head2 RelationalDatabaseBlueprintId => Str

  The blueprint ID for the database. A blueprint describes the major
engine version of a database.


=head2 RelationalDatabaseBundleId => Str

  The bundle ID for the database. A bundle describes the performance
specifications for your database.


=head2 ResourceType => Str

  The Lightsail resource type for the database (for example,
C<RelationalDatabase>).


=head2 SecondaryAvailabilityZone => Str

  Describes the secondary Availability Zone of a high availability
database.

The secondary database is used for failover support of a high
availability database.


=head2 State => Str

  Describes the current state of the database.


=head2 SupportCode => Str

  The support code for the database. Include this code in your email to
support when you have questions about a database in Lightsail. This
code enables our support team to look up your Lightsail information
more easily.


=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

  The tag keys and optional values for the resource. For more information
about tags in Lightsail, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

