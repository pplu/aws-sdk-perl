package Paws::MediaLive::StaticImageDeactivateScheduleActionSettings;
  use Moose;
  has FadeOut => (is => 'ro', isa => 'Int', request_name => 'fadeOut', traits => ['NameInRequest']);
  has Layer => (is => 'ro', isa => 'Int', request_name => 'layer', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::StaticImageDeactivateScheduleActionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::StaticImageDeactivateScheduleActionSettings object:

  $service_obj->Method(Att1 => { FadeOut => $value, ..., Layer => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::StaticImageDeactivateScheduleActionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->FadeOut

=head1 DESCRIPTION

Settings for the action to deactivate the image in a specific layer.

=head1 ATTRIBUTES


=head2 FadeOut => Int

  The time in milliseconds for the image to fade out. Default is 0 (no
fade-out).


=head2 Layer => Int

  The image overlay layer to deactivate, 0 to 7. Default is 0.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

