package Paws::SageMaker::DataProcessing;
  use Moose;
  has InputFilter => (is => 'ro', isa => 'Str');
  has JoinSource => (is => 'ro', isa => 'Str');
  has OutputFilter => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DataProcessing

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::DataProcessing object:

  $service_obj->Method(Att1 => { InputFilter => $value, ..., OutputFilter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::DataProcessing object:

  $result = $service_obj->Method(...);
  $result->Att1->InputFilter

=head1 DESCRIPTION

The data structure used to specify the data to be used for inference in
a batch transform job and to associate the data that is relevant to the
prediction results in the output. The input filter provided allows you
to exclude input data that is not needed for inference in a batch
transform job. The output filter provided allows you to include input
data relevant to interpreting the predictions in the output from the
job. For more information, see Associate Prediction Results with their
Corresponding Input Records
(https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html).

=head1 ATTRIBUTES


=head2 InputFilter => Str

  A JSONPath
(https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators)
expression used to select a portion of the input data to pass to the
algorithm. Use the C<InputFilter> parameter to exclude fields, such as
an ID column, from the input. If you want Amazon SageMaker to pass the
entire input dataset to the algorithm, accept the default value C<$>.

Examples: C<"$">, C<"$[1:]">, C<"$.features">


=head2 JoinSource => Str

  Specifies the source of the data to join with the transformed data. The
valid values are C<None> and C<Input>. The default value is C<None>,
which specifies not to join the input with the transformed data. If you
want the batch transform job to join the original input data with the
transformed data, set C<JoinSource> to C<Input>.

For JSON or JSONLines objects, such as a JSON array, Amazon SageMaker
adds the transformed data to the input JSON object in an attribute
called C<SageMakerOutput>. The joined result for JSON must be a
key-value pair object. If the input is not a key-value pair object,
Amazon SageMaker creates a new JSON file. In the new JSON file, and the
input data is stored under the C<SageMakerInput> key and the results
are stored in C<SageMakerOutput>.

For CSV files, Amazon SageMaker combines the transformed data with the
input data at the end of the input data and stores it in the output
file. The joined data has the joined input data followed by the
transformed data and the output is a CSV file.


=head2 OutputFilter => Str

  A JSONPath
(https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators)
expression used to select a portion of the joined dataset to save in
the output file for a batch transform job. If you want Amazon SageMaker
to store the entire input dataset in the output file, leave the default
value, C<$>. If you specify indexes that aren't within the dimension
size of the joined dataset, you get an error.

Examples: C<"$">, C<"$[0,5:]">, C<"$['id','SageMakerOutput']">



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

