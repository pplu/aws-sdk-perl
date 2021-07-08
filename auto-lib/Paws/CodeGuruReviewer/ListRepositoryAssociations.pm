
package Paws::CodeGuruReviewer::ListRepositoryAssociations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'Name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has Owners => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'Owner');
  has ProviderTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'ProviderType');
  has States => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'State');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRepositoryAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruReviewer::ListRepositoryAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::ListRepositoryAssociations - Arguments for method ListRepositoryAssociations on L<Paws::CodeGuruReviewer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRepositoryAssociations on the
L<Amazon CodeGuru Reviewer|Paws::CodeGuruReviewer> service. Use the attributes of this class
as arguments to method ListRepositoryAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRepositoryAssociations.

=head1 SYNOPSIS

    my $codeguru-reviewer = Paws->service('CodeGuruReviewer');
    my $ListRepositoryAssociationsResponse =
      $codeguru -reviewer->ListRepositoryAssociations(
      MaxResults => 1,    # OPTIONAL
      Names      => [
        'MyName', ...     # min: 1, max: 100
      ],    # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
      Owners    => [
        'MyOwner', ...               # min: 1, max: 100
      ],    # OPTIONAL
      ProviderTypes => [
        'CodeCommit',
        ... # values: CodeCommit, GitHub, Bitbucket, GitHubEnterpriseServer, S3Bucket
      ],    # OPTIONAL
      States => [
        'Associated',
        ... # values: Associated, Associating, Failed, Disassociating, Disassociated
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListRepositoryAssociationsResponse->NextToken;
    my $RepositoryAssociationSummaries =
      $ListRepositoryAssociationsResponse->RepositoryAssociationSummaries;

# Returns a L<Paws::CodeGuruReviewer::ListRepositoryAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer/ListRepositoryAssociations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of repository association results returned by
C<ListRepositoryAssociations> in paginated output. When this parameter
is used, C<ListRepositoryAssociations> only returns C<maxResults>
results in a single page with a C<nextToken> response element. The
remaining results of the initial request can be seen by sending another
C<ListRepositoryAssociations> request with the returned C<nextToken>
value. This value can be between 1 and 100. If this parameter is not
used, C<ListRepositoryAssociations> returns up to 100 results and a
C<nextToken> value if applicable.



=head2 Names => ArrayRef[Str|Undef]

List of repository names to use as a filter.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListRepositoryAssociations> request where C<maxResults> was used and
the results exceeded the value of that parameter. Pagination continues
from the end of the previous results that returned the C<nextToken>
value.

Treat this token as an opaque identifier that is only used to retrieve
the next items in a list and not for other programmatic purposes.



=head2 Owners => ArrayRef[Str|Undef]

List of owners to use as a filter. For AWS CodeCommit, it is the name
of the CodeCommit account that was used to associate the repository.
For other repository source providers, such as Bitbucket and GitHub
Enterprise Server, this is name of the account that was used to
associate the repository.



=head2 ProviderTypes => ArrayRef[Str|Undef]

List of provider types to use as a filter.



=head2 States => ArrayRef[Str|Undef]

List of repository association states to use as a filter.

The valid repository association states are:

=over

=item *

B<Associated>: The repository association is complete.

=item *

B<Associating>: CodeGuru Reviewer is:

=over

=item *

Setting up pull request notifications. This is required for pull
requests to trigger a CodeGuru Reviewer review.

If your repository C<ProviderType> is C<GitHub>, C<GitHub Enterprise
Server>, or C<Bitbucket>, CodeGuru Reviewer creates webhooks in your
repository to trigger CodeGuru Reviewer reviews. If you delete these
webhooks, reviews of code in your repository cannot be triggered.

=item *

Setting up source code access. This is required for CodeGuru Reviewer
to securely clone code in your repository.

=back

=item *

B<Failed>: The repository failed to associate or disassociate.

=item *

B<Disassociating>: CodeGuru Reviewer is removing the repository's pull
request notifications and source code access.

=item *

B<Disassociated>: CodeGuru Reviewer successfully disassociated the
repository. You can create a new association with this repository if
you want to review source code in it later. You can control access to
code reviews created in an associated repository with tags after it has
been disassociated. For more information, see Using tags to control
access to associated repositories
(https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html)
in the I<Amazon CodeGuru Reviewer User Guide>.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRepositoryAssociations in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

