# Generated from default/object.tt
package Paws::SESv2::RawMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SESv2::Types qw//;
  has Data => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Data' => 1
                  },
  'types' => {
               'Data' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::RawMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::RawMessage object:

  $service_obj->Method(Att1 => { Data => $value, ..., Data => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::RawMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Data

=head1 DESCRIPTION

The raw email message.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Data => Str

  The raw email message. The message has to meet the following criteria:

=over

=item *

The message has to contain a header and a body, separated by one blank
line.

=item *

All of the required header fields must be present in the message.

=item *

Each part of a multipart MIME message must be formatted properly.

=item *

Attachments must be in a file format that the Amazon SES API v2
supports.

=item *

The entire message must be Base64 encoded.

=item *

If any of the MIME parts in your message contain content that is
outside of the 7-bit ASCII character range, you should encode that
content to ensure that recipients' email clients render the message
properly.

=item *

The length of any single line of text in the message can't exceed 1,000
characters. This restriction is defined in RFC 5321
(https://tools.ietf.org/html/rfc5321).

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

