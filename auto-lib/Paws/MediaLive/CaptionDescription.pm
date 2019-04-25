package Paws::MediaLive::CaptionDescription;
  use Moose;
  has CaptionSelectorName => (is => 'ro', isa => 'Str', request_name => 'captionSelectorName', traits => ['NameInRequest'], required => 1);
  has DestinationSettings => (is => 'ro', isa => 'Paws::MediaLive::CaptionDestinationSettings', request_name => 'destinationSettings', traits => ['NameInRequest']);
  has LanguageCode => (is => 'ro', isa => 'Str', request_name => 'languageCode', traits => ['NameInRequest']);
  has LanguageDescription => (is => 'ro', isa => 'Str', request_name => 'languageDescription', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
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


=head2 DestinationSettings => L<Paws::MediaLive::CaptionDestinationSettings>

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

