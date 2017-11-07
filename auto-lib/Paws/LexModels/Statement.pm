package Paws::LexModels::Statement;
  use Moose;
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::Message]', request_name => 'messages', traits => ['NameInRequest'], required => 1);
  has ResponseCard => (is => 'ro', isa => 'Str', request_name => 'responseCard', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::Statement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::Statement object:

  $service_obj->Method(Att1 => { Messages => $value, ..., ResponseCard => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::Statement object:

  $result = $service_obj->Method(...);
  $result->Att1->Messages

=head1 DESCRIPTION

A collection of messages that convey information to the user. At
runtime, Amazon Lex selects the message to convey.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Messages => ArrayRef[L<Paws::LexModels::Message>]

  A collection of message objects.


=head2 ResponseCard => Str

  At runtime, if the client is using the PostText
(http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html)
API, Amazon Lex includes the response card in the response. It
substitutes all of the session attributes and slot values for
placeholders in the response card.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

