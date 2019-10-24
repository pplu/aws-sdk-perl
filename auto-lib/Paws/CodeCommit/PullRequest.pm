# Generated from default/object.tt
package Paws::CodeCommit::PullRequest;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_PullRequestTarget/;
  has AuthorArn => (is => 'ro', isa => Str);
  has ClientRequestToken => (is => 'ro', isa => Str);
  has CreationDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has LastActivityDate => (is => 'ro', isa => Str);
  has PullRequestId => (is => 'ro', isa => Str);
  has PullRequestStatus => (is => 'ro', isa => Str);
  has PullRequestTargets => (is => 'ro', isa => ArrayRef[CodeCommit_PullRequestTarget]);
  has Title => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PullRequestStatus' => {
                                        'type' => 'Str'
                                      },
               'PullRequestId' => {
                                    'type' => 'Str'
                                  },
               'Title' => {
                            'type' => 'Str'
                          },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'AuthorArn' => {
                                'type' => 'Str'
                              },
               'PullRequestTargets' => {
                                         'class' => 'Paws::CodeCommit::PullRequestTarget',
                                         'type' => 'ArrayRef[CodeCommit_PullRequestTarget]'
                                       },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'Description' => {
                                  'type' => 'Str'
                                },
               'LastActivityDate' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'PullRequestStatus' => 'pullRequestStatus',
                       'PullRequestId' => 'pullRequestId',
                       'Title' => 'title',
                       'ClientRequestToken' => 'clientRequestToken',
                       'AuthorArn' => 'authorArn',
                       'PullRequestTargets' => 'pullRequestTargets',
                       'CreationDate' => 'creationDate',
                       'Description' => 'description',
                       'LastActivityDate' => 'lastActivityDate'
                     }
}
;
    return $Params_map;
  }


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


=head2 PullRequestTargets => ArrayRef[CodeCommit_PullRequestTarget]

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

