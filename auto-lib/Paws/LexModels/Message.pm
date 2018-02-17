package Paws::LexModels::Message;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', request_name => 'content', traits => ['NameInRequest'], required => 1);
  has ContentType => (is => 'ro', isa => 'Str', request_name => 'contentType', traits => ['NameInRequest'], required => 1);
  has GroupNumber => (is => 'ro', isa => 'Int', request_name => 'groupNumber', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::Message

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::Message object:

  $service_obj->Method(Att1 => { Content => $value, ..., GroupNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::Message object:

  $result = $service_obj->Method(...);
  $result->Att1->Content

=head1 DESCRIPTION

The message object that provides the message text and its type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

  The text of the message.


=head2 B<REQUIRED> ContentType => Str

  The content type of the message string.


=head2 GroupNumber => Int

  Identifies the message group that the message belongs to. When a group
is assigned to a message, Amazon Lex returns one message from each
group in the response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

