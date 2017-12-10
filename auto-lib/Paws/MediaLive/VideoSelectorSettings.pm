package Paws::MediaLive::VideoSelectorSettings;
  use Moose;
  has VideoSelectorPid => (is => 'ro', isa => 'Paws::MediaLive::VideoSelectorPid', request_name => 'videoSelectorPid', traits => ['NameInRequest']);
  has VideoSelectorProgramId => (is => 'ro', isa => 'Paws::MediaLive::VideoSelectorProgramId', request_name => 'videoSelectorProgramId', traits => ['NameInRequest']);
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

Placeholder documentation for VideoSelectorSettings

=head1 ATTRIBUTES


=head2 VideoSelectorPid => L<Paws::MediaLive::VideoSelectorPid>

  


=head2 VideoSelectorProgramId => L<Paws::MediaLive::VideoSelectorProgramId>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

