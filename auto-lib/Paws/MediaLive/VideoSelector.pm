package Paws::MediaLive::VideoSelector;
  use Moose;
  has ColorSpace => (is => 'ro', isa => 'Str', request_name => 'colorSpace', traits => ['NameInRequest']);
  has ColorSpaceUsage => (is => 'ro', isa => 'Str', request_name => 'colorSpaceUsage', traits => ['NameInRequest']);
  has SelectorSettings => (is => 'ro', isa => 'Paws::MediaLive::VideoSelectorSettings', request_name => 'selectorSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::VideoSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::VideoSelector object:

  $service_obj->Method(Att1 => { ColorSpace => $value, ..., SelectorSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::VideoSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->ColorSpace

=head1 DESCRIPTION

Specifies a particular video stream within an input source. An input
may have only a single video selector.

=head1 ATTRIBUTES


=head2 ColorSpace => Str

  Specifies the colorspace of an input. This setting works in tandem with
colorSpaceConversion to determine if any conversion will be performed.


=head2 ColorSpaceUsage => Str

  Applies only if colorSpace is a value other than follow. This field
controls how the value in the colorSpace field will be used. fallback
means that when the input does include color space data, that data will
be used, but when the input has no color space data, the value in
colorSpace will be used. Choose fallback if your input is sometimes
missing color space data, but when it does have color space data, that
data is correct. force means to always use the value in colorSpace.
Choose force if your input usually has no color space data or might
have unreliable color space data.


=head2 SelectorSettings => L<Paws::MediaLive::VideoSelectorSettings>

  The video selector settings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

