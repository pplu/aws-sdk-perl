
package Paws::Rekognition::CreateStreamProcessor;
  use Moose;
  has Input => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorInput', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Output => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorOutput', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Settings => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorSettings', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStreamProcessor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::CreateStreamProcessorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CreateStreamProcessor - Arguments for method CreateStreamProcessor on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStreamProcessor on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method CreateStreamProcessor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStreamProcessor.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $CreateStreamProcessorResponse = $rekognition->CreateStreamProcessor(
      Input => {
        KinesisVideoStream => {
          Arn => 'MyKinesisVideoArn',    # OPTIONAL
        },    # OPTIONAL
      },
      Name   => 'MyStreamProcessorName',
      Output => {
        KinesisDataStream => {
          Arn => 'MyKinesisDataArn',    # OPTIONAL
        },    # OPTIONAL
      },
      RoleArn  => 'MyRoleArn',
      Settings => {
        FaceSearch => {
          CollectionId       => 'MyCollectionId',   # min: 1, max: 255; OPTIONAL
          FaceMatchThreshold => 1.0,                # max: 100; OPTIONAL
        },    # OPTIONAL
      },

    );

    # Results:
    my $StreamProcessorArn = $CreateStreamProcessorResponse->StreamProcessorArn;

    # Returns a L<Paws::Rekognition::CreateStreamProcessorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/CreateStreamProcessor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Input => L<Paws::Rekognition::StreamProcessorInput>

Kinesis video stream stream that provides the source streaming video.
If you are using the AWS CLI, the parameter name is
C<StreamProcessorInput>.



=head2 B<REQUIRED> Name => Str

An identifier you assign to the stream processor. You can use C<Name>
to manage the stream processor. For example, you can get the current
status of the stream processor by calling DescribeStreamProcessor.
C<Name> is idempotent.



=head2 B<REQUIRED> Output => L<Paws::Rekognition::StreamProcessorOutput>

Kinesis data stream stream to which Amazon Rekognition Video puts the
analysis results. If you are using the AWS CLI, the parameter name is
C<StreamProcessorOutput>.



=head2 B<REQUIRED> RoleArn => Str

ARN of the IAM role that allows access to the stream processor.



=head2 B<REQUIRED> Settings => L<Paws::Rekognition::StreamProcessorSettings>

Face recognition input parameters to be used by the stream processor.
Includes the collection to use for face recognition and the face
attributes to detect.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStreamProcessor in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

