# Generated from json/callargs_class.tt

package Paws::CodeCommit::CreatePullRequest;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_Target/;
  has ClientRequestToken => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Targets => (is => 'ro', isa => ArrayRef[CodeCommit_Target], required => 1, predicate => 1);
  has Title => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreatePullRequest');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeCommit::CreatePullRequestOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'Targets' => {
                              'class' => 'Paws::CodeCommit::Target',
                              'type' => 'ArrayRef[CodeCommit_Target]'
                            },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Title' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'ClientRequestToken' => 'clientRequestToken',
                       'Targets' => 'targets',
                       'Description' => 'description',
                       'Title' => 'title'
                     },
  'IsRequired' => {
                    'Targets' => 1,
                    'Title' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::CreatePullRequest - Arguments for method CreatePullRequest on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePullRequest on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method CreatePullRequest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePullRequest.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $CreatePullRequestOutput = $codecommit->CreatePullRequest(
      Targets => [
        {
          RepositoryName       => 'MyRepositoryName',    # min: 1, max: 100
          SourceReference      => 'MyReferenceName',
          DestinationReference => 'MyReferenceName',
        },
        ...
      ],
      Title              => 'MyTitle',
      ClientRequestToken => 'MyClientRequestToken',      # OPTIONAL
      Description        => 'MyDescription',             # OPTIONAL
    );

    # Results:
    my $PullRequest = $CreatePullRequestOutput->PullRequest;

    # Returns a L<Paws::CodeCommit::CreatePullRequestOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/CreatePullRequest>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, client-generated idempotency token that when provided in a
request, ensures the request cannot be repeated with a changed
parameter. If a request is received with the same parameters and a
token is included, the request will return information about the
initial request that used that token.

The AWS SDKs prepopulate client request tokens. If using an AWS SDK,
you do not have to generate an idempotency token, as this will be done
for you.



=head2 Description => Str

A description of the pull request.



=head2 B<REQUIRED> Targets => ArrayRef[CodeCommit_Target]

The targets for the pull request, including the source of the code to
be reviewed (the source branch), and the destination where the creator
of the pull request intends the code to be merged after the pull
request is closed (the destination branch).



=head2 B<REQUIRED> Title => Str

The title of the pull request. This title will be used to identify the
pull request to other users in the repository.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePullRequest in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

