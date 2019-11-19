# Generated from default/object.tt
package Paws::Lightsail::RelationalDatabase;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_PendingModifiedRelationalDatabaseValues Lightsail_RelationalDatabaseEndpoint Lightsail_Tag Lightsail_RelationalDatabaseHardware Lightsail_ResourceLocation Lightsail_PendingMaintenanceAction/;
  has Arn => (is => 'ro', isa => Str);
  has BackupRetentionEnabled => (is => 'ro', isa => Bool);
  has CreatedAt => (is => 'ro', isa => Str);
  has Engine => (is => 'ro', isa => Str);
  has EngineVersion => (is => 'ro', isa => Str);
  has Hardware => (is => 'ro', isa => Lightsail_RelationalDatabaseHardware);
  has LatestRestorableTime => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => Lightsail_ResourceLocation);
  has MasterDatabaseName => (is => 'ro', isa => Str);
  has MasterEndpoint => (is => 'ro', isa => Lightsail_RelationalDatabaseEndpoint);
  has MasterUsername => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ParameterApplyStatus => (is => 'ro', isa => Str);
  has PendingMaintenanceActions => (is => 'ro', isa => ArrayRef[Lightsail_PendingMaintenanceAction]);
  has PendingModifiedValues => (is => 'ro', isa => Lightsail_PendingModifiedRelationalDatabaseValues);
  has PreferredBackupWindow => (is => 'ro', isa => Str);
  has PreferredMaintenanceWindow => (is => 'ro', isa => Str);
  has PubliclyAccessible => (is => 'ro', isa => Bool);
  has RelationalDatabaseBlueprintId => (is => 'ro', isa => Str);
  has RelationalDatabaseBundleId => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);
  has SecondaryAvailabilityZone => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has SupportCode => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[Lightsail_Tag]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'BackupRetentionEnabled' => 'backupRetentionEnabled',
                       'CreatedAt' => 'createdAt',
                       'Hardware' => 'hardware',
                       'Location' => 'location',
                       'Arn' => 'arn',
                       'SecondaryAvailabilityZone' => 'secondaryAvailabilityZone',
                       'PubliclyAccessible' => 'publiclyAccessible',
                       'Engine' => 'engine',
                       'State' => 'state',
                       'RelationalDatabaseBundleId' => 'relationalDatabaseBundleId',
                       'Name' => 'name',
                       'EngineVersion' => 'engineVersion',
                       'MasterUsername' => 'masterUsername',
                       'ParameterApplyStatus' => 'parameterApplyStatus',
                       'MasterEndpoint' => 'masterEndpoint',
                       'LatestRestorableTime' => 'latestRestorableTime',
                       'Tags' => 'tags',
                       'PendingMaintenanceActions' => 'pendingMaintenanceActions',
                       'PreferredBackupWindow' => 'preferredBackupWindow',
                       'MasterDatabaseName' => 'masterDatabaseName',
                       'ResourceType' => 'resourceType',
                       'PendingModifiedValues' => 'pendingModifiedValues',
                       'PreferredMaintenanceWindow' => 'preferredMaintenanceWindow',
                       'SupportCode' => 'supportCode',
                       'RelationalDatabaseBlueprintId' => 'relationalDatabaseBlueprintId'
                     },
  'types' => {
               'PendingMaintenanceActions' => {
                                                'type' => 'ArrayRef[Lightsail_PendingMaintenanceAction]',
                                                'class' => 'Paws::Lightsail::PendingMaintenanceAction'
                                              },
               'MasterDatabaseName' => {
                                         'type' => 'Str'
                                       },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'PreferredBackupWindow' => {
                                            'type' => 'Str'
                                          },
               'PreferredMaintenanceWindow' => {
                                                 'type' => 'Str'
                                               },
               'PendingModifiedValues' => {
                                            'type' => 'Lightsail_PendingModifiedRelationalDatabaseValues',
                                            'class' => 'Paws::Lightsail::PendingModifiedRelationalDatabaseValues'
                                          },
               'SupportCode' => {
                                  'type' => 'Str'
                                },
               'RelationalDatabaseBlueprintId' => {
                                                    'type' => 'Str'
                                                  },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'MasterUsername' => {
                                     'type' => 'Str'
                                   },
               'ParameterApplyStatus' => {
                                           'type' => 'Str'
                                         },
               'MasterEndpoint' => {
                                     'type' => 'Lightsail_RelationalDatabaseEndpoint',
                                     'class' => 'Paws::Lightsail::RelationalDatabaseEndpoint'
                                   },
               'LatestRestorableTime' => {
                                           'type' => 'Str'
                                         },
               'Tags' => {
                           'class' => 'Paws::Lightsail::Tag',
                           'type' => 'ArrayRef[Lightsail_Tag]'
                         },
               'Engine' => {
                             'type' => 'Str'
                           },
               'State' => {
                            'type' => 'Str'
                          },
               'RelationalDatabaseBundleId' => {
                                                 'type' => 'Str'
                                               },
               'Name' => {
                           'type' => 'Str'
                         },
               'BackupRetentionEnabled' => {
                                             'type' => 'Bool'
                                           },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Hardware' => {
                               'type' => 'Lightsail_RelationalDatabaseHardware',
                               'class' => 'Paws::Lightsail::RelationalDatabaseHardware'
                             },
               'Location' => {
                               'type' => 'Lightsail_ResourceLocation',
                               'class' => 'Paws::Lightsail::ResourceLocation'
                             },
               'SecondaryAvailabilityZone' => {
                                                'type' => 'Str'
                                              },
               'Arn' => {
                          'type' => 'Str'
                        },
               'PubliclyAccessible' => {
                                         'type' => 'Bool'
                                       }
             }
}
;
    return $Params_map;
  }


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


=head2 Hardware => Lightsail_RelationalDatabaseHardware

  Describes the hardware of the database.


=head2 LatestRestorableTime => Str

  The latest point in time to which the database can be restored.
Formatted in Unix time.


=head2 Location => Lightsail_ResourceLocation

  The Region name and Availability Zone where the database is located.


=head2 MasterDatabaseName => Str

  The name of the master database created when the Lightsail database
resource is created.


=head2 MasterEndpoint => Lightsail_RelationalDatabaseEndpoint

  The master endpoint for the database.


=head2 MasterUsername => Str

  The master user name of the database.


=head2 Name => Str

  The unique name of the database resource in Lightsail.


=head2 ParameterApplyStatus => Str

  The status of parameter updates for the database.


=head2 PendingMaintenanceActions => ArrayRef[Lightsail_PendingMaintenanceAction]

  Describes the pending maintenance actions for the database.


=head2 PendingModifiedValues => Lightsail_PendingModifiedRelationalDatabaseValues

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


=head2 Tags => ArrayRef[Lightsail_Tag]

  The tag keys and optional values for the resource. For more information
about tags in Lightsail, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

