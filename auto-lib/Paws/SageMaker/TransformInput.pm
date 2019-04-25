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

  The method to use to split the transform job's data into smaller
batches. If you don't want to split the data, specify C<None>. If you
want to split records on a newline character boundary, specify C<Line>.
To split records according to the RecordIO format, specify C<RecordIO>.
The default value is C<None>.

Amazon SageMaker sends the maximum number of records per batch in each
request up to the MaxPayloadInMB limit. For more information, see
RecordIO data format
(http://mxnet.io/architecture/note_data_loading.html#data-format).

For information about the C<RecordIO> format, see Data Format
(http://mxnet.io/architecture/note_data_loading.html#data-format).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

