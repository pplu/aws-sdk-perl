package Paws::CodeGuruReviewer;
  use Moose;
  sub service { 'codeguru-reviewer' }
  sub signing_name { 'codeguru-reviewer' }
  sub version { '2019-09-19' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::AssociateRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCodeReview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::CreateCodeReview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCodeReview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::DescribeCodeReview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRecommendationFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::DescribeRecommendationFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRepositoryAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::DescribeRepositoryAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::DisassociateRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCodeReviews {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::ListCodeReviews', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecommendationFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::ListRecommendationFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::ListRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRepositoryAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::ListRepositoryAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRecommendationFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::PutRecommendationFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeGuruReviewer::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllRepositoryAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRepositoryAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRepositoryAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->RepositoryAssociationSummaries }, @{ $next_result->RepositoryAssociationSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RepositoryAssociationSummaries') foreach (@{ $result->RepositoryAssociationSummaries });
        $result = $self->ListRepositoryAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RepositoryAssociationSummaries') foreach (@{ $result->RepositoryAssociationSummaries });
    }

    return undef
  }


  sub operations { qw/AssociateRepository CreateCodeReview DescribeCodeReview DescribeRecommendationFeedback DescribeRepositoryAssociation DisassociateRepository ListCodeReviews ListRecommendationFeedback ListRecommendations ListRepositoryAssociations ListTagsForResource PutRecommendationFeedback TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer - Perl Interface to AWS Amazon CodeGuru Reviewer

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodeGuruReviewer');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

This section provides documentation for the Amazon CodeGuru Reviewer
API operations. CodeGuru Reviewer is a service that uses program
analysis and machine learning to detect potential defects that are
difficult for developers to find and recommends fixes in your Java and
Python code.

By proactively detecting and providing recommendations for addressing
code defects and implementing best practices, CodeGuru Reviewer
improves the overall quality and maintainability of your code base
during the code review stage. For more information about CodeGuru
Reviewer, see the I< Amazon CodeGuru Reviewer User Guide
(https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/welcome.html).>

To improve the security of your CodeGuru Reviewer API calls, you can
establish a private connection between your VPC and CodeGuru Reviewer
by creating an I<interface VPC endpoint>. For more information, see
CodeGuru Reviewer and interface VPC endpoints (AWS PrivateLink)
(https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/vpc-interface-endpoints.html)
in the I<Amazon CodeGuru Reviewer User Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19>


=head1 METHODS

=head2 AssociateRepository

=over

=item Repository => L<Paws::CodeGuruReviewer::Repository>

=item [ClientRequestToken => Str]

=item [KMSKeyDetails => L<Paws::CodeGuruReviewer::KMSKeyDetails>]

=item [Tags => L<Paws::CodeGuruReviewer::TagMap>]


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::AssociateRepository>

Returns: a L<Paws::CodeGuruReviewer::AssociateRepositoryResponse> instance

Use to associate an AWS CodeCommit repository or a repostory managed by
AWS CodeStar Connections with Amazon CodeGuru Reviewer. When you
associate a repository, CodeGuru Reviewer reviews source code changes
in the repository's pull requests and provides automatic
recommendations. You can view recommendations using the CodeGuru
Reviewer console. For more information, see Recommendations in Amazon
CodeGuru Reviewer
(https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/recommendations.html)
in the I<Amazon CodeGuru Reviewer User Guide.>

If you associate a CodeCommit or S3 repository, it must be in the same
AWS Region and AWS account where its CodeGuru Reviewer code reviews are
configured.

Bitbucket and GitHub Enterprise Server repositories are managed by AWS
CodeStar Connections to connect to CodeGuru Reviewer. For more
information, see Associate a repository
(https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-associate-repository.html)
in the I<Amazon CodeGuru Reviewer User Guide.>

You cannot use the CodeGuru Reviewer SDK or the AWS CLI to associate a
GitHub repository with Amazon CodeGuru Reviewer. To associate a GitHub
repository, use the console. For more information, see Getting started
with CodeGuru Reviewer
(https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-with-guru.html)
in the I<CodeGuru Reviewer User Guide.>


=head2 CreateCodeReview

=over

=item Name => Str

=item RepositoryAssociationArn => Str

=item Type => L<Paws::CodeGuruReviewer::CodeReviewType>

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::CreateCodeReview>

Returns: a L<Paws::CodeGuruReviewer::CreateCodeReviewResponse> instance

Use to create a code review with a C<CodeReviewType>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html)
of C<RepositoryAnalysis>. This type of code review analyzes all code
under a specified branch in an associated repository. C<PullRequest>
code reviews are automatically triggered by a pull request.


