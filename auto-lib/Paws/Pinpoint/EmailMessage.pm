package Paws::Pinpoint::EmailMessage;
  use Moose;
  has Body => (is => 'ro', isa => 'Str');
  has FeedbackForwardingAddress => (is => 'ro', isa => 'Str');
  has FromAddress => (is => 'ro', isa => 'Str');
  has RawEmail => (is => 'ro', isa => 'Paws::Pinpoint::RawEmail');
  has ReplyToAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SimpleEmail => (is => 'ro', isa => 'Paws::Pinpoint::SimpleEmail');
  has Substitutions => (is => 'ro', isa => 'Paws::Pinpoint::MapOfListOf__string');
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

Email Message.

=head1 ATTRIBUTES


=head2 Body => Str

  The body of the email message.


=head2 FeedbackForwardingAddress => Str

  The email address that bounces and complaints will be forwarded to when
feedback forwarding is enabled.


=head2 FromAddress => Str

  The email address used to send the email from. Defaults to use
FromAddress specified in the Email Channel.


=head2 RawEmail => L<Paws::Pinpoint::RawEmail>

  An email represented as a raw MIME message.


=head2 ReplyToAddresses => ArrayRef[Str|Undef]

  The reply-to email address(es) for the email. If the recipient replies
to the email, each reply-to address will receive the reply.


=head2 SimpleEmail => L<Paws::Pinpoint::SimpleEmail>

  An email composed of a subject, a text part and a html part.


=head2 Substitutions => L<Paws::Pinpoint::MapOfListOf__string>

  Default message substitutions. Can be overridden by individual address
substitutions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

