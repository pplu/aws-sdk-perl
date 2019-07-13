package Paws::PinpointEmail::Content;
  use Moose;
  has Charset => (is => 'ro', isa => 'Str');
  has Data => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::Content

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::Content object:

  $service_obj->Method(Att1 => { Charset => $value, ..., Data => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::Content object:

  $result = $service_obj->Method(...);
  $result->Att1->Charset

=head1 DESCRIPTION

An object that represents the content of the email, and optionally a
character set specification.

=head1 ATTRIBUTES


=head2 Charset => Str

  The character set for the content. Because of the constraints of the
SMTP protocol, Amazon Pinpoint uses 7-bit ASCII by default. If the text
includes characters outside of the ASCII range, you have to specify a
character set. For example, you could specify C<UTF-8>, C<ISO-8859-1>,
or C<Shift_JIS>.


=head2 B<REQUIRED> Data => Str

  The content of the message itself.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

