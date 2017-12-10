package Paws::SageMaker::Channel;
  use Moose;
  has ChannelName => (is => 'ro', isa => 'Str', required => 1);
  has CompressionType => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str');
  has DataSource => (is => 'ro', isa => 'Paws::SageMaker::DataSource', required => 1);
  has RecordWrapperType => (is => 'ro', isa => 'Str');
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

  $service_obj->Method(Att1 => { ChannelName => $value, ..., RecordWrapperType => $value  });

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
is C<None>. C<CompressionType> is used only in PIPE input mode. In FILE
mode, leave this field unset or set it to None.


=head2 ContentType => Str

  The MIME type of the data.


=head2 B<REQUIRED> DataSource => L<Paws::SageMaker::DataSource>

  The location of the channel data.


=head2 RecordWrapperType => Str

  Specify RecordIO as the value when input data is in raw format but the
training algorithm requires the RecordIO format, in which caseAmazon
SageMaker wraps each individual S3 object in a RecordIO record. If the
input data is already in RecordIO format, you don't need to set this
attribute. For more information, see Create a Dataset Using RecordIO
(https://mxnet.incubator.apache.org/how_to/recordio.html?highlight=im2rec).

In FILE mode, leave this field unset or set it to None.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

