package Paws::WorkDocs::Comment;
  use Moose;
  has CommentId => (is => 'ro', isa => 'Str', required => 1);
  has Contributor => (is => 'ro', isa => 'Paws::WorkDocs::User');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has ParentId => (is => 'ro', isa => 'Str');
  has RecipientId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Text => (is => 'ro', isa => 'Str');
  has ThreadId => (is => 'ro', isa => 'Str');
  has Visibility => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::Comment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::Comment object:

  $service_obj->Method(Att1 => { CommentId => $value, ..., Visibility => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::Comment object:

  $result = $service_obj->Method(...);
  $result->Att1->CommentId

=head1 DESCRIPTION

Describes a comment.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommentId => Str

  The ID of the comment.


=head2 Contributor => L<Paws::WorkDocs::User>

  The details of the user who made the comment.


=head2 CreatedTimestamp => Str

  The time that the comment was created.


=head2 ParentId => Str

  The ID of the parent comment.


=head2 RecipientId => Str

  If the comment is a reply to another user's comment, this field
contains the user ID of the user being replied to.


=head2 Status => Str

  The status of the comment.


=head2 Text => Str

  The text of the comment.


=head2 ThreadId => Str

  The ID of the root comment in the thread.


=head2 Visibility => Str

  The visibility of the comment. Options are either PRIVATE, where the
comment is visible only to the comment author and document owner and
co-owners, or PUBLIC, where the comment is visible to document owners,
co-owners, and contributors.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

