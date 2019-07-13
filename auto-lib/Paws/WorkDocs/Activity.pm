package Paws::WorkDocs::Activity;
  use Moose;
  has CommentMetadata => (is => 'ro', isa => 'Paws::WorkDocs::CommentMetadata');
  has Initiator => (is => 'ro', isa => 'Paws::WorkDocs::UserMetadata');
  has IsIndirectActivity => (is => 'ro', isa => 'Bool');
  has OrganizationId => (is => 'ro', isa => 'Str');
  has OriginalParent => (is => 'ro', isa => 'Paws::WorkDocs::ResourceMetadata');
  has Participants => (is => 'ro', isa => 'Paws::WorkDocs::Participants');
  has ResourceMetadata => (is => 'ro', isa => 'Paws::WorkDocs::ResourceMetadata');
  has TimeStamp => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::Activity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::Activity object:

  $service_obj->Method(Att1 => { CommentMetadata => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::Activity object:

  $result = $service_obj->Method(...);
  $result->Att1->CommentMetadata

=head1 DESCRIPTION

Describes the activity information.

=head1 ATTRIBUTES


=head2 CommentMetadata => L<Paws::WorkDocs::CommentMetadata>

  Metadata of the commenting activity. This is an optional field and is
filled for commenting activities.


=head2 Initiator => L<Paws::WorkDocs::UserMetadata>

  The user who performed the action.


=head2 IsIndirectActivity => Bool

  Indicates whether an activity is indirect or direct. An indirect
activity results from a direct activity performed on a parent resource.
For example, sharing a parent folder (the direct activity) shares all
of the subfolders and documents within the parent folder (the indirect
activity).


=head2 OrganizationId => Str

  The ID of the organization.


=head2 OriginalParent => L<Paws::WorkDocs::ResourceMetadata>

  The original parent of the resource. This is an optional field and is
filled for move activities.


=head2 Participants => L<Paws::WorkDocs::Participants>

  The list of users or groups impacted by this action. This is an
optional field and is filled for the following sharing activities:
DOCUMENT_SHARED, DOCUMENT_SHARED, DOCUMENT_UNSHARED, FOLDER_SHARED,
FOLDER_UNSHARED.


=head2 ResourceMetadata => L<Paws::WorkDocs::ResourceMetadata>

  The metadata of the resource involved in the user action.


=head2 TimeStamp => Str

  The timestamp when the action was performed.


=head2 Type => Str

  The activity type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

