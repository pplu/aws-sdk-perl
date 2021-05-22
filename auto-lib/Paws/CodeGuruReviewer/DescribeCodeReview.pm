
package Paws::CodeGuruReviewer::DescribeCodeReview;
  use Moose;
  has CodeReviewArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CodeReviewArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCodeReview');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/codereviews/{CodeReviewArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruReviewer::DescribeCodeReviewResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::DescribeCodeReview - Arguments for method DescribeCodeReview on L<Paws::CodeGuruReviewer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCodeReview on the
L<Amazon CodeGuru Reviewer|Paws::CodeGuruReviewer> service. Use the attributes of this class
as arguments to method DescribeCodeReview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCodeReview.

=head1 SYNOPSIS

    my $codeguru-reviewer = Paws->service('CodeGuruReviewer');
    my $DescribeCodeReviewResponse = $codeguru -reviewer->DescribeCodeReview(
      CodeReviewArn => 'MyArn',

    );

    # Results:
    my $CodeReview = $DescribeCodeReviewResponse->CodeReview;

    # Returns a L<Paws::CodeGuruReviewer::DescribeCodeReviewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer/DescribeCodeReview>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeReviewArn => Str

The Amazon Resource Name (ARN) of the C<CodeReview>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html)
object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCodeReview in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

