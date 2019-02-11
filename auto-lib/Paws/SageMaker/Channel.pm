package Paws::SageMaker::Channel;
  use Moose;
  has ChannelName => (is => 'ro', isa => 'Str', required => 1);
  has CompressionType => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str');
  has DataSource => (is => 'ro', isa => 'Paws::SageMaker::DataSource', required => 1);
  has InputMode => (is => 'ro', isa => 'Str');
  has RecordWrapperType => (is => 'ro', isa => 'Str');
  has ShuffleConfig => (is => 'ro', isa => 'Paws::SageMaker::ShuffleConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::Channel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::Channel object:

  $service_obj->Method(Att1 => { ChannelName => $value, ..., ShuffleConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::Channel object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelName

=head1 DESCRIPTION

A channel is a named input source that training algorithms can consume.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelName => Str

  The name of the channel.


=head2 CompressionType => Str

  If training data is compressed, the compression type. The default value
is C<None>. C<CompressionType> is used only in Pipe input mode. In File
mode, leave this field unset or set it to None.


=head2 ContentType => Str

  The MIME type of the data.


=head2 B<REQUIRED> DataSource => L<Paws::SageMaker::DataSource>

  The location of the channel data.


=head2 InputMode => Str

  (Optional) The input mode to use for the data channel in a training
job. If you don't set a value for C<InputMode>, Amazon SageMaker uses
the value set for C<TrainingInputMode>. Use this parameter to override
the C<TrainingInputMode> setting in a AlgorithmSpecification request
when you have a channel that needs a different input mode from the
training job's general setting. To download the data from Amazon Simple
Storage Service (Amazon S3) to the provisioned ML storage volume, and
mount the directory to a Docker volume, use C<File> input mode. To
stream data directly from Amazon S3 to the container, choose C<Pipe>
input mode.

To use a model for incremental training, choose C<File> input model.


=head2 RecordWrapperType => Str

  Specify RecordIO as the value when input data is in raw format but the
training algorithm requires the RecordIO format. In this case, Amazon
SageMaker wraps each individual S3 object in a RecordIO record. If the
input data is already in RecordIO format, you don't need to set this
attribute. For more information, see Create a Dataset Using RecordIO
(https://mxnet.incubator.apache.org/architecture/note_data_loading.html#data-format).

In File mode, leave this field unset or set it to None.


=head2 ShuffleConfig => L<Paws::SageMaker::ShuffleConfig>

  A configuration for a shuffle option for input data in a channel. If
you use C<S3Prefix> for C<S3DataType>, this shuffles the results of the
S3 key prefix matches. If you use C<ManifestFile>, the order of the S3
object references in the C<ManifestFile> is shuffled. If you use
C<AugmentedManifestFile>, the order of the JSON lines in the
C<AugmentedManifestFile> is shuffled. The shuffling order is determined
using the C<Seed> value.

For Pipe input mode, shuffling is done at the start of every epoch.
With large datasets this ensures that the order of the training data is
different for each epoch, it helps reduce bias and possible
overfitting. In a multi-node training job when ShuffleConfig is
combined with C<S3DataDistributionType> of C<ShardedByS3Key>, the data
is shuffled across nodes so that the content sent to a particular node
on the first epoch might be sent to a different node on the second
epoch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

