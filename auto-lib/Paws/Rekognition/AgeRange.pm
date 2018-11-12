package Paws::Rekognition::AgeRange;
  use Moose;
  has High => (is => 'ro', isa => 'Int');
  has Low => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::AgeRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::AgeRange object:

  $service_obj->Method(Att1 => { High => $value, ..., Low => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::AgeRange object:

  $result = $service_obj->Method(...);
  $result->Att1->High

=head1 DESCRIPTION

Structure containing the estimated age range, in years, for a face.

Amazon Rekognition estimates an age range for faces detected in the
input image. Estimated age ranges can overlap. A face of a 5-year-old
might have an estimated range of 4-6, while the face of a 6-year-old
might have an estimated range of 4-8.

=head1 ATTRIBUTES


=head2 High => Int

  The highest estimated age.


=head2 Low => Int

  The lowest estimated age.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

