# Generated from default/object.tt
package Paws::Rekognition::StreamProcessorSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::Rekognition::Types qw/Rekognition_FaceSearchSettings/;
  has FaceSearch => (is => 'ro', isa => Rekognition_FaceSearchSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FaceSearch' => {
                                 'class' => 'Paws::Rekognition::FaceSearchSettings',
                                 'type' => 'Rekognition_FaceSearchSettings'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StreamProcessorSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::StreamProcessorSettings object:

  $service_obj->Method(Att1 => { FaceSearch => $value, ..., FaceSearch => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::StreamProcessorSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->FaceSearch

=head1 DESCRIPTION

Input parameters used to recognize faces in a streaming video analyzed
by a Amazon Rekognition stream processor.

=head1 ATTRIBUTES


=head2 FaceSearch => Rekognition_FaceSearchSettings

  Face search settings to use on a streaming video.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

