package Paws::Lightsail::ExportSnapshotRecord;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has DestinationInfo => (is => 'ro', isa => 'Paws::Lightsail::DestinationInfo', request_name => 'destinationInfo', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::Lightsail::ResourceLocation', request_name => 'location', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has SourceInfo => (is => 'ro', isa => 'Paws::Lightsail::ExportSnapshotRecordSourceInfo', request_name => 'sourceInfo', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
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


=head2 DestinationInfo => L<Paws::Lightsail::DestinationInfo>

  A list of objects describing the destination of the export snapshot
record.


=head2 Location => L<Paws::Lightsail::ResourceLocation>

  The AWS Region and Availability Zone where the export snapshot record
is located.


=head2 Name => Str

  The export snapshot record name.


=head2 ResourceType => Str

  The Lightsail resource type (e.g., C<ExportSnapshotRecord>).


=head2 SourceInfo => L<Paws::Lightsail::ExportSnapshotRecordSourceInfo>

  A list of objects describing the source of the export snapshot record.


=head2 State => Str

  The state of the export snapshot record.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

