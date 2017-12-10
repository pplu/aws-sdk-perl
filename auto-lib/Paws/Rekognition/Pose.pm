package Paws::Rekognition::Pose;
  use Moose;
  has Pitch => (is => 'ro', isa => 'Num');
  has Roll => (is => 'ro', isa => 'Num');
  has Yaw => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::Pose

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::Pose object:

  $service_obj->Method(Att1 => { Pitch => $value, ..., Yaw => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::Pose object:

  $result = $service_obj->Method(...);
  $result->Att1->Pitch

=head1 DESCRIPTION

Indicates the pose of the face as determined by its pitch, roll, and
yaw.

=head1 ATTRIBUTES


=head2 Pitch => Num

  Value representing the face rotation on the pitch axis.


=head2 Roll => Num

  Value representing the face rotation on the roll axis.


=head2 Yaw => Num

  Value representing the face rotation on the yaw axis.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