=head2 DescribeCodeReview

=over

=item CodeReviewArn => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::DescribeCodeReview>

Returns: a L<Paws::CodeGuruReviewer::DescribeCodeReviewResponse> instance

Returns the metadata associated with the code review along with its
status.


=head2 DescribeRecommendationFeedback

=over

=item CodeReviewArn => Str

=item RecommendationId => Str

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::DescribeRecommendationFeedback>

Returns: a L<Paws::CodeGuruReviewer::DescribeRecommendationFeedbackResponse> instance

Describes the customer feedback for a CodeGuru Reviewer recommendation.


=head2 DescribeRepositoryAssociation

=over

=item AssociationArn => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::DescribeRepositoryAssociation>

Returns: a L<Paws::CodeGuruReviewer::DescribeRepositoryAssociationResponse> instance

Returns a C<RepositoryAssociation>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html)
object that contains information about the requested repository
association.


=head2 DisassociateRepository

=over

=item AssociationArn => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::DisassociateRepository>

Returns: a L<Paws::CodeGuruReviewer::DisassociateRepositoryResponse> instance

Removes the association between Amazon CodeGuru Reviewer and a
repository.


=head2 ListCodeReviews

=over

=item Type => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProviderTypes => ArrayRef[Str|Undef]]

=item [RepositoryNames => ArrayRef[Str|Undef]]

=item [States => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::ListCodeReviews>

Returns: a L<Paws::CodeGuruReviewer::ListCodeReviewsResponse> instance

Lists all the code reviews that the customer has created in the past 90
days.


=head2 ListRecommendationFeedback

=over

=item CodeReviewArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RecommendationIds => ArrayRef[Str|Undef]]

=item [UserIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::ListRecommendationFeedback>

Returns: a L<Paws::CodeGuruReviewer::ListRecommendationFeedbackResponse> instance

Returns a list of C<RecommendationFeedbackSummary>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RecommendationFeedbackSummary.html)
objects that contain customer recommendation feedback for all CodeGuru
Reviewer users.


=head2 ListRecommendations

=over

=item CodeReviewArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::ListRecommendations>

Returns: a L<Paws::CodeGuruReviewer::ListRecommendationsResponse> instance

Returns the list of all recommendations for a completed code review.


=head2 ListRepositoryAssociations

=over

=item [MaxResults => Int]

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]

=item [Owners => ArrayRef[Str|Undef]]

=item [ProviderTypes => ArrayRef[Str|Undef]]

=item [States => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::ListRepositoryAssociations>

Returns: a L<Paws::CodeGuruReviewer::ListRepositoryAssociationsResponse> instance

Returns a list of C<RepositoryAssociationSummary>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html)
objects that contain summary information about a repository
association. You can filter the returned list by C<ProviderType>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-ProviderType),
C<Name>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Name),
C<State>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-State),
and C<Owner>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Owner).


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::ListTagsForResource>

Returns: a L<Paws::CodeGuruReviewer::ListTagsForResourceResponse> instance

Returns the list of tags associated with an associated repository
resource.


=head2 PutRecommendationFeedback

=over

=item CodeReviewArn => Str

=item Reactions => ArrayRef[Str|Undef]

=item RecommendationId => Str


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::PutRecommendationFeedback>

Returns: a L<Paws::CodeGuruReviewer::PutRecommendationFeedbackResponse> instance

Stores customer feedback for a CodeGuru Reviewer recommendation. When
this API is called again with different reactions the previous feedback
is overwritten.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::CodeGuruReviewer::TagMap>


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::TagResource>

Returns: a L<Paws::CodeGuruReviewer::TagResourceResponse> instance

Adds one or more tags to an associated repository.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeGuruReviewer::UntagResource>

Returns: a L<Paws::CodeGuruReviewer::UntagResourceResponse> instance

Removes a tag from an associated repository.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllRepositoryAssociations(sub { },[MaxResults => Int, Names => ArrayRef[Str|Undef], NextToken => Str, Owners => ArrayRef[Str|Undef], ProviderTypes => ArrayRef[Str|Undef], States => ArrayRef[Str|Undef]])

=head2 ListAllRepositoryAssociations([MaxResults => Int, Names => ArrayRef[Str|Undef], NextToken => Str, Owners => ArrayRef[Str|Undef], ProviderTypes => ArrayRef[Str|Undef], States => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RepositoryAssociationSummaries, passing the object as the first parameter, and the string 'RepositoryAssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::CodeGuruReviewer::ListRepositoryAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

