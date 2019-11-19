# Generated from default/object.tt
package Paws::MediaLive::CaptionDescription;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw/MediaLive_CaptionDestinationSettings/;
  has CaptionSelectorName => (is => 'ro', isa => Str, required => 1);
  has DestinationSettings => (is => 'ro', isa => MediaLive_CaptionDestinationSettings);
  has LanguageCode => (is => 'ro', isa => Str);
  has LanguageDescription => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'DestinationSettings' => {
                                          'type' => 'MediaLive_CaptionDestinationSettings',
                                          'class' => 'Paws::MediaLive::CaptionDestinationSettings'
                                        },
               'CaptionSelectorName' => {
                                          'type' => 'Str'
                                        },
               'LanguageCode' => {
                                   'type' => 'Str'
                                 },
               'LanguageDescription' => {
                                          'type' => 'Str'
                                        }
             },
  'NameInRequest' => {
                       'Name' => 'name',
                       'DestinationSettings' => 'destinationSettings',
                       'CaptionSelectorName' => 'captionSelectorName',
                       'LanguageCode' => 'languageCode',
                       'LanguageDescription' => 'languageDescription'
                     },
  'IsRequired' => {
                    'CaptionSelectorName' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CaptionDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::CaptionDescription object:

  $service_obj->Method(Att1 => { CaptionSelectorName => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::CaptionDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CaptionSelectorName

=head1 DESCRIPTION

Output groups for this Live Event. Output groups contain information
about where streams should be distributed.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaptionSelectorName => Str

  Specifies which input caption selector to use as a caption source when
generating output captions. This field should match a captionSelector
name.


=head2 DestinationSettings => MediaLive_CaptionDestinationSettings

  Additional settings for captions destination that depend on the
destination type.


=head2 LanguageCode => Str

  ISO 639-2 three-digit code: http://www.loc.gov/standards/iso639-2/


=head2 LanguageDescription => Str

  Human readable information to indicate captions available for players
(eg. English, or Spanish).


=head2 B<REQUIRED> Name => Str

  Name of the caption description. Used to associate a caption
description with an output. Names must be unique within an event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

