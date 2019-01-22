package Paws::MediaConvert::CaptionSourceSettings;
  use Moose;
  has AncillarySourceSettings => (is => 'ro', isa => 'Paws::MediaConvert::AncillarySourceSettings', request_name => 'ancillarySourceSettings', traits => ['NameInRequest']);
  has DvbSubSourceSettings => (is => 'ro', isa => 'Paws::MediaConvert::DvbSubSourceSettings', request_name => 'dvbSubSourceSettings', traits => ['NameInRequest']);
  has EmbeddedSourceSettings => (is => 'ro', isa => 'Paws::MediaConvert::EmbeddedSourceSettings', request_name => 'embeddedSourceSettings', traits => ['NameInRequest']);
  has FileSourceSettings => (is => 'ro', isa => 'Paws::MediaConvert::FileSourceSettings', request_name => 'fileSourceSettings', traits => ['NameInRequest']);
  has SourceType => (is => 'ro', isa => 'Str', request_name => 'sourceType', traits => ['NameInRequest']);
  has TeletextSourceSettings => (is => 'ro', isa => 'Paws::MediaConvert::TeletextSourceSettings', request_name => 'teletextSourceSettings', traits => ['NameInRequest']);
  has TrackSourceSettings => (is => 'ro', isa => 'Paws::MediaConvert::TrackSourceSettings', request_name => 'trackSourceSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CaptionSourceSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::CaptionSourceSettings object:

  $service_obj->Method(Att1 => { AncillarySourceSettings => $value, ..., TrackSourceSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::CaptionSourceSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AncillarySourceSettings

=head1 DESCRIPTION

Source settings (SourceSettings) contains the group of settings for
captions in the input.

=head1 ATTRIBUTES


=head2 AncillarySourceSettings => L<Paws::MediaConvert::AncillarySourceSettings>

  


=head2 DvbSubSourceSettings => L<Paws::MediaConvert::DvbSubSourceSettings>

  


=head2 EmbeddedSourceSettings => L<Paws::MediaConvert::EmbeddedSourceSettings>

  


=head2 FileSourceSettings => L<Paws::MediaConvert::FileSourceSettings>

  


=head2 SourceType => Str

  


=head2 TeletextSourceSettings => L<Paws::MediaConvert::TeletextSourceSettings>

  


=head2 TrackSourceSettings => L<Paws::MediaConvert::TrackSourceSettings>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

