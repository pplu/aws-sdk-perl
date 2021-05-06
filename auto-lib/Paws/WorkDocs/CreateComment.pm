
package Paws::WorkDocs::CreateComment;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has DocumentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DocumentId', required => 1);
  has NotifyCollaborators => (is => 'ro', isa => 'Bool');
  has ParentId => (is => 'ro', isa => 'Str');
  has Text => (is => 'ro', isa => 'Str', required => 1);
  has ThreadId => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'VersionId', required => 1);
  has Visibility => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateComment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/documents/{DocumentId}/versions/{VersionId}/comment');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::CreateCommentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::CreateComment - Arguments for method CreateComment on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateComment on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method CreateComment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateComment.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $CreateCommentResponse = $workdocs->CreateComment(
      DocumentId          => 'MyResourceIdType',
      Text                => 'MyCommentTextType',
      VersionId           => 'MyDocumentVersionIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      NotifyCollaborators => 1,                               # OPTIONAL
      ParentId            => 'MyCommentIdType',               # OPTIONAL
      ThreadId            => 'MyCommentIdType',               # OPTIONAL
      Visibility          => 'PUBLIC',                        # OPTIONAL
    );

    # Results:
    my $Comment = $CreateCommentResponse->Comment;

    # Returns a L<Paws::WorkDocs::CreateCommentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/CreateComment>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 B<REQUIRED> DocumentId => Str

The ID of the document.



=head2 NotifyCollaborators => Bool

Set this parameter to TRUE to send an email out to the document
collaborators after the comment is created.



=head2 ParentId => Str

The ID of the parent comment.



=head2 B<REQUIRED> Text => Str

The text of the comment.



=head2 ThreadId => Str

The ID of the root comment in the thread.



=head2 B<REQUIRED> VersionId => Str

The ID of the document version.



=head2 Visibility => Str

The visibility of the comment. Options are either PRIVATE, where the
comment is visible only to the comment author and document owner and
co-owners, or PUBLIC, where the comment is visible to document owners,
co-owners, and contributors.

Valid values are: C<"PUBLIC">, C<"PRIVATE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateComment in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

