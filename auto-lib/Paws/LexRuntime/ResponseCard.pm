package Paws::LexRuntime::ResponseCard;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', request_name => 'contentType', traits => ['NameInRequest']);
  has GenericAttachments => (is => 'ro', isa => 'ArrayRef[Paws::LexRuntime::GenericAttachment]', request_name => 'genericAttachments', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::ResponseCard

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexRuntime::ResponseCard object:

  $service_obj->Method(Att1 => { ContentType => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexRuntime::ResponseCard object:

  $result = $service_obj->Method(...);
  $result->Att1->ContentType

=head1 DESCRIPTION

If you configure a response card when creating your bots, Amazon Lex
substitutes the session attributes and slot values that are available,
and then returns it. The response card can also come from a Lambda
function ( C<dialogCodeHook> and C<fulfillmentActivity> on an intent).

=head1 ATTRIBUTES


=head2 ContentType => Str

  The content type of the response.


=head2 GenericAttachments => ArrayRef[L<Paws::LexRuntime::GenericAttachment>]

  An array of attachment objects representing options.


=head2 Version => Str

  The version of the response card format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

