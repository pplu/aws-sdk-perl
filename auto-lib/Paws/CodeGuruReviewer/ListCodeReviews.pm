
package Paws::CodeGuruReviewer::ListCodeReviews;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has ProviderTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'ProviderTypes');
  has RepositoryNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'RepositoryNames');
  has States => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'States');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCodeReviews');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/codereviews');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruReviewer::ListCodeReviewsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::ListCodeReviews - Arguments for method ListCodeReviews on L<Paws::CodeGuruReviewer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCodeReviews on the
L<Amazon CodeGuru Reviewer|Paws::CodeGuruReviewer> service. Use the attributes of this class
as arguments to method ListCodeReviews.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCodeReviews.

=head1 SYNOPSIS

    my $codeguru-reviewer = Paws->service('CodeGuruReviewer');
    my $ListCodeReviewsResponse = $codeguru -reviewer->ListCodeReviews(
      Type          => 'PullRequest',
      MaxResults    => 1,                # OPTIONAL
      NextToken     => 'MyNextToken',    # OPTIONAL
      ProviderTypes => [
        'CodeCommit',
        ...    # values: CodeCommit, GitHub, Bitbucket, GitHubEnterpriseServer
      ],       # OPTIONAL
      RepositoryNames => [
        'MyName', ...    # min: 1, max: 100
      ],                 # OPTIONAL
      States => [
        'Completed', ...    # values: Completed, Pending, Failed, Deleting
      ],                    # OPTIONAL
    );

    # Results:
    my $CodeReviewSummaries = $ListCodeReviewsResponse->CodeReviewSummaries;
    my $NextToken           = $ListCodeReviewsResponse->NextToken;

    # Returns a L<Paws::CodeGuruReviewer::ListCodeReviewsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer/ListCodeReviews>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results that are returned per call. The default
is 100.



=head2 NextToken => Str

If nextToken is returned, there are more results available. The value
of nextToken is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page. Keep all
other arguments unchanged.



=head2 ProviderTypes => ArrayRef[Str|Undef]

List of provider types for filtering that needs to be applied before
displaying the result. For example, C<providerTypes=[GitHub]> lists
code reviews from GitHub.



=head2 RepositoryNames => ArrayRef[Str|Undef]

List of repository names for filtering that needs to be applied before
displaying the result.



=head2 States => ArrayRef[Str|Undef]

List of states for filtering that needs to be applied before displaying
the result. For example, C<states=[Pending]> lists code reviews in the
Pending state.

The valid code review states are:

=over

=item *

C<Completed>: The code review is complete.

=item *

C<Pending>: The code review started and has not completed or failed.

=item *

C<Failed>: The code review failed.

=item *

C<Deleting>: The code review is being deleted.

=back




=head2 B<REQUIRED> Type => Str

The type of code reviews to list in the response.

Valid values are: C<"PullRequest">, C<"RepositoryAnalysis">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCodeReviews in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

