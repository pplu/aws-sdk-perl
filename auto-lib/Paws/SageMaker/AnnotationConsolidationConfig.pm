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

Amazon SageMaker Ground Truth provides three annotation consolidation
functions that you can choose to use. They are:

=over

=item *

I<Bounding box> - Finds the most similar boxes from different workers
based on the Jaccard index of the boxes.

C<arn:aws:lambda:I<region>:432418664414:function:ACS-BoundingBox>

=item *

I<Image classification> - Uses a variant of the Expectation
Maximization approach to estimate the true class of an image based on
annotations from individual workers.

C<arn:aws:lambda:I<region>:432418664414:function:ACS-ImageMultiClass>

=item *

I<Text classification> - Uses a variant of the Expectation Maximization
approach to estimate the true class of text based on annotations from
individual workers.

C<arn:aws:lambda:I<region>:432418664414:function:ACS-TextMultiClass>

=back

For more information, see Annotation Consolidation
(http://docs.aws.amazon.com/sagemaker/latest/dg/sms-annotation-consolidation.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

