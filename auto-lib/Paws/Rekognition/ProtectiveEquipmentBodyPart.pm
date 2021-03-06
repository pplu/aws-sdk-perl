# Generated by default/object.tt
package Paws::Rekognition::ProtectiveEquipmentBodyPart;
  use Moose;
  has Confidence => (is => 'ro', isa => 'Num');
  has EquipmentDetections => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::EquipmentDetection]');
  has Name => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ProtectiveEquipmentBodyPart

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::ProtectiveEquipmentBodyPart object:

  $service_obj->Method(Att1 => { Confidence => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::ProtectiveEquipmentBodyPart object:

  $result = $service_obj->Method(...);
  $result->Att1->Confidence

=head1 DESCRIPTION

Information about a body part detected by DetectProtectiveEquipment
that contains PPE. An array of C<ProtectiveEquipmentBodyPart> objects
is returned for each person detected by C<DetectProtectiveEquipment>.

=head1 ATTRIBUTES


=head2 Confidence => Num

The confidence that Amazon Rekognition has in the detection accuracy of
the detected body part.


=head2 EquipmentDetections => ArrayRef[L<Paws::Rekognition::EquipmentDetection>]

An array of Personal Protective Equipment items detected around a body
part.


=head2 Name => Str

The detected body part.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

