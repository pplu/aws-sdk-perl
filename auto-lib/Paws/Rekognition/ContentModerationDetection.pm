package Paws::Rekognition::ContentModerationDetection;
  use Moose;
  has ModerationLabel => (is => 'ro', isa => 'Paws::Rekognition::ModerationLabel');
  has Timestamp => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ContentModerationDetection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::ContentModerationDetection object:

  $service_obj->Method(Att1 => { ModerationLabel => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::ContentModerationDetection object:

  $result = $service_obj->Method(...);
  $result->Att1->ModerationLabel

=head1 DESCRIPTION

Information about a moderation label detection in a stored video.

=head1 ATTRIBUTES


=head2 ModerationLabel => L<Paws::Rekognition::ModerationLabel>

  The moderation label detected by in the stored video.


=head2 Timestamp => Int

  Time, in milliseconds from the beginning of the video, that the
moderation label was detected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

