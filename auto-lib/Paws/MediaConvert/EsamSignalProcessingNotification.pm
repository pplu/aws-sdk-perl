# Generated from default/object.tt
package Paws::MediaConvert::EsamSignalProcessingNotification;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw//;
  has SccXml => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SccXml' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'SccXml' => 'sccXml'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::EsamSignalProcessingNotification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::EsamSignalProcessingNotification object:

  $service_obj->Method(Att1 => { SccXml => $value, ..., SccXml => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::EsamSignalProcessingNotification object:

  $result = $service_obj->Method(...);
  $result->Att1->SccXml

=head1 DESCRIPTION

ESAM SignalProcessingNotification data defined by
OC-SP-ESAM-API-I03-131025.

=head1 ATTRIBUTES


=head2 SccXml => Str

  Provide your ESAM SignalProcessingNotification XML document inside your
JSON job settings. Form the XML document as per
OC-SP-ESAM-API-I03-131025. The transcoder will use the signal
processing instructions in the message that you supply. Provide your
ESAM SignalProcessingNotification XML document inside your JSON job
settings. If you want the service to place SCTE-35 markers at the
insertion points you specify in the XML document, you must also enable
SCTE-35 ESAM (scte35Esam). Note that you can either specify an ESAM XML
document or enable SCTE-35 passthrough. You can't do both.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

