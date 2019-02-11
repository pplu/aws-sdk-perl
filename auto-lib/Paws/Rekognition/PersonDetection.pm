package Paws::Rekognition::PersonDetection;
  use Moose;
  has Person => (is => 'ro', isa => 'Paws::Rekognition::PersonDetail');
  has Timestamp => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::PersonDetection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::PersonDetection object:

  $service_obj->Method(Att1 => { Person => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::PersonDetection object:

  $result = $service_obj->Method(...);
  $result->Att1->Person

=head1 DESCRIPTION

Details and path tracking information for a single time a person's path
is tracked in a video. Amazon Rekognition operations that track
people's paths return an array of C<PersonDetection> objects with
elements for each time a person's path is tracked in a video.

For more information, see GetPersonTracking in the Amazon Rekognition
Developer Guide.

=head1 ATTRIBUTES


=head2 Person => L<Paws::Rekognition::PersonDetail>

  Details about a person whose path was tracked in a video.


=head2 Timestamp => Int

  The time, in milliseconds from the start of the video, that the
person's path was tracked.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

