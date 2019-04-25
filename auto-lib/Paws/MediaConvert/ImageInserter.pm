package Paws::MediaConvert::ImageInserter;
  use Moose;
  has InsertableImages => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::InsertableImage]', request_name => 'insertableImages', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ImageInserter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::ImageInserter object:

  $service_obj->Method(Att1 => { InsertableImages => $value, ..., InsertableImages => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::ImageInserter object:

  $result = $service_obj->Method(...);
  $result->Att1->InsertableImages

=head1 DESCRIPTION

Enable the image inserter feature to include a graphic overlay on your
video. Enable or disable this feature for each input or output
individually. This setting is disabled by default.

=head1 ATTRIBUTES


=head2 InsertableImages => ArrayRef[L<Paws::MediaConvert::InsertableImage>]

  Specify the images that you want to overlay on your video. The images
must be PNG or TGA files.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

