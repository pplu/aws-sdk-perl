package Paws::MediaLive::FrameCaptureSettings;
  use Moose;
  has CaptureInterval => (is => 'ro', isa => 'Int', request_name => 'captureInterval', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::FrameCaptureSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::FrameCaptureSettings object:

  $service_obj->Method(Att1 => { CaptureInterval => $value, ..., CaptureInterval => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::FrameCaptureSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->CaptureInterval

=head1 DESCRIPTION

Frame Capture Settings

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaptureInterval => Int

  The frequency, in seconds, for capturing frames for inclusion in the
output. For example, "10" means capture a frame every 10 seconds.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

