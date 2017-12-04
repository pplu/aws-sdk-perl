package Paws::WorkDocs::DocumentVersionMetadata;
  use Moose;
  has ContentCreatedTimestamp => (is => 'ro', isa => 'Str');
  has ContentModifiedTimestamp => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has CreatorId => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has ModifiedTimestamp => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Signature => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Int');
  has Source => (is => 'ro', isa => 'Paws::WorkDocs::DocumentSourceUrlMap');
  has Status => (is => 'ro', isa => 'Str');
  has Thumbnail => (is => 'ro', isa => 'Paws::WorkDocs::DocumentThumbnailUrlMap');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DocumentVersionMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::DocumentVersionMetadata object:

  $service_obj->Method(Att1 => { ContentCreatedTimestamp => $value, ..., Thumbnail => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::DocumentVersionMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->ContentCreatedTimestamp

=head1 DESCRIPTION

Describes a version of a document.

=head1 ATTRIBUTES


=head2 ContentCreatedTimestamp => Str

  The timestamp when the content of the document was originally created.


=head2 ContentModifiedTimestamp => Str

  The timestamp when the content of the document was modified.


=head2 ContentType => Str

  The content type of the document.


=head2 CreatedTimestamp => Str

  The timestamp when the document was first uploaded.


=head2 CreatorId => Str

  The ID of the creator.


=head2 Id => Str

  The ID of the version.


=head2 ModifiedTimestamp => Str

  The timestamp when the document was last uploaded.


=head2 Name => Str

  The name of the version.


=head2 Signature => Str

  The signature of the document.


=head2 Size => Int

  The size of the document, in bytes.


=head2 Source => L<Paws::WorkDocs::DocumentSourceUrlMap>

  The source of the document.


=head2 Status => Str

  The status of the document.


=head2 Thumbnail => L<Paws::WorkDocs::DocumentThumbnailUrlMap>

  The thumbnail of the document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

