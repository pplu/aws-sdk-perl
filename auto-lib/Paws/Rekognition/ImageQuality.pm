package Paws::Rekognition::ImageQuality;
  use Moose;
  has Brightness => (is => 'ro', isa => 'Num');
  has Sharpness => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ImageQuality

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::ImageQuality object:

  $service_obj->Method(Att1 => { Brightness => $value, ..., Sharpness => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::ImageQuality object:

  $result = $service_obj->Method(...);
  $result->Att1->Brightness

=head1 DESCRIPTION

Identifies face image brightness and sharpness.

=head1 ATTRIBUTES


=head2 Brightness => Num

  Value representing brightness of the face. The service returns a value
between 0 and 100 (inclusive). A higher value indicates a brighter face
image.


=head2 Sharpness => Num

  Value representing sharpness of the face. The service returns a value
between 0 and 100 (inclusive). A higher value indicates a sharper face
image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

