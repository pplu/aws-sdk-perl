package Paws::WorkDocs::CommentMetadata;
  use Moose;
  has CommentId => (is => 'ro', isa => 'Str');
  has CommentStatus => (is => 'ro', isa => 'Str');
  has Contributor => (is => 'ro', isa => 'Paws::WorkDocs::User');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has RecipientId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::CommentMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::CommentMetadata object:

  $service_obj->Method(Att1 => { CommentId => $value, ..., RecipientId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::CommentMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->CommentId

=head1 DESCRIPTION

Describes the metadata of a comment.

=head1 ATTRIBUTES


=head2 CommentId => Str

  The ID of the comment.


=head2 CommentStatus => Str

  The status of the comment.


=head2 Contributor => L<Paws::WorkDocs::User>

  The user who made the comment.


=head2 CreatedTimestamp => Str

  The timestamp that the comment was created.


=head2 RecipientId => Str

  The ID of the user being replied to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

