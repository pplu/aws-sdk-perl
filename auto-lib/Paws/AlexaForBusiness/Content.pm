# Generated from default/object.tt
package Paws::AlexaForBusiness::Content;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_Ssml AlexaForBusiness_Audio AlexaForBusiness_Text/;
  has AudioList => (is => 'ro', isa => ArrayRef[AlexaForBusiness_Audio]);
  has SsmlList => (is => 'ro', isa => ArrayRef[AlexaForBusiness_Ssml]);
  has TextList => (is => 'ro', isa => ArrayRef[AlexaForBusiness_Text]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TextList' => {
                               'class' => 'Paws::AlexaForBusiness::Text',
                               'type' => 'ArrayRef[AlexaForBusiness_Text]'
                             },
               'SsmlList' => {
                               'class' => 'Paws::AlexaForBusiness::Ssml',
                               'type' => 'ArrayRef[AlexaForBusiness_Ssml]'
                             },
               'AudioList' => {
                                'class' => 'Paws::AlexaForBusiness::Audio',
                                'type' => 'ArrayRef[AlexaForBusiness_Audio]'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::Content

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::Content object:

  $service_obj->Method(Att1 => { AudioList => $value, ..., TextList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::Content object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioList

=head1 DESCRIPTION

The content definition. This can contain only one text, SSML, or audio
list object.

=head1 ATTRIBUTES


=head2 AudioList => ArrayRef[AlexaForBusiness_Audio]

  The list of audio messages.


=head2 SsmlList => ArrayRef[AlexaForBusiness_Ssml]

  The list of SSML messages.


=head2 TextList => ArrayRef[AlexaForBusiness_Text]

  The list of text messages.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

