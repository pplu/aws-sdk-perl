package Paws::WorkDocs::ResourceMetadata;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OriginalName => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Paws::WorkDocs::UserMetadata');
  has ParentId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::ResourceMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::ResourceMetadata object:

  $service_obj->Method(Att1 => { Id => $value, ..., VersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::ResourceMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Describes the metadata of a resource.

=head1 ATTRIBUTES


=head2 Id => Str

  The ID of the resource.


=head2 Name => Str

  The name of the resource.


=head2 OriginalName => Str

  The original name of the resource before a rename operation.


=head2 Owner => L<Paws::WorkDocs::UserMetadata>

  The owner of the resource.


=head2 ParentId => Str

  The parent ID of the resource before a rename operation.


=head2 Type => Str

  The type of resource.


=head2 VersionId => Str

  The version ID of the resource. This is an optional field and is filled
for action on document version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

