package Paws::MediaLive::TeletextSourceSettings;
  use Moose;
  has PageNumber => (is => 'ro', isa => 'Str', request_name => 'pageNumber', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::TeletextSourceSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::TeletextSourceSettings object:

  $service_obj->Method(Att1 => { PageNumber => $value, ..., PageNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::TeletextSourceSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->PageNumber

=head1 DESCRIPTION

Placeholder documentation for TeletextSourceSettings

=head1 ATTRIBUTES


=head2 PageNumber => Str

  Specifies the teletext page number within the data stream from which to
extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused for
passthrough. Should be specified as a hexadecimal string with no "0x"
prefix.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

