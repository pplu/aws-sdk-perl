
package Paws::CodeGuruReviewer::PutRecommendationFeedback;
  use Moose;
  has CodeReviewArn => (is => 'ro', isa => 'Str', required => 1);
  has Reactions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has RecommendationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRecommendationFeedback');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/feedback');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruReviewer::PutRecommendationFeedbackResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::PutRecommendationFeedback - Arguments for method PutRecommendationFeedback on L<Paws::CodeGuruReviewer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRecommendationFeedback on the
L<Amazon CodeGuru Reviewer|Paws::CodeGuruReviewer> service. Use the attributes of this class
as arguments to method PutRecommendationFeedback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRecommendationFeedback.

=head1 SYNOPSIS

    my $codeguru-reviewer = Paws->service('CodeGuruReviewer');
    my $PutRecommendationFeedbackResponse =
      $codeguru -reviewer->PutRecommendationFeedback(
      CodeReviewArn => 'MyArn',
      Reactions     => [
        'ThumbsUp', ...    # values: ThumbsUp, ThumbsDown
      ],
      RecommendationId => 'MyRecommendationId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer/PutRecommendationFeedback>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeReviewArn => Str

The Amazon Resource Name (ARN) of the C<CodeReview>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html)
object.



=head2 B<REQUIRED> Reactions => ArrayRef[Str|Undef]

List for storing reactions. Reactions are utf-8 text code for emojis.
If you send an empty list it clears all your feedback.



=head2 B<REQUIRED> RecommendationId => Str

The recommendation ID that can be used to track the provided
recommendations and then to collect the feedback.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRecommendationFeedback in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

