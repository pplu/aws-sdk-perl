# Generated by default/object.tt
package Paws::IoTSiteWise::ImageFile;
  use Moose;
  has Data => (is => 'ro', isa => 'Str', request_name => 'data', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ImageFile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSiteWise::ImageFile object:

  $service_obj->Method(Att1 => { Data => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSiteWise::ImageFile object:

  $result = $service_obj->Method(...);
  $result->Att1->Data

=head1 DESCRIPTION

Contains an image file.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Data => Str

The image file contents, represented as a base64-encoded string. The
file size must be less than 1 MB.


=head2 B<REQUIRED> Type => Str

The file type of the image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

