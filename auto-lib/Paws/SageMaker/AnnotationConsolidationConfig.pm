package Paws::SageMaker::AnnotationConsolidationConfig;
  use Moose;
  has AnnotationConsolidationLambdaArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AnnotationConsolidationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AnnotationConsolidationConfig object:

  $service_obj->Method(Att1 => { AnnotationConsolidationLambdaArn => $value, ..., AnnotationConsolidationLambdaArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AnnotationConsolidationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AnnotationConsolidationLambdaArn

=head1 DESCRIPTION

Configures how labels are consolidated across human workers.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnnotationConsolidationLambdaArn => Str

  The Amazon Resource Name (ARN) of a Lambda function implements the
logic for annotation consolidation.

For the built-in bounding box, image classification, semantic
segmentation, and text classification task types, Amazon SageMaker
Ground Truth provides the following Lambda functions:

=over

=item *

I<Bounding box> - Finds the most similar boxes from different workers
based on the Jaccard index of the boxes.

C<arn:aws:lambda:us-east-1:432418664414:function:ACS-BoundingBox>

C<arn:aws:lambda:us-east-2:266458841044:function:ACS-BoundingBox>

C<arn:aws:lambda:us-west-2:081040173940:function:ACS-BoundingBox>

C<arn:aws:lambda:eu-west-1:568282634449:function:ACS-BoundingBox>

C<arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-BoundingBox>

=item *

I<Image classification> - Uses a variant of the Expectation
Maximization approach to estimate the true class of an image based on
annotations from individual workers.

C<arn:aws:lambda:us-east-1:432418664414:function:ACS-ImageMultiClass>

C<arn:aws:lambda:us-east-2:266458841044:function:ACS-ImageMultiClass>

C<arn:aws:lambda:us-west-2:081040173940:function:ACS-ImageMultiClass>

C<arn:aws:lambda:eu-west-1:568282634449:function:ACS-ImageMultiClass>

C<arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-ImageMultiClass>

=item *

I<Semantic segmentation> - Treats each pixel in an image as a
multi-class classification and treats pixel annotations from workers as
"votes" for the correct label.

C<arn:aws:lambda:us-east-1:432418664414:function:ACS-SemanticSegmentation>

C<arn:aws:lambda:us-east-2:266458841044:function:ACS-SemanticSegmentation>

C<arn:aws:lambda:us-west-2:081040173940:function:ACS-SemanticSegmentation>

C<arn:aws:lambda:eu-west-1:568282634449:function:ACS-SemanticSegmentation>

C<arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-SemanticSegmentation>

=item *

I<Text classification> - Uses a variant of the Expectation Maximization
approach to estimate the true class of text based on annotations from
individual workers.

C<arn:aws:lambda:us-east-1:432418664414:function:ACS-TextMultiClass>

C<arn:aws:lambda:us-east-2:266458841044:function:ACS-TextMultiClass>

C<arn:aws:lambda:us-west-2:081040173940:function:ACS-TextMultiClass>

C<arn:aws:lambda:eu-west-1:568282634449:function:ACS-TextMultiClass>

C<arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-TextMultiClass>

=back

For more information, see Annotation Consolidation
(http://docs.aws.amazon.com/sagemaker/latest/dg/sms-annotation-consolidation.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

