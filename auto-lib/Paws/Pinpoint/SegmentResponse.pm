package Paws::Pinpoint::SegmentResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Dimensions => (is => 'ro', isa => 'Paws::Pinpoint::SegmentDimensions');
  has Id => (is => 'ro', isa => 'Str');
  has ImportDefinition => (is => 'ro', isa => 'Paws::Pinpoint::SegmentImportResource');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SegmentGroups => (is => 'ro', isa => 'Paws::Pinpoint::SegmentGroupList');
  has SegmentType => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SegmentResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SegmentResponse object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Segment definition.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The ID of the application that the segment applies to.


=head2 CreationDate => Str

  The date and time when the segment was created.


=head2 Dimensions => L<Paws::Pinpoint::SegmentDimensions>

  The segment dimensions attributes.


=head2 Id => Str

  The unique segment ID.


=head2 ImportDefinition => L<Paws::Pinpoint::SegmentImportResource>

  The import job settings.


=head2 LastModifiedDate => Str

  The date and time when the segment was last modified.


=head2 Name => Str

  The name of the segment.


=head2 SegmentGroups => L<Paws::Pinpoint::SegmentGroupList>

  A segment group, which consists of zero or more source segments, plus
dimensions that are applied to those source segments.


=head2 SegmentType => Str

  The segment type: DIMENSIONAL - A dynamic segment built from selection
criteria based on endpoint data reported by your app. You create this
type of segment by using the segment builder in the Amazon Pinpoint
console or by making a POST request to the segments resource. IMPORT -
A static segment built from an imported set of endpoint definitions.
You create this type of segment by importing a segment in the Amazon
Pinpoint console or by making a POST request to the jobs/import
resource.


=head2 Version => Int

  The segment version number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

