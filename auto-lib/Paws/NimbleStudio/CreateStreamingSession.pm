
package Paws::NimbleStudio::CreateStreamingSession;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has Ec2InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ec2InstanceType');
  has LaunchProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchProfileId');
  has StreamingImageId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'streamingImageId');
  has StudioId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'studioId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NimbleStudio::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStreamingSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-08-01/studios/{studioId}/streaming-sessions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NimbleStudio::CreateStreamingSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::CreateStreamingSession - Arguments for method CreateStreamingSession on L<Paws::NimbleStudio>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStreamingSession on the
L<AmazonNimbleStudio|Paws::NimbleStudio> service. Use the attributes of this class
as arguments to method CreateStreamingSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStreamingSession.

=head1 SYNOPSIS

    my $nimble = Paws->service('NimbleStudio');
    my $CreateStreamingSessionResponse = $nimble->CreateStreamingSession(
      StudioId         => 'My__string',
      ClientToken      => 'MyClientToken',                      # OPTIONAL
      Ec2InstanceType  => 'g4dn.xlarge',                        # OPTIONAL
      LaunchProfileId  => 'My__string',                         # OPTIONAL
      StreamingImageId => 'MyStreamingImageId',                 # OPTIONAL
      Tags             => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Session = $CreateStreamingSessionResponse->Session;

    # Returns a L<Paws::NimbleStudio::CreateStreamingSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/nimble/CreateStreamingSession>

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



=head2 Ec2InstanceType => Str

The EC2 Instance type used for the streaming session.

Valid values are: C<"g4dn.xlarge">, C<"g4dn.2xlarge">, C<"g4dn.4xlarge">, C<"g4dn.8xlarge">, C<"g4dn.12xlarge">, C<"g4dn.16xlarge">

=head2 LaunchProfileId => Str

The launch profile ID.



=head2 StreamingImageId => Str

The ID of the streaming image.



=head2 B<REQUIRED> StudioId => Str

The studio ID.



=head2 Tags => L<Paws::NimbleStudio::Tags>

A collection of labels, in the form of key:value pairs, that apply to
this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStreamingSession in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

