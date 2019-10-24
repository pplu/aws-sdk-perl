# Generated from default/object.tt
package Paws::Lightsail::ExportSnapshotRecord;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_ExportSnapshotRecordSourceInfo Lightsail_ResourceLocation Lightsail_DestinationInfo/;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has DestinationInfo => (is => 'ro', isa => Lightsail_DestinationInfo);
  has Location => (is => 'ro', isa => Lightsail_ResourceLocation);
  has Name => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);
  has SourceInfo => (is => 'ro', isa => Lightsail_ExportSnapshotRecordSourceInfo);
  has State => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DestinationInfo' => {
                                      'class' => 'Paws::Lightsail::DestinationInfo',
                                      'type' => 'Lightsail_DestinationInfo'
                                    },
               'State' => {
                            'type' => 'Str'
                          },
               'SourceInfo' => {
                                 'class' => 'Paws::Lightsail::ExportSnapshotRecordSourceInfo',
                                 'type' => 'Lightsail_ExportSnapshotRecordSourceInfo'
                               },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Location' => {
                               'class' => 'Paws::Lightsail::ResourceLocation',
                               'type' => 'Lightsail_ResourceLocation'
                             },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'DestinationInfo' => 'destinationInfo',
                       'State' => 'state',
                       'SourceInfo' => 'sourceInfo',
                       'CreatedAt' => 'createdAt',
                       'ResourceType' => 'resourceType',
                       'Arn' => 'arn',
                       'Location' => 'location',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::ExportSnapshotRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::ExportSnapshotRecord object:

  $service_obj->Method(Att1 => { Arn => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::ExportSnapshotRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes an export snapshot record.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the export snapshot record.


=head2 CreatedAt => Str

  The date when the export snapshot record was created.


=head2 DestinationInfo => Lightsail_DestinationInfo

  A list of objects describing the destination of the export snapshot
record.


=head2 Location => Lightsail_ResourceLocation

  The AWS Region and Availability Zone where the export snapshot record
is located.


=head2 Name => Str

  The export snapshot record name.


=head2 ResourceType => Str

  The Lightsail resource type (e.g., C<ExportSnapshotRecord>).


=head2 SourceInfo => Lightsail_ExportSnapshotRecordSourceInfo

  A list of objects describing the source of the export snapshot record.


=head2 State => Str

  The state of the export snapshot record.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

