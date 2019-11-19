# Generated from default/object.tt
package Paws::MediaLive::VideoSelectorSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_VideoSelectorPid MediaLive_VideoSelectorProgramId/;
  has VideoSelectorPid => (is => 'ro', isa => MediaLive_VideoSelectorPid);
  has VideoSelectorProgramId => (is => 'ro', isa => MediaLive_VideoSelectorProgramId);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'VideoSelectorProgramId' => 'videoSelectorProgramId',
                       'VideoSelectorPid' => 'videoSelectorPid'
                     },
  'types' => {
               'VideoSelectorPid' => {
                                       'type' => 'MediaLive_VideoSelectorPid',
                                       'class' => 'Paws::MediaLive::VideoSelectorPid'
                                     },
               'VideoSelectorProgramId' => {
                                             'type' => 'MediaLive_VideoSelectorProgramId',
                                             'class' => 'Paws::MediaLive::VideoSelectorProgramId'
                                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::VideoSelectorSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::VideoSelectorSettings object:

  $service_obj->Method(Att1 => { VideoSelectorPid => $value, ..., VideoSelectorProgramId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::VideoSelectorSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->VideoSelectorPid

=head1 DESCRIPTION

Video Selector Settings

=head1 ATTRIBUTES


=head2 VideoSelectorPid => MediaLive_VideoSelectorPid

  


=head2 VideoSelectorProgramId => MediaLive_VideoSelectorProgramId

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

