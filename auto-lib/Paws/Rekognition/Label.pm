package Paws::Rekognition::Label;
  use Moose;
  has Confidence => (is => 'ro', isa => 'Num');
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::Instance]');
  has Name => (is => 'ro', isa => 'Str');
  has Parents => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::Parent]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::Label

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::Label object:

  $service_obj->Method(Att1 => { Confidence => $value, ..., Parents => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::Label object:

  $result = $service_obj->Method(...);
  $result->Att1->Confidence

=head1 DESCRIPTION

Structure containing details about the detected label, including the
name, detected instances, parent labels, and level of confidence.

=head1 ATTRIBUTES


=head2 Confidence => Num

  Level of confidence.


=head2 Instances => ArrayRef[L<Paws::Rekognition::Instance>]

  If C<Label> represents an object, C<Instances> contains the bounding
boxes for each instance of the detected object. Bounding boxes are
returned for common object labels such as people, cars, furniture,
apparel or pets.


=head2 Name => Str

  The name (label) of the object or scene.


=head2 Parents => ArrayRef[L<Paws::Rekognition::Parent>]

  The parent labels for a label. The response includes all ancestor
labels.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

