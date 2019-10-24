
package Paws::KinesisVideo::CreateStream;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::KinesisVideo::Types qw/KinesisVideo_ResourceTags/;
  has DataRetentionInHours => (is => 'ro', isa => Int, predicate => 1);
  has DeviceName => (is => 'ro', isa => Str, predicate => 1);
  has KmsKeyId => (is => 'ro', isa => Str, predicate => 1);
  has MediaType => (is => 'ro', isa => Str, predicate => 1);
  has StreamName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => KinesisVideo_ResourceTags, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateStream');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/createStream');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::KinesisVideo::CreateStreamOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeviceName' => {
                                 'type' => 'Str'
                               },
               'DataRetentionInHours' => {
                                           'type' => 'Int'
                                         },
               'MediaType' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'class' => 'Paws::KinesisVideo::ResourceTags',
                           'type' => 'KinesisVideo_ResourceTags'
                         },
               'StreamName' => {
                                 'type' => 'Str'
                               },
               'KmsKeyId' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'StreamName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::CreateStream - Arguments for method CreateStream on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStream on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method CreateStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStream.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $CreateStreamOutput = $kinesisvideo->CreateStream(
      StreamName           => 'MyStreamName',
      DataRetentionInHours => 1,                 # OPTIONAL
      DeviceName           => 'MyDeviceName',    # OPTIONAL
      KmsKeyId             => 'MyKmsKeyId',      # OPTIONAL
      MediaType            => 'MyMediaType',     # OPTIONAL
      Tags                 => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $StreamARN = $CreateStreamOutput->StreamARN;

    # Returns a L<Paws::KinesisVideo::CreateStreamOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/CreateStream>

=head1 ATTRIBUTES


=head2 DataRetentionInHours => Int

The number of hours that you want to retain the data in the stream.
Kinesis Video Streams retains the data in a data store that is
associated with the stream.

The default value is 0, indicating that the stream does not persist
data.

When the C<DataRetentionInHours> value is 0, consumers can still
consume the fragments that remain in the service host buffer, which has
a retention time limit of 5 minutes and a retention memory limit of 200
MB. Fragments are removed from the buffer when either limit is reached.



=head2 DeviceName => Str

The name of the device that is writing to the stream.

In the current implementation, Kinesis Video Streams does not use this
name.



=head2 KmsKeyId => Str

The ID of the AWS Key Management Service (AWS KMS) key that you want
Kinesis Video Streams to use to encrypt stream data.

If no key ID is specified, the default, Kinesis Video-managed key
(C<aws/kinesisvideo>) is used.

For more information, see DescribeKey
(https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters).



=head2 MediaType => Str

The media type of the stream. Consumers of the stream can use this
information when processing the stream. For more information about
media types, see Media Types
(http://www.iana.org/assignments/media-types/media-types.xhtml). If you
choose to specify the C<MediaType>, see Naming Requirements
(https://tools.ietf.org/html/rfc6838#section-4.2) for guidelines.

This parameter is optional; the default value is C<null> (or empty in
JSON).



=head2 B<REQUIRED> StreamName => Str

A name for the stream that you are creating.

The stream name is an identifier for the stream, and must be unique for
each account and region.



=head2 Tags => KinesisVideo_ResourceTags

A list of tags to associate with the specified stream. Each tag is a
key-value pair (the value is optional).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStream in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

