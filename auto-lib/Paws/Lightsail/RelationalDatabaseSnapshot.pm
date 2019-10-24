# Generated from default/object.tt
package Paws::Lightsail::RelationalDatabaseSnapshot;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_ResourceLocation Lightsail_Tag/;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has Engine => (is => 'ro', isa => Str);
  has EngineVersion => (is => 'ro', isa => Str);
  has FromRelationalDatabaseArn => (is => 'ro', isa => Str);
  has FromRelationalDatabaseBlueprintId => (is => 'ro', isa => Str);
  has FromRelationalDatabaseBundleId => (is => 'ro', isa => Str);
  has FromRelationalDatabaseName => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => Lightsail_ResourceLocation);
  has Name => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);
  has SizeInGb => (is => 'ro', isa => Int);
  has State => (is => 'ro', isa => Str);
  has SupportCode => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[Lightsail_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'Engine' => {
                             'type' => 'Str'
                           },
               'FromRelationalDatabaseName' => {
                                                 'type' => 'Str'
                                               },
               'SupportCode' => {
                                  'type' => 'Str'
                                },
               'State' => {
                            'type' => 'Str'
                          },
               'FromRelationalDatabaseBlueprintId' => {
                                                        'type' => 'Str'
                                                      },
               'SizeInGb' => {
                               'type' => 'Int'
                             },
               'FromRelationalDatabaseBundleId' => {
                                                     'type' => 'Str'
                                                   },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Tags' => {
                           'class' => 'Paws::Lightsail::Tag',
                           'type' => 'ArrayRef[Lightsail_Tag]'
                         },
               'Location' => {
                               'class' => 'Paws::Lightsail::ResourceLocation',
                               'type' => 'Lightsail_ResourceLocation'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'FromRelationalDatabaseArn' => {
                                                'type' => 'Str'
                                              }
             },
  'NameInRequest' => {
                       'EngineVersion' => 'engineVersion',
                       'Engine' => 'engine',
                       'FromRelationalDatabaseName' => 'fromRelationalDatabaseName',
                       'SupportCode' => 'supportCode',
                       'State' => 'state',
                       'FromRelationalDatabaseBlueprintId' => 'fromRelationalDatabaseBlueprintId',
                       'SizeInGb' => 'sizeInGb',
                       'FromRelationalDatabaseBundleId' => 'fromRelationalDatabaseBundleId',
                       'ResourceType' => 'resourceType',
                       'CreatedAt' => 'createdAt',
                       'Arn' => 'arn',
                       'Tags' => 'tags',
                       'Location' => 'location',
                       'Name' => 'name',
                       'FromRelationalDatabaseArn' => 'fromRelationalDatabaseArn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::RelationalDatabaseSnapshot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::RelationalDatabaseSnapshot object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::RelationalDatabaseSnapshot object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes a database snapshot.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the database snapshot.


=head2 CreatedAt => Str

  The timestamp when the database snapshot was created.


=head2 Engine => Str

  The software of the database snapshot (for example, C<MySQL>)


=head2 EngineVersion => Str

  The database engine version for the database snapshot (for example,
C<5.7.23>).


=head2 FromRelationalDatabaseArn => Str

  The Amazon Resource Name (ARN) of the database from which the database
snapshot was created.


=head2 FromRelationalDatabaseBlueprintId => Str

  The blueprint ID of the database from which the database snapshot was
created. A blueprint describes the major engine version of a database.


=head2 FromRelationalDatabaseBundleId => Str

  The bundle ID of the database from which the database snapshot was
created.


=head2 FromRelationalDatabaseName => Str

  The name of the source database from which the database snapshot was
created.


=head2 Location => Lightsail_ResourceLocation

  The Region name and Availability Zone where the database snapshot is
located.


=head2 Name => Str

  The name of the database snapshot.


=head2 ResourceType => Str

  The Lightsail resource type.


=head2 SizeInGb => Int

  The size of the disk in GB (for example, C<32>) for the database
snapshot.


=head2 State => Str

  The state of the database snapshot.


=head2 SupportCode => Str

  The support code for the database snapshot. Include this code in your
email to support when you have questions about a database snapshot in
Lightsail. This code enables our support team to look up your Lightsail
information more easily.


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

