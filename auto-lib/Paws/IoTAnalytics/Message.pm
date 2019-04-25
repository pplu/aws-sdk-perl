package Paws::IoTAnalytics::Message;
  use Moose;
  has MessageId => (is => 'ro', isa => 'Str', request_name => 'messageId', traits => ['NameInRequest'], required => 1);
  has Payload => (is => 'ro', isa => 'Str', request_name => 'payload', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::Message

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::Message object:

  $service_obj->Method(Att1 => { MessageId => $value, ..., Payload => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::Message object:

  $result = $service_obj->Method(...);
  $result->Att1->MessageId

=head1 DESCRIPTION

Information about a message.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageId => Str

  The ID you wish to assign to the message. Each "messageId" must be
unique within each batch sent.


=head2 B<REQUIRED> Payload => Str

  The payload of the message. This may be a JSON string or a
Base64-encoded string representing binary data (in which case you must
decode it by means of a pipeline activity).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

