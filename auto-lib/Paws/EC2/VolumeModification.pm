package Paws::EC2::VolumeModification;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', xmlname => 'endTime', traits => ['Unwrapped']);
  has ModificationState => (is => 'ro', isa => 'Str', xmlname => 'modificationState', traits => ['Unwrapped']);
  has OriginalIops => (is => 'ro', isa => 'Int', xmlname => 'originalIops', traits => ['Unwrapped']);
  has OriginalSize => (is => 'ro', isa => 'Int', xmlname => 'originalSize', traits => ['Unwrapped']);
  has OriginalVolumeType => (is => 'ro', isa => 'Str', xmlname => 'originalVolumeType', traits => ['Unwrapped']);
  has Progress => (is => 'ro', isa => 'Int', xmlname => 'progress', traits => ['Unwrapped']);
  has StartTime => (is => 'ro', isa => 'Str', xmlname => 'startTime', traits => ['Unwrapped']);
  has StatusMessage => (is => 'ro', isa => 'Str', xmlname => 'statusMessage', traits => ['Unwrapped']);
  has TargetIops => (is => 'ro', isa => 'Int', xmlname => 'targetIops', traits => ['Unwrapped']);
  has TargetSize => (is => 'ro', isa => 'Int', xmlname => 'targetSize', traits => ['Unwrapped']);
  has TargetVolumeType => (is => 'ro', isa => 'Str', xmlname => 'targetVolumeType', traits => ['Unwrapped']);
  has VolumeId => (is => 'ro', isa => 'Str', xmlname => 'volumeId', traits => ['Unwrapped']);
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

  Modification completion or failure time.


=head2 ModificationState => Str

  Current state of modification. Modification state is null for
unmodified volumes.


=head2 OriginalIops => Int

  Original IOPS rate of the volume being modified.


=head2 OriginalSize => Int

  Original size of the volume being modified.


=head2 OriginalVolumeType => Str

  Original EBS volume type of the volume being modified.


=head2 Progress => Int

  Modification progress from 0 to 100%.


=head2 StartTime => Str

  Modification start time


=head2 StatusMessage => Str

  Generic status message on modification progress or failure.


=head2 TargetIops => Int

  Target IOPS rate of the volume being modified.


=head2 TargetSize => Int

  Target size of the volume being modified.


=head2 TargetVolumeType => Str

  Target EBS volume type of the volume being modified.


=head2 VolumeId => Str

  ID of the volume being modified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
