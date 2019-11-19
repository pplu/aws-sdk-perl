# Generated from default/object.tt
package Paws::Pinpoint::EmailMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Pinpoint::Types qw/Pinpoint_RawEmail Pinpoint_MapOfListOf__string Pinpoint_SimpleEmail/;
  has Body => (is => 'ro', isa => Str);
  has FeedbackForwardingAddress => (is => 'ro', isa => Str);
  has FromAddress => (is => 'ro', isa => Str);
  has RawEmail => (is => 'ro', isa => Pinpoint_RawEmail);
  has ReplyToAddresses => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SimpleEmail => (is => 'ro', isa => Pinpoint_SimpleEmail);
  has Substitutions => (is => 'ro', isa => Pinpoint_MapOfListOf__string);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RawEmail' => {
                               'class' => 'Paws::Pinpoint::RawEmail',
                               'type' => 'Pinpoint_RawEmail'
                             },
               'SimpleEmail' => {
                                  'class' => 'Paws::Pinpoint::SimpleEmail',
                                  'type' => 'Pinpoint_SimpleEmail'
                                },
               'FromAddress' => {
                                  'type' => 'Str'
                                },
               'FeedbackForwardingAddress' => {
                                                'type' => 'Str'
                                              },
               'Substitutions' => {
                                    'class' => 'Paws::Pinpoint::MapOfListOf__string',
                                    'type' => 'Pinpoint_MapOfListOf__string'
                                  },
               'ReplyToAddresses' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'Body' => {
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

Paws::Pinpoint::EmailMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EmailMessage object:

  $service_obj->Method(Att1 => { Body => $value, ..., Substitutions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EmailMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Body

=head1 DESCRIPTION

Specifies the default settings and content for a one-time email message
that's sent directly to an endpoint.

=head1 ATTRIBUTES


=head2 Body => Str

  The body of the email message.


=head2 FeedbackForwardingAddress => Str

  The email address to forward bounces and complaints to, if feedback
forwarding is enabled.


=head2 FromAddress => Str

  The verified email address to send the email message from. The default
value is the FromAddress specified for the email channel.


=head2 RawEmail => Pinpoint_RawEmail

  The email message, represented as a raw MIME message.


=head2 ReplyToAddresses => ArrayRef[Str|Undef]

  The reply-to email address(es) for the email message. If a recipient
replies to the email, each reply-to address receives the reply.


=head2 SimpleEmail => Pinpoint_SimpleEmail

  The email message, composed of a subject, a text part, and an HTML
part.


=head2 Substitutions => Pinpoint_MapOfListOf__string

  The default message variables to use in the email message. You can
override the default variables with individual address variables.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

