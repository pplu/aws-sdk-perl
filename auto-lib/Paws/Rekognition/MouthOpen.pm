package Paws::Rekognition::MouthOpen;
  use Moose;
  has Confidence => (is => 'ro', isa => 'Num');
  has Value => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::MouthOpen

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::MouthOpen object:

  $service_obj->Method(Att1 => { Confidence => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::MouthOpen object:

  $result = $service_obj->Method(...);
  $result->Att1->Confidence

=head1 DESCRIPTION

Indicates whether or not the mouth on the face is open, and the
confidence level in the determination.

=head1 ATTRIBUTES


=head2 Confidence => Num

  Level of confidence in the determination.


=head2 Value => Bool

  Boolean value that indicates whether the mouth on the face is open or
not.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

