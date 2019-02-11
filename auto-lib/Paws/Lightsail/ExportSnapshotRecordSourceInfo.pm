package Paws::Lightsail::ExportSnapshotRecordSourceInfo;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has DiskSnapshotInfo => (is => 'ro', isa => 'Paws::Lightsail::DiskSnapshotInfo', request_name => 'diskSnapshotInfo', traits => ['NameInRequest']);
  has FromResourceArn => (is => 'ro', isa => 'Str', request_name => 'fromResourceArn', traits => ['NameInRequest']);
  has FromResourceName => (is => 'ro', isa => 'Str', request_name => 'fromResourceName', traits => ['NameInRequest']);
  has InstanceSnapshotInfo => (is => 'ro', isa => 'Paws::Lightsail::InstanceSnapshotInfo', request_name => 'instanceSnapshotInfo', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::ExportSnapshotRecordSourceInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::ExportSnapshotRecordSourceInfo object:

  $service_obj->Method(Att1 => { Arn => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::ExportSnapshotRecordSourceInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes the source of an export snapshot record.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the source instance or disk snapshot.


=head2 CreatedAt => Str

  The date when the source instance or disk snapshot was created.


=head2 DiskSnapshotInfo => L<Paws::Lightsail::DiskSnapshotInfo>

  A list of objects describing a disk snapshot.


=head2 FromResourceArn => Str

  The Amazon Resource Name (ARN) of the snapshot's source instance or
disk.


=head2 FromResourceName => Str

  The name of the snapshot's source instance or disk.


=head2 InstanceSnapshotInfo => L<Paws::Lightsail::InstanceSnapshotInfo>

  A list of objects describing an instance snapshot.


=head2 Name => Str

  The name of the source instance or disk snapshot.


=head2 ResourceType => Str

  The Lightsail resource type (e.g., C<InstanceSnapshot> or
C<DiskSnapshot>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

