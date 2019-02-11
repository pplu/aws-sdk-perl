package Paws::SageMaker::ProductionVariant;
  use Moose;
  has AcceleratorType => (is => 'ro', isa => 'Str');
  has InitialInstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has InitialVariantWeight => (is => 'ro', isa => 'Num');
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has VariantName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ProductionVariant

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ProductionVariant object:

  $service_obj->Method(Att1 => { AcceleratorType => $value, ..., VariantName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ProductionVariant object:

  $result = $service_obj->Method(...);
  $result->Att1->AcceleratorType

=head1 DESCRIPTION

Identifies a model that you want to host and the resources to deploy
for hosting it. If you are deploying multiple models, tell Amazon
SageMaker how to distribute traffic among the models by specifying
variant weights.

=head1 ATTRIBUTES


=head2 AcceleratorType => Str

  The size of the Elastic Inference (EI) instance to use for the
production variant. EI instances provide on-demand GPU computing for
inference. For more information, see Using Elastic Inference in Amazon
SageMaker (http://docs.aws.amazon.com/sagemaker/latest/dg/ei.html). For
more information, see Using Elastic Inference in Amazon SageMaker
(http://docs.aws.amazon.com/sagemaker/latest/dg/ei.html).


=head2 B<REQUIRED> InitialInstanceCount => Int

  Number of instances to launch initially.


=head2 InitialVariantWeight => Num

  Determines initial traffic distribution among all of the models that
you specify in the endpoint configuration. The traffic to a production
variant is determined by the ratio of the C<VariantWeight> to the sum
of all C<VariantWeight> values across all ProductionVariants. If
unspecified, it defaults to 1.0.


=head2 B<REQUIRED> InstanceType => Str

  The ML compute instance type.


=head2 B<REQUIRED> ModelName => Str

  The name of the model that you want to host. This is the name that you
specified when creating the model.


=head2 B<REQUIRED> VariantName => Str

  The name of the production variant.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

