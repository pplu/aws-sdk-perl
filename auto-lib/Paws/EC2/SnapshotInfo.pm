package Paws::EC2::SnapshotInfo;
  use Moo;  use Types::Standard qw/Str Bool ArrayRef Int/;
  use Paws::EC2::Types qw/EC2_Tag/;
  has Description => (is => 'ro', isa => Str);
  has Encrypted => (is => 'ro', isa => Bool);
  has OwnerId => (is => 'ro', isa => Str);
  has Progress => (is => 'ro', isa => Str);
  has SnapshotId => (is => 'ro', isa => Str);
  has StartTime => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has VolumeId => (is => 'ro', isa => Str);
  has VolumeSize => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SnapshotId' => {
                                 'type' => 'Str'
                               },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Encrypted' => {
                                'type' => 'Bool'
                              },
               'Progress' => {
                               'type' => 'Str'
                             },
               'VolumeSize' => {
                                 'type' => 'Int'
                               },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'VolumeId' => {
                               'type' => 'Str'
                             },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'OwnerId' => {
                              'type' => 'Str'
                            },
               'State' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'Tags' => 'tagSet',
                       'VolumeId' => 'volumeId',
                       'StartTime' => 'startTime',
                       'OwnerId' => 'ownerId',
                       'State' => 'state',
                       'SnapshotId' => 'snapshotId',
                       'Description' => 'description',
                       'Progress' => 'progress',
                       'Encrypted' => 'encrypted',
                       'VolumeSize' => 'volumeSize'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SnapshotInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SnapshotInfo object:

  $service_obj->Method(Att1 => { Description => $value, ..., VolumeSize => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SnapshotInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  Description specified by the CreateSnapshotRequest that has been
applied to all snapshots.


=head2 Encrypted => Bool

  Indicates whether the snapshot is encrypted.


=head2 OwnerId => Str

  Account id used when creating this snapshot.


=head2 Progress => Str

  Progress this snapshot has made towards completing.


=head2 SnapshotId => Str

  Snapshot id that can be used to describe this snapshot.


=head2 StartTime => Str

  Time this snapshot was started. This is the same for all snapshots
initiated by the same request.


=head2 State => Str

  Current state of the snapshot.


=head2 Tags => ArrayRef[EC2_Tag]

  Tags associated with this snapshot.


=head2 VolumeId => Str

  Source volume from which this snapshot was created.


=head2 VolumeSize => Int

  Size of the volume from which this snapshot was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
