
package Paws::MachineLearning::CreateMLModel;
  use Moose;
  has MLModelId => (is => 'ro', isa => 'Str', required => 1);
  has MLModelName => (is => 'ro', isa => 'Str');
  has MLModelType => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::MachineLearning::TrainingParameters');
  has Recipe => (is => 'ro', isa => 'Str');
  has RecipeUri => (is => 'ro', isa => 'Str');
  has TrainingDataSourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMLModel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MachineLearning::CreateMLModelOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::CreateMLModel - Arguments for method CreateMLModel on L<Paws::MachineLearning>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMLModel on the
L<Amazon Machine Learning|Paws::MachineLearning> service. Use the attributes of this class
as arguments to method CreateMLModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMLModel.

=head1 SYNOPSIS

    my $machinelearning = Paws->service('MachineLearning');
    my $CreateMLModelOutput = $machinelearning->CreateMLModel(
      MLModelId            => 'MyEntityId',
      MLModelType          => 'REGRESSION',
      TrainingDataSourceId => 'MyEntityId',
      MLModelName          => 'MyEntityName',                         # OPTIONAL
      Parameters           => { 'MyStringType' => 'MyStringType', },  # OPTIONAL
      Recipe               => 'MyRecipe',                             # OPTIONAL
      RecipeUri            => 'MyS3Url',                              # OPTIONAL
    );

    # Results:
    my $MLModelId = $CreateMLModelOutput->MLModelId;

    # Returns a L<Paws::MachineLearning::CreateMLModelOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/machinelearning/CreateMLModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MLModelId => Str

A user-supplied ID that uniquely identifies the C<MLModel>.



=head2 MLModelName => Str

A user-supplied name or description of the C<MLModel>.



=head2 B<REQUIRED> MLModelType => Str

The category of supervised learning that this C<MLModel> will address.
Choose from the following types:

=over

=item * Choose C<REGRESSION> if the C<MLModel> will be used to predict
a numeric value.

=item * Choose C<BINARY> if the C<MLModel> result has two possible
values.

=item * Choose C<MULTICLASS> if the C<MLModel> result has a limited
number of values.

=back

For more information, see the Amazon Machine Learning Developer Guide
(http://docs.aws.amazon.com/machine-learning/latest/dg).

Valid values are: C<"REGRESSION">, C<"BINARY">, C<"MULTICLASS">

=head2 Parameters => L<Paws::MachineLearning::TrainingParameters>

A list of the training parameters in the C<MLModel>. The list is
implemented as a map of key-value pairs.

The following is the current set of training parameters:

=over

=item *

C<sgd.maxMLModelSizeInBytes> - The maximum allowed size of the model.
Depending on the input data, the size of the model might affect its
performance.

The value is an integer that ranges from C<100000> to C<2147483648>.
The default value is C<33554432>.

=item *

C<sgd.maxPasses> - The number of times that the training process
traverses the observations to build the C<MLModel>. The value is an
integer that ranges from C<1> to C<10000>. The default value is C<10>.

=item *

C<sgd.shuffleType> - Whether Amazon ML shuffles the training data.
Shuffling the data improves a model's ability to find the optimal
solution for a variety of data types. The valid values are C<auto> and
C<none>. The default value is C<none>. We strongly recommend that you
shuffle your data.

=item *

C<sgd.l1RegularizationAmount> - The coefficient regularization L1 norm.
It controls overfitting the data by penalizing large coefficients. This
tends to drive coefficients to zero, resulting in a sparse feature set.
If you use this parameter, start by specifying a small value, such as
C<1.0E-08>.

The value is a double that ranges from C<0> to C<MAX_DOUBLE>. The
default is to not use L1 normalization. This parameter can't be used
when C<L2> is specified. Use this parameter sparingly.

=item *

C<sgd.l2RegularizationAmount> - The coefficient regularization L2 norm.
It controls overfitting the data by penalizing large coefficients. This
tends to drive coefficients to small, nonzero values. If you use this
parameter, start by specifying a small value, such as C<1.0E-08>.

The value is a double that ranges from C<0> to C<MAX_DOUBLE>. The
default is to not use L2 normalization. This parameter can't be used
when C<L1> is specified. Use this parameter sparingly.

=back




=head2 Recipe => Str

The data recipe for creating the C<MLModel>. You must specify either
the recipe or its URI. If you don't specify a recipe or its URI, Amazon
ML creates a default.



=head2 RecipeUri => Str

The Amazon Simple Storage Service (Amazon S3) location and file name
that contains the C<MLModel> recipe. You must specify either the recipe
or its URI. If you don't specify a recipe or its URI, Amazon ML creates
a default.



=head2 B<REQUIRED> TrainingDataSourceId => Str

The C<DataSource> that points to the training data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMLModel in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

