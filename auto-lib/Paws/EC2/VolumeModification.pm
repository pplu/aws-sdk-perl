package Paws::EC2::VolumeModification;
  use Moo;  use Types::Standard qw/Str Int/;
  use Paws::EC2::Types qw//;
  has EndTime => (is => 'ro', isa => Str);
  has ModificationState => (is => 'ro', isa => Str);
  has OriginalIops => (is => 'ro', isa => Int);
  has OriginalSize => (is => 'ro', isa => Int);
  has OriginalVolumeType => (is => 'ro', isa => Str);
  has Progress => (is => 'ro', isa => Int);
  has StartTime => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);
  has TargetIops => (is => 'ro', isa => Int);
  has TargetSize => (is => 'ro', isa => Int);
  has TargetVolumeType => (is => 'ro', isa => Str);
  has VolumeId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OriginalVolumeType' => {
                                         'type' => 'Str'
                                       },
               'TargetIops' => {
                                 'type' => 'Int'
                               },
               'OriginalIops' => {
                                   'type' => 'Int'
                                 },
               'VolumeId' => {
                               'type' => 'Str'
                             },
               'TargetSize' => {
                                 'type' => 'Int'
                               },
               'TargetVolumeType' => {
                                       'type' => 'Str'
                                     },
               'ModificationState' => {
                                        'type' => 'Str'
                                      },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'Progress' => {
                               'type' => 'Int'
                             },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'OriginalSize' => {
                                   'type' => 'Int'
                                 },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'OriginalVolumeType' => 'originalVolumeType',
                       'TargetIops' => 'targetIops',
                       'OriginalIops' => 'originalIops',
                       'VolumeId' => 'volumeId',
                       'TargetSize' => 'targetSize',
                       'TargetVolumeType' => 'targetVolumeType',
                       'ModificationState' => 'modificationState',
                       'EndTime' => 'endTime',
                       'Progress' => 'progress',
                       'StartTime' => 'startTime',
                       'OriginalSize' => 'originalSize',
                       'StatusMessage' => 'statusMessage'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VolumeModification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VolumeModification object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., VolumeId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VolumeModification object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EndTime => Str

  The modification completion or failure time.


=head2 ModificationState => Str

  The current modification state. The modification state is null for
unmodified volumes.


=head2 OriginalIops => Int

  The original IOPS rate of the volume.


=head2 OriginalSize => Int

  The original size of the volume.


=head2 OriginalVolumeType => Str

  The original EBS volume type of the volume.


=head2 Progress => Int

  The modification progress, from 0 to 100 percent complete.


=head2 StartTime => Str

  The modification start time.


=head2 StatusMessage => Str

  A status message about the modification progress or failure.


=head2 TargetIops => Int

  The target IOPS rate of the volume.


=head2 TargetSize => Int

  The target size of the volume, in GiB.


=head2 TargetVolumeType => Str

  The target EBS volume type of the volume.


=head2 VolumeId => Str

  The ID of the volume.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
