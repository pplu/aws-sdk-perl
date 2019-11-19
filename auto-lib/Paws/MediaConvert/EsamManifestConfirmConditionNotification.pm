# Generated from default/object.tt
package Paws::MediaConvert::EsamManifestConfirmConditionNotification;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw//;
  has MccXml => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'MccXml' => 'mccXml'
                     },
  'types' => {
               'MccXml' => {
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

Paws::MediaConvert::EsamManifestConfirmConditionNotification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::EsamManifestConfirmConditionNotification object:

  $service_obj->Method(Att1 => { MccXml => $value, ..., MccXml => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::EsamManifestConfirmConditionNotification object:

  $result = $service_obj->Method(...);
  $result->Att1->MccXml

=head1 DESCRIPTION

ESAM ManifestConfirmConditionNotification defined by
OC-SP-ESAM-API-I03-131025.

=head1 ATTRIBUTES


=head2 MccXml => Str

  Provide your ESAM ManifestConfirmConditionNotification XML document
inside your JSON job settings. Form the XML document as per
OC-SP-ESAM-API-I03-131025. The transcoder will use the Manifest
Conditioning instructions in the message that you supply.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

