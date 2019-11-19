# Generated from default/object.tt
package Paws::MediaLive::CaptionSelector;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw/MediaLive_CaptionSelectorSettings/;
  has LanguageCode => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);
  has SelectorSettings => (is => 'ro', isa => MediaLive_CaptionSelectorSettings);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1
                  },
  'NameInRequest' => {
                       'LanguageCode' => 'languageCode',
                       'SelectorSettings' => 'selectorSettings',
                       'Name' => 'name'
                     },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'SelectorSettings' => {
                                       'type' => 'MediaLive_CaptionSelectorSettings',
                                       'class' => 'Paws::MediaLive::CaptionSelectorSettings'
                                     },
               'LanguageCode' => {
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

Paws::MediaLive::CaptionSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::CaptionSelector object:

  $service_obj->Method(Att1 => { LanguageCode => $value, ..., SelectorSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::CaptionSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->LanguageCode

=head1 DESCRIPTION

Output groups for this Live Event. Output groups contain information
about where streams should be distributed.

=head1 ATTRIBUTES


=head2 LanguageCode => Str

  When specified this field indicates the three letter language code of
the caption track to extract from the source.


=head2 B<REQUIRED> Name => Str

  Name identifier for a caption selector. This name is used to associate
this caption selector with one or more caption descriptions. Names must
be unique within an event.


=head2 SelectorSettings => MediaLive_CaptionSelectorSettings

  Caption selector settings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

