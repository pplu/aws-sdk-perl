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

C<arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-BoundingBox>

C<arn:aws:lambda:ap-south-1:565803892007:function:ACS-BoundingBox>

C<arn:aws:lambda:eu-central-1:203001061592:function:ACS-BoundingBox>

C<arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-BoundingBox>

C<arn:aws:lambda:eu-west-2:487402164563:function:ACS-BoundingBox>

C<arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-BoundingBox>

C<arn:aws:lambda:ca-central-1:918755190332:function:ACS-BoundingBox>

=item *

I<Image classification> - Uses a variant of the Expectation
Maximization approach to estimate the true class of an image based on
annotations from individual workers.

C<arn:aws:lambda:us-east-1:432418664414:function:ACS-ImageMultiClass>

C<arn:aws:lambda:us-east-2:266458841044:function:ACS-ImageMultiClass>

C<arn:aws:lambda:us-west-2:081040173940:function:ACS-ImageMultiClass>

C<arn:aws:lambda:eu-west-1:568282634449:function:ACS-ImageMultiClass>

C<arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-ImageMultiClass>

C<arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-ImageMultiClass>

C<arn:aws:lambda:ap-south-1:565803892007:function:ACS-ImageMultiClass>

C<arn:aws:lambda:eu-central-1:203001061592:function:ACS-ImageMultiClass>

C<arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-ImageMultiClass>

C<arn:aws:lambda:eu-west-2:487402164563:function:ACS-ImageMultiClass>

C<arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-ImageMultiClass>

C<arn:aws:lambda:ca-central-1:918755190332:function:ACS-ImageMultiClass>

=item *

I<Semantic segmentation> - Treats each pixel in an image as a
multi-class classification and treats pixel annotations from workers as
"votes" for the correct label.

C<arn:aws:lambda:us-east-1:432418664414:function:ACS-SemanticSegmentation>

C<arn:aws:lambda:us-east-2:266458841044:function:ACS-SemanticSegmentation>

C<arn:aws:lambda:us-west-2:081040173940:function:ACS-SemanticSegmentation>

C<arn:aws:lambda:eu-west-1:568282634449:function:ACS-SemanticSegmentation>

C<arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-SemanticSegmentation>

C<arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-SemanticSegmentation>

C<arn:aws:lambda:ap-south-1:565803892007:function:ACS-SemanticSegmentation>

C<arn:aws:lambda:eu-central-1:203001061592:function:ACS-SemanticSegmentation>

C<arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-SemanticSegmentation>

C<arn:aws:lambda:eu-west-2:487402164563:function:ACS-SemanticSegmentation>

C<arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-SemanticSegmentation>

C<arn:aws:lambda:ca-central-1:918755190332:function:ACS-SemanticSegmentation>

=item *

I<Text classification> - Uses a variant of the Expectation Maximization
approach to estimate the true class of text based on annotations from
individual workers.

C<arn:aws:lambda:us-east-1:432418664414:function:ACS-TextMultiClass>

C<arn:aws:lambda:us-east-2:266458841044:function:ACS-TextMultiClass>

C<arn:aws:lambda:us-west-2:081040173940:function:ACS-TextMultiClass>

C<arn:aws:lambda:eu-west-1:568282634449:function:ACS-TextMultiClass>

C<arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-TextMultiClass>

C<arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-TextMultiClass>

C<arn:aws:lambda:ap-south-1:565803892007:function:ACS-TextMultiClass>

C<arn:aws:lambda:eu-central-1:203001061592:function:ACS-TextMultiClass>

C<arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-TextMultiClass>

C<arn:aws:lambda:eu-west-2:487402164563:function:ACS-TextMultiClass>

C<arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-TextMultiClass>

C<arn:aws:lambda:ca-central-1:918755190332:function:ACS-TextMultiClass>

=item *

I<Named entity recognition> - Groups similar selections and calculates
aggregate boundaries, resolving to most-assigned label.

C<arn:aws:lambda:us-east-1:432418664414:function:ACS-NamedEntityRecognition>

C<arn:aws:lambda:us-east-2:266458841044:function:ACS-NamedEntityRecognition>

C<arn:aws:lambda:us-west-2:081040173940:function:ACS-NamedEntityRecognition>

C<arn:aws:lambda:eu-west-1:568282634449:function:ACS-NamedEntityRecognition>

C<arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-NamedEntityRecognition>

C<arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-NamedEntityRecognition>

C<arn:aws:lambda:ap-south-1:565803892007:function:ACS-NamedEntityRecognition>

C<arn:aws:lambda:eu-central-1:203001061592:function:ACS-NamedEntityRecognition>

C<arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-NamedEntityRecognition>

C<arn:aws:lambda:eu-west-2:487402164563:function:ACS-NamedEntityRecognition>

C<arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-NamedEntityRecognition>

C<arn:aws:lambda:ca-central-1:918755190332:function:ACS-NamedEntityRecognition>

=item *

I<Bounding box verification> - Uses a variant of the Expectation
Maximization approach to estimate the true class of verification
judgement for bounding box labels based on annotations from individual
workers.

