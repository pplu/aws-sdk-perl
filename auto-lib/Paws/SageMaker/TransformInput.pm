package Paws::SageMaker::TransformInput;
  use Moose;
  has CompressionType => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str');
  has DataSource => (is => 'ro', isa => 'Paws::SageMaker::TransformDataSource', required => 1);
  has SplitType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TransformInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TransformInput object:

  $service_obj->Method(Att1 => { CompressionType => $value, ..., SplitType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TransformInput object:

  $result = $service_obj->Method(...);
  $result->Att1->CompressionType

=head1 DESCRIPTION

Describes the input source of a transform job and the way the transform
job consumes it.

=head1 ATTRIBUTES


=head2 CompressionType => Str

  If your transform data is compressed, specify the compression type.
Amazon SageMaker automatically decompresses the data for the transform
job accordingly. The default value is C<None>.


=head2 ContentType => Str

  The multipurpose internet mail extension (MIME) type of the data.
Amazon SageMaker uses the MIME type with each http call to transfer
data to the transform job.


=head2 B<REQUIRED> DataSource => L<Paws::SageMaker::TransformDataSource>

  Describes the location of the channel data, which is, the S3 location
of the input data that the model can consume.


=head2 SplitType => Str

  The method to use to split the transform job's data files into smaller
batches. Splitting is necessary when the total size of each object is
too large to fit in a single request. You can also use data splitting
to improve performance by processing multiple concurrent mini-batches.
The default value for C<SplitType> is C<None>, which indicates that
input data files are not split, and request payloads contain the entire
contents of an input object. Set the value of this parameter to C<Line>
to split records on a newline character boundary. C<SplitType> also
supports a number of record-oriented binary data formats.

When splitting is enabled, the size of a mini-batch depends on the
values of the C<BatchStrategy> and C<MaxPayloadInMB> parameters. When
the value of C<BatchStrategy> is C<MultiRecord>, Amazon SageMaker sends
the maximum number of records in each request, up to the
C<MaxPayloadInMB> limit. If the value of C<BatchStrategy> is
C<SingleRecord>, Amazon SageMaker sends individual records in each
request.

Some data formats represent a record as a binary payload wrapped with
extra padding bytes. When splitting is applied to a binary data format,
padding is removed if the value of C<BatchStrategy> is set to
C<SingleRecord>. Padding is not removed if the value of
C<BatchStrategy> is set to C<MultiRecord>.

For more information about the RecordIO, see Data Format
(http://mxnet.io/architecture/note_data_loading.html#data-format) in
the MXNet documentation. For more information about the TFRecord, see
Consuming TFRecord data
(https://www.tensorflow.org/guide/datasets#consuming_tfrecord_data) in
the TensorFlow documentation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

