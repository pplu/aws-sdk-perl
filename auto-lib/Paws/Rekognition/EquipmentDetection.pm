# Generated by default/object.tt
package Paws::Rekognition::EquipmentDetection;
  use Moose;
  has BoundingBox => (is => 'ro', isa => 'Paws::Rekognition::BoundingBox');
  has Confidence => (is => 'ro', isa => 'Num');
  has CoversBodyPart => (is => 'ro', isa => 'Paws::Rekognition::CoversBodyPart');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::EquipmentDetection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::EquipmentDetection object:

  $service_obj->Method(Att1 => { BoundingBox => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::EquipmentDetection object:

  $result = $service_obj->Method(...);
  $result->Att1->BoundingBox

=head1 DESCRIPTION

Information about an item of Personal Protective Equipment (PPE)
detected by DetectProtectiveEquipment. For more information, see
DetectProtectiveEquipment.

=head1 ATTRIBUTES


=head2 BoundingBox => L<Paws::Rekognition::BoundingBox>

A bounding box surrounding the item of detected PPE.


=head2 Confidence => Num

The confidence that Amazon Rekognition has that the bounding box
(C<BoundingBox>) contains an item of PPE.


=head2 CoversBodyPart => L<Paws::Rekognition::CoversBodyPart>

Information about the body part covered by the detected PPE.


=head2 Type => Str

The type of detected PPE.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

