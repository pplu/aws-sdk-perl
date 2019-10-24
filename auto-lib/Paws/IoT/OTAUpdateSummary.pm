# Generated from default/object.tt
package Paws::IoT::OTAUpdateSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has CreationDate => (is => 'ro', isa => Str);
  has OtaUpdateArn => (is => 'ro', isa => Str);
  has OtaUpdateId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OtaUpdateArn' => {
                                   'type' => 'Str'
                                 },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'OtaUpdateId' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'OtaUpdateArn' => 'otaUpdateArn',
                       'CreationDate' => 'creationDate',
                       'OtaUpdateId' => 'otaUpdateId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::OTAUpdateSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::OTAUpdateSummary object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., OtaUpdateId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::OTAUpdateSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

An OTA update summary.

=head1 ATTRIBUTES


=head2 CreationDate => Str

  The date when the OTA update was created.


=head2 OtaUpdateArn => Str

  The OTA update ARN.


=head2 OtaUpdateId => Str

  The OTA update ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

