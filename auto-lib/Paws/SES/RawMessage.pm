package Paws::SES::RawMessage;
  use Moose;
  has Data => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::RawMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::RawMessage object:

  $service_obj->Method(Att1 => { Data => $value, ..., Data => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::RawMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Data

=head1 DESCRIPTION

Represents the raw data of the message.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Data => Str

  The raw data of the message. This data needs to base64-encoded if you
are accessing Amazon SES directly through the HTTPS interface. If you
are accessing Amazon SES using an AWS SDK, the SDK takes care of the
base 64-encoding for you. In all cases, the client must ensure that the
message format complies with Internet email standards regarding email
header fields, MIME types, and MIME encoding.

The To:, CC:, and BCC: headers in the raw message can contain a group
list.

If you are using C<SendRawEmail> with sending authorization, you can
include X-headers in the raw message to specify the "Source," "From,"
and "Return-Path" addresses. For more information, see the
documentation for C<SendRawEmail>.

Do not include these X-headers in the DKIM signature, because they are
removed by Amazon SES before sending the email.

For more information, go to the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

