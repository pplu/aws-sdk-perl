package Paws::MediaConvert::EsamSettings;
  use Moose;
  has ManifestConfirmConditionNotification => (is => 'ro', isa => 'Paws::MediaConvert::EsamManifestConfirmConditionNotification', request_name => 'manifestConfirmConditionNotification', traits => ['NameInRequest']);
  has ResponseSignalPreroll => (is => 'ro', isa => 'Int', request_name => 'responseSignalPreroll', traits => ['NameInRequest']);
  has SignalProcessingNotification => (is => 'ro', isa => 'Paws::MediaConvert::EsamSignalProcessingNotification', request_name => 'signalProcessingNotification', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::EsamSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::EsamSettings object:

  $service_obj->Method(Att1 => { ManifestConfirmConditionNotification => $value, ..., SignalProcessingNotification => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::EsamSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ManifestConfirmConditionNotification

=head1 DESCRIPTION

Settings for Event Signaling And Messaging (ESAM). If you don't do ad
insertion, you can ignore these settings.

=head1 ATTRIBUTES


=head2 ManifestConfirmConditionNotification => L<Paws::MediaConvert::EsamManifestConfirmConditionNotification>

  Specifies an ESAM ManifestConfirmConditionNotification XML as per
OC-SP-ESAM-API-I03-131025. The transcoder uses the manifest
conditioning instructions that you provide in the setting MCC XML
(mccXml).


=head2 ResponseSignalPreroll => Int

  Specifies the stream distance, in milliseconds, between the SCTE 35
messages that the transcoder places and the splice points that they
refer to. If the time between the start of the asset and the SCTE-35
message is less than this value, then the transcoder places the SCTE-35
marker at the beginning of the stream.


=head2 SignalProcessingNotification => L<Paws::MediaConvert::EsamSignalProcessingNotification>

  Specifies an ESAM SignalProcessingNotification XML as per
OC-SP-ESAM-API-I03-131025. The transcoder uses the signal processing
instructions that you provide in the setting SCC XML (sccXml).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

