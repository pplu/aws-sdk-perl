package Paws::MediaConvert::TeletextDestinationSettings;
  use Moose;
  has PageNumber => (is => 'ro', isa => 'Str', request_name => 'pageNumber', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::TeletextDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::TeletextDestinationSettings object:

  $service_obj->Method(Att1 => { PageNumber => $value, ..., PageNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::TeletextDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->PageNumber

=head1 DESCRIPTION

Settings for Teletext caption output

=head1 ATTRIBUTES


=head2 PageNumber => Str

  Set pageNumber to the Teletext page number for the destination captions
for this output. This value must be a three-digit hexadecimal string;
strings ending in -FF are invalid. If you are passing through the
entire set of Teletext data, do not use this field.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

