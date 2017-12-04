package Paws::CodeCommit::PullRequest;
  use Moose;
  has AuthorArn => (is => 'ro', isa => 'Str', request_name => 'authorArn', traits => ['NameInRequest']);
  has ClientRequestToken => (is => 'ro', isa => 'Str', request_name => 'clientRequestToken', traits => ['NameInRequest']);
  has CreationDate => (is => 'ro', isa => 'Str', request_name => 'creationDate', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LastActivityDate => (is => 'ro', isa => 'Str', request_name => 'lastActivityDate', traits => ['NameInRequest']);
  has PullRequestId => (is => 'ro', isa => 'Str', request_name => 'pullRequestId', traits => ['NameInRequest']);
  has PullRequestStatus => (is => 'ro', isa => 'Str', request_name => 'pullRequestStatus', traits => ['NameInRequest']);
  has PullRequestTargets => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::PullRequestTarget]', request_name => 'pullRequestTargets', traits => ['NameInRequest']);
  has Title => (is => 'ro', isa => 'Str', request_name => 'title', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PullRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::PullRequest object:

  $service_obj->Method(Att1 => { AuthorArn => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::PullRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthorArn

=head1 DESCRIPTION

Returns information about a pull request.

=head1 ATTRIBUTES


=head2 AuthorArn => Str

  The Amazon Resource Name (ARN) of the user who created the pull
request.


=head2 ClientRequestToken => Str

  A unique, client-generated idempotency token that when provided in a
request, ensures the request cannot be repeated with a changed
parameter. If a request is received with the same parameters and a
token is included, the request will return information about the
initial request that used that token.


=head2 CreationDate => Str

  The date and time the pull request was originally created, in timestamp
format.


=head2 Description => Str

  The user-defined description of the pull request. This description can
be used to clarify what should be reviewed and other details of the
request.


=head2 LastActivityDate => Str

  The day and time of the last user or system activity on the pull
request, in timestamp format.


=head2 PullRequestId => Str

  The system-generated ID of the pull request.


=head2 PullRequestStatus => Str

  The status of the pull request. Pull request status can only change
from C<OPEN> to C<CLOSED>.


=head2 PullRequestTargets => ArrayRef[L<Paws::CodeCommit::PullRequestTarget>]

  The targets of the pull request, including the source branch and
destination branch for the pull request.


=head2 Title => Str

  The user-defined title of the pull request. This title is displayed in
the list of pull requests to other users of the repository.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

