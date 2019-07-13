package Paws::SageMaker::InputConfig;
  use Moose;
  has DataInputConfig => (is => 'ro', isa => 'Str', required => 1);
  has Framework => (is => 'ro', isa => 'Str', required => 1);
  has S3Uri => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::InputConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::InputConfig object:

  $service_obj->Method(Att1 => { DataInputConfig => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::InputConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->DataInputConfig

=head1 DESCRIPTION

Contains information about the location of input model artifacts, the
name and shape of the expected data inputs, and the framework in which
the model was trained.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataInputConfig => Str

  Specifies the name and shape of the expected data inputs for your
trained model with a JSON dictionary form. The data inputs are
InputConfig$Framework specific.

=over

=item *

C<TensorFlow>: You must specify the name and shape (NHWC format) of the
expected data inputs using a dictionary format for your trained model.
The dictionary formats required for the console and CLI are different.

=over

=item *

Examples for one input:

=over

=item *

If using the console, C<{"input":[1,1024,1024,3]}>

=item *

If using the CLI, C<{\"input\":[1,1024,1024,3]}>

=back

=item *

Examples for two inputs:

=over

=item *

If using the console, C<{"data1": [1,28,28,1], "data2":[1,28,28,1]}>

=item *

If using the CLI, C<{\"data1\": [1,28,28,1], \"data2\":[1,28,28,1]}>

=back

=back

=item *

C<MXNET/ONNX>: You must specify the name and shape (NCHW format) of the
expected data inputs in order using a dictionary format for your
trained model. The dictionary formats required for the console and CLI
are different.

=over

=item *

Examples for one input:

=over

=item *

If using the console, C<{"data":[1,3,1024,1024]}>

=item *

If using the CLI, C<{\"data\":[1,3,1024,1024]}>

=back

=item *

Examples for two inputs:

=over

=item *

If using the console, C<{"var1": [1,1,28,28], "var2":[1,1,28,28]}>

=item *

If using the CLI, C<{\"var1\": [1,1,28,28], \"var2\":[1,1,28,28]}>

=back

=back

=item *

C<PyTorch>: You can either specify the name and shape (NCHW format) of
expected data inputs in order using a dictionary format for your
trained model or you can specify the shape only using a list format.
The dictionary formats required for the console and CLI are different.
The list formats for the console and CLI are the same.

=over

=item *

Examples for one input in dictionary format:

=over

=item *

If using the console, C<{"input0":[1,3,224,224]}>

=item *

If using the CLI, C<{\"input0\":[1,3,224,224]}>

=back

=item *

Example for one input in list format: C<[[1,3,224,224]]>

=item *

Examples for two inputs in dictionary format:

=over

=item *

If using the console, C<{"input0":[1,3,224,224],
"input1":[1,3,224,224]}>

=item *

If using the CLI, C<{\"input0\":[1,3,224,224],
\"input1\":[1,3,224,224]}>

=back

=item *

Example for two inputs in list format: C<[[1,3,224,224],
[1,3,224,224]]>

=back

=item *

C<XGBOOST>: input data name and shape are not needed.

=back



=head2 B<REQUIRED> Framework => Str

  Identifies the framework in which the model was trained. For example:
TENSORFLOW.


=head2 B<REQUIRED> S3Uri => Str

  The S3 path where the model artifacts, which result from model
training, are stored. This path must point to a single gzip compressed
tar archive (.tar.gz suffix).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

