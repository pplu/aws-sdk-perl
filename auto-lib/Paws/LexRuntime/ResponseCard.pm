# Generated from default/object.tt
package Paws::LexRuntime::ResponseCard;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LexRuntime::Types qw/LexRuntime_GenericAttachment/;
  has ContentType => (is => 'ro', isa => Str);
  has GenericAttachments => (is => 'ro', isa => ArrayRef[LexRuntime_GenericAttachment]);
  has Version => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'GenericAttachments' => 'genericAttachments',
                       'Version' => 'version',
                       'ContentType' => 'contentType'
                     },
  'types' => {
               'GenericAttachments' => {
                                         'type' => 'ArrayRef[LexRuntime_GenericAttachment]',
                                         'class' => 'Paws::LexRuntime::GenericAttachment'
                                       },
               'ContentType' => {
                                  'type' => 'Str'
                                },
               'Version' => {
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


=head2 GenericAttachments => ArrayRef[LexRuntime_GenericAttachment]

  An array of attachment objects representing options.


=head2 Version => Str

  The version of the response card format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

