
package Paws::CodeGuruReviewer::DescribeRecommendationFeedback;
  use Moose;
  has CodeReviewArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CodeReviewArn', required => 1);
  has RecommendationId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'RecommendationId', required => 1);
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'UserId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRecommendationFeedback');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/feedback/{CodeReviewArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruReviewer::DescribeRecommendationFeedbackResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::DescribeRecommendationFeedback - Arguments for method DescribeRecommendationFeedback on L<Paws::CodeGuruReviewer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRecommendationFeedback on the
L<Amazon CodeGuru Reviewer|Paws::CodeGuruReviewer> service. Use the attributes of this class
as arguments to method DescribeRecommendationFeedback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRecommendationFeedback.

=head1 SYNOPSIS

    my $codeguru-reviewer = Paws->service('CodeGuruReviewer');
    my $DescribeRecommendationFeedbackResponse =
      $codeguru -reviewer->DescribeRecommendationFeedback(
      CodeReviewArn    => 'MyArn',
      RecommendationId => 'MyRecommendationId',
      UserId           => 'MyUserId',             # OPTIONAL
      );

    # Results:
    my $RecommendationFeedback =
      $DescribeRecommendationFeedbackResponse->RecommendationFeedback;

# Returns a L<Paws::CodeGuruReviewer::DescribeRecommendationFeedbackResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer/DescribeRecommendationFeedback>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeReviewArn => Str

The Amazon Resource Name (ARN) of the C<CodeReview>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html)
object.



=head2 B<REQUIRED> RecommendationId => Str

The recommendation ID that can be used to track the provided
recommendations and then to collect the feedback.



=head2 UserId => Str

Optional parameter to describe the feedback for a given user. If this
is not supplied, it defaults to the user making the request.

The C<UserId> is an IAM principal that can be specified as an AWS
account ID or an Amazon Resource Name (ARN). For more information, see
Specifying a Principal
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying)
in the I<AWS Identity and Access Management User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRecommendationFeedback in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

