
package Paws::NimbleStudio::UpdateStreamingImage;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has StreamingImageId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'streamingImageId', required => 1);
  has StudioId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'studioId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStreamingImage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-08-01/studios/{studioId}/streaming-images/{streamingImageId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NimbleStudio::UpdateStreamingImageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::UpdateStreamingImage - Arguments for method UpdateStreamingImage on L<Paws::NimbleStudio>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStreamingImage on the
L<AmazonNimbleStudio|Paws::NimbleStudio> service. Use the attributes of this class
as arguments to method UpdateStreamingImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStreamingImage.

=head1 SYNOPSIS

    my $nimble = Paws->service('NimbleStudio');
    my $UpdateStreamingImageResponse = $nimble->UpdateStreamingImage(
      StreamingImageId => 'My__string',
      StudioId         => 'My__string',
      ClientToken      => 'MyClientToken',                  # OPTIONAL
      Description      => 'MyStreamingImageDescription',    # OPTIONAL
      Name             => 'MyStreamingImageName',           # OPTIONAL
    );

    # Results:
    my $StreamingImage = $UpdateStreamingImageResponse->StreamingImage;

    # Returns a L<Paws::NimbleStudio::UpdateStreamingImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/nimble/UpdateStreamingImage>

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



=head2 Description => Str

The description.



=head2 Name => Str

The name for the streaming image.



=head2 B<REQUIRED> StreamingImageId => Str

The streaming image ID.



=head2 B<REQUIRED> StudioId => Str

The studio ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStreamingImage in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

