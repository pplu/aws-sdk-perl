# Generated from default/object.tt
package Paws::GroundStation::ConfigTypeData;
  use Moo;
  use Types::Standard qw//;
  use Paws::GroundStation::Types qw/GroundStation_DataflowEndpointConfig GroundStation_AntennaUplinkConfig GroundStation_AntennaDownlinkConfig GroundStation_UplinkEchoConfig GroundStation_TrackingConfig GroundStation_AntennaDownlinkDemodDecodeConfig/;
  has AntennaDownlinkConfig => (is => 'ro', isa => GroundStation_AntennaDownlinkConfig);
  has AntennaDownlinkDemodDecodeConfig => (is => 'ro', isa => GroundStation_AntennaDownlinkDemodDecodeConfig);
  has AntennaUplinkConfig => (is => 'ro', isa => GroundStation_AntennaUplinkConfig);
  has DataflowEndpointConfig => (is => 'ro', isa => GroundStation_DataflowEndpointConfig);
  has TrackingConfig => (is => 'ro', isa => GroundStation_TrackingConfig);
  has UplinkEchoConfig => (is => 'ro', isa => GroundStation_UplinkEchoConfig);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UplinkEchoConfig' => {
                                       'class' => 'Paws::GroundStation::UplinkEchoConfig',
                                       'type' => 'GroundStation_UplinkEchoConfig'
                                     },
               'DataflowEndpointConfig' => {
                                             'class' => 'Paws::GroundStation::DataflowEndpointConfig',
                                             'type' => 'GroundStation_DataflowEndpointConfig'
                                           },
               'TrackingConfig' => {
                                     'class' => 'Paws::GroundStation::TrackingConfig',
                                     'type' => 'GroundStation_TrackingConfig'
                                   },
               'AntennaDownlinkDemodDecodeConfig' => {
                                                       'class' => 'Paws::GroundStation::AntennaDownlinkDemodDecodeConfig',
                                                       'type' => 'GroundStation_AntennaDownlinkDemodDecodeConfig'
                                                     },
               'AntennaUplinkConfig' => {
                                          'class' => 'Paws::GroundStation::AntennaUplinkConfig',
                                          'type' => 'GroundStation_AntennaUplinkConfig'
                                        },
               'AntennaDownlinkConfig' => {
                                            'class' => 'Paws::GroundStation::AntennaDownlinkConfig',
                                            'type' => 'GroundStation_AntennaDownlinkConfig'
                                          }
             },
  'NameInRequest' => {
                       'UplinkEchoConfig' => 'uplinkEchoConfig',
                       'DataflowEndpointConfig' => 'dataflowEndpointConfig',
                       'TrackingConfig' => 'trackingConfig',
                       'AntennaDownlinkDemodDecodeConfig' => 'antennaDownlinkDemodDecodeConfig',
                       'AntennaUplinkConfig' => 'antennaUplinkConfig',
                       'AntennaDownlinkConfig' => 'antennaDownlinkConfig'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ConfigTypeData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::ConfigTypeData object:

  $service_obj->Method(Att1 => { AntennaDownlinkConfig => $value, ..., UplinkEchoConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::ConfigTypeData object:

  $result = $service_obj->Method(...);
  $result->Att1->AntennaDownlinkConfig

=head1 DESCRIPTION

Object containing the parameters for a C<Config>.

See the subtype definitions for what each type of C<Config> contains.

=head1 ATTRIBUTES


=head2 AntennaDownlinkConfig => GroundStation_AntennaDownlinkConfig

  Information about how AWS Ground Station should configure an antenna
for downlink during a contact.


=head2 AntennaDownlinkDemodDecodeConfig => GroundStation_AntennaDownlinkDemodDecodeConfig

  Information about how AWS Ground Station should congure an antenna for
downlink demod decode during a contact.


=head2 AntennaUplinkConfig => GroundStation_AntennaUplinkConfig

  Information about how AWS Ground Station should congure an antenna for
uplink during a contact.


=head2 DataflowEndpointConfig => GroundStation_DataflowEndpointConfig

  Information about the dataflow endpoint C<Config>.


=head2 TrackingConfig => GroundStation_TrackingConfig

  Object that determines whether tracking should be used during a contact
executed with this C<Config> in the mission profile.


=head2 UplinkEchoConfig => GroundStation_UplinkEchoConfig

  Information about an uplink echo C<Config>.

Parameters from the C<AntennaUplinkConfig>, corresponding to the
specified C<AntennaUplinkConfigArn>, are used when this
C<UplinkEchoConfig> is used in a contact.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

