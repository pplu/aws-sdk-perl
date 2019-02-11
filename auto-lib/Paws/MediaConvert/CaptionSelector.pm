package Paws::MediaConvert::CaptionSelector;
  use Moose;
  has CustomLanguageCode => (is => 'ro', isa => 'Str', request_name => 'customLanguageCode', traits => ['NameInRequest']);
  has LanguageCode => (is => 'ro', isa => 'Str', request_name => 'languageCode', traits => ['NameInRequest']);
  has SourceSettings => (is => 'ro', isa => 'Paws::MediaConvert::CaptionSourceSettings', request_name => 'sourceSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CaptionSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::CaptionSelector object:

  $service_obj->Method(Att1 => { CustomLanguageCode => $value, ..., SourceSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::CaptionSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomLanguageCode

=head1 DESCRIPTION

Set up captions in your outputs by first selecting them from your input
here.

=head1 ATTRIBUTES


=head2 CustomLanguageCode => Str

  The specific language to extract from source, using the ISO 639-2 or
ISO 639-3 three-letter language code. If input is SCTE-27, complete
this field and/or PID to select the caption language to extract. If
input is DVB-Sub and output is Burn-in or SMPTE-TT, complete this field
and/or PID to select the caption language to extract. If input is
DVB-Sub that is being passed through, omit this field (and PID field);
there is no way to extract a specific language with pass-through
captions.


=head2 LanguageCode => Str

  The specific language to extract from source. If input is SCTE-27,
complete this field and/or PID to select the caption language to
extract. If input is DVB-Sub and output is Burn-in or SMPTE-TT,
complete this field and/or PID to select the caption language to
extract. If input is DVB-Sub that is being passed through, omit this
field (and PID field); there is no way to extract a specific language
with pass-through captions.


=head2 SourceSettings => L<Paws::MediaConvert::CaptionSourceSettings>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

