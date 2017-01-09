package Paws::Pinpoint::SegmentResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Dimensions => (is => 'ro', isa => 'Paws::Pinpoint::SegmentDimensions');
  has Id => (is => 'ro', isa => 'Str');
  has ImportDefinition => (is => 'ro', isa => 'Paws::Pinpoint::SegmentImportResource');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
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

This class has no description

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The ID of the application to which the segment applies.


=head2 CreationDate => Str

  The date the segment was created in ISO 8601 format.


=head2 Dimensions => L<Paws::Pinpoint::SegmentDimensions>

  The segment dimensions attributes.


=head2 Id => Str

  The unique segment ID.


=head2 ImportDefinition => L<Paws::Pinpoint::SegmentImportResource>

  The import job settings.


=head2 LastModifiedDate => Str

  The date the segment was last updated in ISO 8601 format.


=head2 Name => Str

  The name of segment


=head2 SegmentType => Str

  The segment type: DIMENSIONAL E<ndash> A dynamic segment built from
selection criteria based on endpoint data reported by your app. You
create this type of segment by using the segment builder in the Amazon
Pinpoint console or by making a POST request to the segments resource.
IMPORT E<ndash> A static segment built from an imported set of endpoint
definitions. You create this type of segment by importing a segment in
the Amazon Pinpoint console or by making a POST request to the
jobs/import resource.


=head2 Version => Int

  The segment version number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

