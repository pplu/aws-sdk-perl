
package Paws::CodeGuruReviewer::ListRecommendationFeedback;
  use Moose;
  has CodeReviewArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CodeReviewArn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has RecommendationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'RecommendationIds');
  has UserIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'UserIds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRecommendationFeedback');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/feedback/{CodeReviewArn}/RecommendationFeedback');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruReviewer::ListRecommendationFeedbackResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::ListRecommendationFeedback - Arguments for method ListRecommendationFeedback on L<Paws::CodeGuruReviewer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRecommendationFeedback on the
L<Amazon CodeGuru Reviewer|Paws::CodeGuruReviewer> service. Use the attributes of this class
as arguments to method ListRecommendationFeedback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRecommendationFeedback.

=head1 SYNOPSIS

    my $codeguru-reviewer = Paws->service('CodeGuruReviewer');
    my $ListRecommendationFeedbackResponse =
      $codeguru -reviewer->ListRecommendationFeedback(
      CodeReviewArn     => 'MyArn',
      MaxResults        => 1,                # OPTIONAL
      NextToken         => 'MyNextToken',    # OPTIONAL
      RecommendationIds => [
        'MyRecommendationId', ...            # min: 1, max: 64
      ],                                     # OPTIONAL
      UserIds => [
        'MyUserId', ...                      # min: 1, max: 256
      ],                                     # OPTIONAL
      );

    # Results:
    my $NextToken = $ListRecommendationFeedbackResponse->NextToken;
    my $RecommendationFeedbackSummaries =
      $ListRecommendationFeedbackResponse->RecommendationFeedbackSummaries;

# Returns a L<Paws::CodeGuruReviewer::ListRecommendationFeedbackResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer/ListRecommendationFeedback>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeReviewArn => Str

The Amazon Resource Name (ARN) of the C<CodeReview>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html)
object.



=head2 MaxResults => Int

The maximum number of results that are returned per call. The default
is 100.



=head2 NextToken => Str

If C<nextToken> is returned, there are more results available. The
value of nextToken is a unique pagination token for each page. Make the
call again using the returned token to retrieve the next page. Keep all
other arguments unchanged.



=head2 RecommendationIds => ArrayRef[Str|Undef]

Used to query the recommendation feedback for a given recommendation.



=head2 UserIds => ArrayRef[Str|Undef]

An AWS user's account ID or Amazon Resource Name (ARN). Use this ID to
query the recommendation feedback for a code review from that user.

The C<UserId> is an IAM principal that can be specified as an AWS
account ID or an Amazon Resource Name (ARN). For more information, see
Specifying a Principal
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying)
in the I<AWS Identity and Access Management User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRecommendationFeedback in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

