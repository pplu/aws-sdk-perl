package Paws::Pinpoint::SMSMessage;
  use Moose;
  has Body => (is => 'ro', isa => 'Str');
  has MessageType => (is => 'ro', isa => 'Str');
  has SenderId => (is => 'ro', isa => 'Str');
  has Substitutions => (is => 'ro', isa => 'Paws::Pinpoint::MapOfListOf__string');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SMSMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SMSMessage object:

  $service_obj->Method(Att1 => { Body => $value, ..., Substitutions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SMSMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Body

=head1 DESCRIPTION

SMS Message.

=head1 ATTRIBUTES


=head2 Body => Str

  The message body of the notification, the email body or the text
message.


=head2 MessageType => Str

  Is this a transaction priority message or lower priority.


=head2 SenderId => Str

  Sender ID of sent message.


=head2 Substitutions => L<Paws::Pinpoint::MapOfListOf__string>

  Default message substitutions. Can be overridden by individual address
substitutions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

