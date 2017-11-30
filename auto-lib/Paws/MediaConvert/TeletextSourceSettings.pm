package Paws::MediaConvert::TeletextSourceSettings;
  use Moose;
  has PageNumber => (is => 'ro', isa => 'Str', request_name => 'pageNumber', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::TeletextSourceSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::TeletextSourceSettings object:

  $service_obj->Method(Att1 => { PageNumber => $value, ..., PageNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::TeletextSourceSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->PageNumber

=head1 DESCRIPTION

Settings specific to Teletext caption sources, including Page number.

=head1 ATTRIBUTES


=head2 PageNumber => Str

  Use Page Number (PageNumber) to specify the three-digit hexadecimal
page number that will be used for Teletext captions. Do not use this
setting if you are passing through teletext from the input source to
output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

