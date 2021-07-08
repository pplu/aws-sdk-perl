
package Paws::NimbleStudio::CreateStreamingSessionStream;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has ExpirationInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'expirationInSeconds');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);
  has StudioId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'studioId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStreamingSessionStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}/streams');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NimbleStudio::CreateStreamingSessionStreamResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::CreateStreamingSessionStream - Arguments for method CreateStreamingSessionStream on L<Paws::NimbleStudio>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStreamingSessionStream on the
L<AmazonNimbleStudio|Paws::NimbleStudio> service. Use the attributes of this class
as arguments to method CreateStreamingSessionStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStreamingSessionStream.

=head1 SYNOPSIS

    my $nimble = Paws->service('NimbleStudio');
    my $CreateStreamingSessionStreamResponse =
      $nimble->CreateStreamingSessionStream(
      SessionId           => 'My__string',
      StudioId            => 'My__string',
      ClientToken         => 'MyClientToken',    # OPTIONAL
      ExpirationInSeconds => 1,                  # OPTIONAL
      );

    # Results:
    my $Stream = $CreateStreamingSessionStreamResponse->Stream;

 # Returns a L<Paws::NimbleStudio::CreateStreamingSessionStreamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/nimble/CreateStreamingSessionStream>

=head1 ATTRIBUTES


=head2 ClientToken => Str

To make an idempotent API request using one of these actions, specify a
client token in the request. You should not reuse the same client token
for other API requests. If you retry a request that completed
successfully using the same client token and the same parameters, the
retry succeeds without performing any further actions. If you retry a
successful request using the same client token, but one or more of the
parameters are different, the retry fails with a ValidationException
error.



=head2 ExpirationInSeconds => Int

The expiration time in seconds.



=head2 B<REQUIRED> SessionId => Str

The session ID.



=head2 B<REQUIRED> StudioId => Str

The studio ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStreamingSessionStream in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

