
package Paws::SageMaker::CreateModel;
  use Moose;
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has PrimaryContainer => (is => 'ro', isa => 'Paws::SageMaker::ContainerDefinition', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateModelOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModel - Arguments for method CreateModel on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModel on the 
Amazon SageMaker Service service. Use the attributes of this class
as arguments to method CreateModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModel.

As an example:

  $service_obj->CreateModel(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker
can assume to access model artifacts and docker image for deployment on
ML compute instances. Deploying on ML compute instances is part of
model hosting. For more information, see Amazon SageMaker Roles
(http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).



=head2 B<REQUIRED> ModelName => Str

The name of the new model.



=head2 B<REQUIRED> PrimaryContainer => L<Paws::SageMaker::ContainerDefinition>

The location of the primary docker image containing inference code,
associated artifacts, and custom environment map that the inference
code uses when the model is deployed into production.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. For more information, see Using Cost
Allocation Tags
(http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)
in the I<AWS Billing and Cost Management User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModel in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

