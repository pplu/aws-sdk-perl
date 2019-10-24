# Generated from default/object.tt
package Paws::MediaLive::VideoCodecSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_FrameCaptureSettings MediaLive_H264Settings/;
  has FrameCaptureSettings => (is => 'ro', isa => MediaLive_FrameCaptureSettings);
  has H264Settings => (is => 'ro', isa => MediaLive_H264Settings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'H264Settings' => {
                                   'class' => 'Paws::MediaLive::H264Settings',
                                   'type' => 'MediaLive_H264Settings'
                                 },
               'FrameCaptureSettings' => {
                                           'class' => 'Paws::MediaLive::FrameCaptureSettings',
                                           'type' => 'MediaLive_FrameCaptureSettings'
                                         }
             },
  'NameInRequest' => {
                       'H264Settings' => 'h264Settings',
                       'FrameCaptureSettings' => 'frameCaptureSettings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::VideoCodecSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::VideoCodecSettings object:

  $service_obj->Method(Att1 => { FrameCaptureSettings => $value, ..., H264Settings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::VideoCodecSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->FrameCaptureSettings

=head1 DESCRIPTION

Video Codec Settings

=head1 ATTRIBUTES


=head2 FrameCaptureSettings => MediaLive_FrameCaptureSettings

  


=head2 H264Settings => MediaLive_H264Settings

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

