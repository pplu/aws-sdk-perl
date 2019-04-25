package Paws::EC2::VolumeModification;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has ModificationState => (is => 'ro', isa => 'Str', request_name => 'modificationState', traits => ['NameInRequest']);
  has OriginalIops => (is => 'ro', isa => 'Int', request_name => 'originalIops', traits => ['NameInRequest']);
  has OriginalSize => (is => 'ro', isa => 'Int', request_name => 'originalSize', traits => ['NameInRequest']);
  has OriginalVolumeType => (is => 'ro', isa => 'Str', request_name => 'originalVolumeType', traits => ['NameInRequest']);
  has Progress => (is => 'ro', isa => 'Int', request_name => 'progress', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has TargetIops => (is => 'ro', isa => 'Int', request_name => 'targetIops', traits => ['NameInRequest']);
  has TargetSize => (is => 'ro', isa => 'Int', request_name => 'targetSize', traits => ['NameInRequest']);
  has TargetVolumeType => (is => 'ro', isa => 'Str', request_name => 'targetVolumeType', traits => ['NameInRequest']);
  has VolumeId => (is => 'ro', isa => 'Str', request_name => 'volumeId', traits => ['NameInRequest']);
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
