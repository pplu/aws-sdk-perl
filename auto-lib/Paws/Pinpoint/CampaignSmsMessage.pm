# Generated from default/object.tt
package Paws::Pinpoint::CampaignSmsMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw//;
  has Body => (is => 'ro', isa => Str);
  has MessageType => (is => 'ro', isa => Str);
  has SenderId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MessageType' => {
                                  'type' => 'Str'
                                },
               'Body' => {
                           'type' => 'Str'
                         },
               'SenderId' => {
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

Paws::Pinpoint::CampaignSmsMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::CampaignSmsMessage object:

  $service_obj->Method(Att1 => { Body => $value, ..., SenderId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::CampaignSmsMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Body

=head1 DESCRIPTION

Specifies the content and settings for an SMS message that's sent to
recipients of a campaign.

=head1 ATTRIBUTES


=head2 Body => Str

  The body of the SMS message.


=head2 MessageType => Str

  The type of SMS message. Valid values are: TRANSACTIONAL, the message
is critical or time-sensitive, such as a one-time password that
supports a customer transaction; and, PROMOTIONAL, the message isn't
critical or time-sensitive, such as a marketing message.


=head2 SenderId => Str

  The sender ID to display on recipients' devices when they receive the
SMS message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

