
package Paws::CodeCommit::ListPullRequests;
  use Moose;
  has AuthorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorArn' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PullRequestStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestStatus' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPullRequests');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::ListPullRequestsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListPullRequests - Arguments for method ListPullRequests on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPullRequests on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method ListPullRequests.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPullRequests.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $ListPullRequestsOutput = $codecommit->ListPullRequests(
      RepositoryName    => 'MyRepositoryName',
      AuthorArn         => 'MyArn',              # OPTIONAL
      MaxResults        => 1,                    # OPTIONAL
      NextToken         => 'MyNextToken',        # OPTIONAL
      PullRequestStatus => 'OPEN',               # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListPullRequestsOutput->NextToken;
    my $PullRequestIds = $ListPullRequestsOutput->PullRequestIds;

    # Returns a L<Paws::CodeCommit::ListPullRequestsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/ListPullRequests>

=head1 ATTRIBUTES


=head2 AuthorArn => Str

Optional. The Amazon Resource Name (ARN) of the user who created the
pull request. If used, this filters the results to pull requests
created by that user.



=head2 MaxResults => Int

A non-negative integer used to limit the number of returned results.



=head2 NextToken => Str

An enumeration token that when provided in a request, returns the next
batch of the results.



=head2 PullRequestStatus => Str

Optional. The status of the pull request. If used, this refines the
results to the pull requests that match the specified status.

Valid values are: C<"OPEN">, C<"CLOSED">

=head2 B<REQUIRED> RepositoryName => Str

The name of the repository for which you want to list pull requests.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPullRequests in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

