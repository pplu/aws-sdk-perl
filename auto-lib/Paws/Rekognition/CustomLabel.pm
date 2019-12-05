package Paws::Rekognition::CustomLabel;
  use Moose;
  has Confidence => (is => 'ro', isa => 'Num');
  has Geometry => (is => 'ro', isa => 'Paws::Rekognition::Geometry');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CustomLabel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::CustomLabel object:

  $service_obj->Method(Att1 => { Confidence => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::CustomLabel object:

  $result = $service_obj->Method(...);
  $result->Att1->Confidence

=head1 DESCRIPTION

A custom label detected in an image by a call to DetectCustomLabels.

=head1 ATTRIBUTES


=head2 Confidence => Num

  The confidence that the model has in the detection of the custom label.
The range is 0-100. A higher value indicates a higher confidence.


=head2 Geometry => L<Paws::Rekognition::Geometry>

  The location of the detected object on the image that corresponds to
the custom label. Includes an axis aligned coarse bounding box
surrounding the object and a finer grain polygon for more accurate
spatial information.


=head2 Name => Str

  The name of the custom label.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

