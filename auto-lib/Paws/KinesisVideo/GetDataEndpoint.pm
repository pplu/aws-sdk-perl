
package Paws::KinesisVideo::GetDataEndpoint;
  use Moose;
  has APIName => (is => 'ro', isa => 'Str', required => 1);
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getDataEndpoint');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::GetDataEndpointOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::GetDataEndpoint - Arguments for method GetDataEndpoint on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataEndpoint on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method GetDataEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataEndpoint.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $GetDataEndpointOutput = $kinesisvideo->GetDataEndpoint(
      APIName    => 'PUT_MEDIA',
      StreamARN  => 'MyResourceARN',    # OPTIONAL
      StreamName => 'MyStreamName',     # OPTIONAL
    );

    # Results:
    my $DataEndpoint = $GetDataEndpointOutput->DataEndpoint;

    # Returns a L<Paws::KinesisVideo::GetDataEndpointOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/GetDataEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> APIName => Str

The name of the API action for which to get an endpoint.

Valid values are: C<"PUT_MEDIA">, C<"GET_MEDIA">, C<"LIST_FRAGMENTS">, C<"GET_MEDIA_FOR_FRAGMENT_LIST">, C<"GET_HLS_STREAMING_SESSION_URL">

=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the stream that you want to get the
endpoint for. You must specify either this parameter or a C<StreamName>
in the request.



=head2 StreamName => Str

The name of the stream that you want to get the endpoint for. You must
specify either this parameter or a C<StreamARN> in the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataEndpoint in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