C<arn:aws:lambda:us-east-1:432418664414:function:ACS-VerificationBoundingBox>

C<arn:aws:lambda:us-east-2:266458841044:function:ACS-VerificationBoundingBox>

C<arn:aws:lambda:us-west-2:081040173940:function:ACS-VerificationBoundingBox>

C<arn:aws:lambda:eu-west-1:568282634449:function:ACS-VerificationBoundingBox>

C<arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-VerificationBoundingBox>

C<arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-VerificationBoundingBox>

C<arn:aws:lambda:ap-south-1:565803892007:function:ACS-VerificationBoundingBox>

C<arn:aws:lambda:eu-central-1:203001061592:function:ACS-VerificationBoundingBox>

C<arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-VerificationBoundingBox>

C<arn:aws:lambda:eu-west-2:487402164563:function:ACS-VerificationBoundingBox>

C<arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-VerificationBoundingBox>

C<arn:aws:lambda:ca-central-1:918755190332:function:ACS-VerificationBoundingBox>

=item *

I<Semantic segmentation verification> - Uses a variant of the
Expectation Maximization approach to estimate the true class of
verification judgement for semantic segmentation labels based on
annotations from individual workers.

C<arn:aws:lambda:us-east-1:432418664414:function:ACS-VerificationSemanticSegmentation>

C<arn:aws:lambda:us-east-2:266458841044:function:ACS-VerificationSemanticSegmentation>

C<arn:aws:lambda:us-west-2:081040173940:function:ACS-VerificationSemanticSegmentation>

C<arn:aws:lambda:eu-west-1:568282634449:function:ACS-VerificationSemanticSegmentation>

C<arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-VerificationSemanticSegmentation>

C<arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-VerificationSemanticSegmentation>

C<arn:aws:lambda:ap-south-1:565803892007:function:ACS-VerificationSemanticSegmentation>

C<arn:aws:lambda:eu-central-1:203001061592:function:ACS-VerificationSemanticSegmentation>

C<arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-VerificationSemanticSegmentation>

C<arn:aws:lambda:eu-west-2:487402164563:function:ACS-VerificationSemanticSegmentation>

C<arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-VerificationSemanticSegmentation>

C<arn:aws:lambda:ca-central-1:918755190332:function:ACS-VerificationSemanticSegmentation>

=item *

I<Bounding box adjustment> - Finds the most similar boxes from
different workers based on the Jaccard index of the adjusted
annotations.

C<arn:aws:lambda:us-east-1:432418664414:function:ACS-AdjustmentBoundingBox>

C<arn:aws:lambda:us-east-2:266458841044:function:ACS-AdjustmentBoundingBox>

C<arn:aws:lambda:us-west-2:081040173940:function:ACS-AdjustmentBoundingBox>

C<arn:aws:lambda:eu-west-1:568282634449:function:ACS-AdjustmentBoundingBox>

C<arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-AdjustmentBoundingBox>

C<arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-AdjustmentBoundingBox>

C<arn:aws:lambda:ap-south-1:565803892007:function:ACS-AdjustmentBoundingBox>

C<arn:aws:lambda:eu-central-1:203001061592:function:ACS-AdjustmentBoundingBox>

C<arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-AdjustmentBoundingBox>

C<arn:aws:lambda:eu-west-2:487402164563:function:ACS-AdjustmentBoundingBox>

C<arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-AdjustmentBoundingBox>

C<arn:aws:lambda:ca-central-1:918755190332:function:ACS-AdjustmentBoundingBox>

=item *

I<Semantic segmentation adjustment> - Treats each pixel in an image as
a multi-class classification and treats pixel adjusted annotations from
workers as "votes" for the correct label.

C<arn:aws:lambda:us-east-1:432418664414:function:ACS-AdjustmentSemanticSegmentation>

C<arn:aws:lambda:us-east-2:266458841044:function:ACS-AdjustmentSemanticSegmentation>

C<arn:aws:lambda:us-west-2:081040173940:function:ACS-AdjustmentSemanticSegmentation>

C<arn:aws:lambda:eu-west-1:568282634449:function:ACS-AdjustmentSemanticSegmentation>

C<arn:aws:lambda:ap-northeast-1:477331159723:function:ACS-AdjustmentSemanticSegmentation>

C<arn:aws:lambda:ap-southeast-2:454466003867:function:ACS-AdjustmentSemanticSegmentation>

C<arn:aws:lambda:ap-south-1:565803892007:function:ACS-AdjustmentSemanticSegmentation>

C<arn:aws:lambda:eu-central-1:203001061592:function:ACS-AdjustmentSemanticSegmentation>

C<arn:aws:lambda:ap-northeast-2:845288260483:function:ACS-AdjustmentSemanticSegmentation>

C<arn:aws:lambda:eu-west-2:487402164563:function:ACS-AdjustmentSemanticSegmentation>

C<arn:aws:lambda:ap-southeast-1:377565633583:function:ACS-AdjustmentSemanticSegmentation>

C<arn:aws:lambda:ca-central-1:918755190332:function:ACS-AdjustmentSemanticSegmentation>

=back

For more information, see Annotation Consolidation
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-annotation-consolidation.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

