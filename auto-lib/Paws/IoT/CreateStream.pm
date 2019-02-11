
package Paws::IoT::CreateStream;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Files => (is => 'ro', isa => 'ArrayRef[Paws::IoT::StreamFile]', traits => ['NameInRequest'], request_name => 'files', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has StreamId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'streamId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streams/{streamId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateStreamResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateStream - Arguments for method CreateStream on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStream on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStream.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateStreamResponse = $iot->CreateStream(
      Files => [
        {
          FileId     => 1,    # max: 255; OPTIONAL
          S3Location => {
            Bucket  => 'MyS3Bucket',     # min: 1; OPTIONAL
            Key     => 'MyS3Key',        # min: 1; OPTIONAL
            Version => 'MyS3Version',    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      RoleArn     => 'MyRoleArn',
      StreamId    => 'MyStreamId',
      Description => 'MyStreamDescription',    # OPTIONAL
    );

    # Results:
    my $Description   = $CreateStreamResponse->Description;
    my $StreamArn     = $CreateStreamResponse->StreamArn;
    my $StreamId      = $CreateStreamResponse->StreamId;
    my $StreamVersion = $CreateStreamResponse->StreamVersion;

    # Returns a L<Paws::IoT::CreateStreamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateStream>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the stream.



=head2 B<REQUIRED> Files => ArrayRef[L<Paws::IoT::StreamFile>]

The files to stream.



=head2 B<REQUIRED> RoleArn => Str

An IAM role that allows the IoT service principal assumes to access
your S3 files.



=head2 B<REQUIRED> StreamId => Str

The stream ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStream in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

