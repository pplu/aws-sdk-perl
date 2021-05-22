
package Paws::MediaLive::DescribeInputDeviceThumbnail;
  use Moose;
  has Accept => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'accept', required => 1);
  has InputDeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'inputDeviceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInputDeviceThumbnail');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/inputDevices/{inputDeviceId}/thumbnailData');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::DescribeInputDeviceThumbnailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeInputDeviceThumbnail - Arguments for method DescribeInputDeviceThumbnail on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInputDeviceThumbnail on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method DescribeInputDeviceThumbnail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInputDeviceThumbnail.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $DescribeInputDeviceThumbnailResponse =
      $medialive->DescribeInputDeviceThumbnail(
      Accept        => 'image/jpeg',
      InputDeviceId => 'My__string',

      );

    # Results:
    my $Body          = $DescribeInputDeviceThumbnailResponse->Body;
    my $ContentLength = $DescribeInputDeviceThumbnailResponse->ContentLength;
    my $ContentType   = $DescribeInputDeviceThumbnailResponse->ContentType;
    my $ETag          = $DescribeInputDeviceThumbnailResponse->ETag;
    my $LastModified  = $DescribeInputDeviceThumbnailResponse->LastModified;

    # Returns a L<Paws::MediaLive::DescribeInputDeviceThumbnailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/DescribeInputDeviceThumbnail>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Accept => Str

The HTTP Accept header. Indicates the requested type for the thumbnail.

Valid values are: C<"image/jpeg">

=head2 B<REQUIRED> InputDeviceId => Str

The unique ID of this input device. For example, hd-123456789abcdef.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInputDeviceThumbnail in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

