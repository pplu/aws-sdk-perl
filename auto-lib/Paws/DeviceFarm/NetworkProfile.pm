# Generated from default/object.tt
package Paws::DeviceFarm::NetworkProfile;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::DeviceFarm::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has DownlinkBandwidthBits => (is => 'ro', isa => Int);
  has DownlinkDelayMs => (is => 'ro', isa => Int);
  has DownlinkJitterMs => (is => 'ro', isa => Int);
  has DownlinkLossPercent => (is => 'ro', isa => Int);
  has Name => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);
  has UplinkBandwidthBits => (is => 'ro', isa => Int);
  has UplinkDelayMs => (is => 'ro', isa => Int);
  has UplinkJitterMs => (is => 'ro', isa => Int);
  has UplinkLossPercent => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UplinkBandwidthBits' => {
                                          'type' => 'Int'
                                        },
               'Arn' => {
                          'type' => 'Str'
                        },
               'UplinkJitterMs' => {
                                     'type' => 'Int'
                                   },
               'Description' => {
                                  'type' => 'Str'
                                },
               'UplinkDelayMs' => {
                                    'type' => 'Int'
                                  },
               'DownlinkBandwidthBits' => {
                                            'type' => 'Int'
                                          },
               'DownlinkDelayMs' => {
                                      'type' => 'Int'
                                    },
               'Type' => {
                           'type' => 'Str'
                         },
               'DownlinkJitterMs' => {
                                       'type' => 'Int'
                                     },
               'Name' => {
                           'type' => 'Str'
                         },
               'UplinkLossPercent' => {
                                        'type' => 'Int'
                                      },
               'DownlinkLossPercent' => {
                                          'type' => 'Int'
                                        }
             },
  'NameInRequest' => {
                       'UplinkDelayMs' => 'uplinkDelayMs',
                       'Description' => 'description',
                       'DownlinkBandwidthBits' => 'downlinkBandwidthBits',
                       'Type' => 'type',
                       'DownlinkDelayMs' => 'downlinkDelayMs',
                       'Arn' => 'arn',
                       'UplinkBandwidthBits' => 'uplinkBandwidthBits',
                       'UplinkJitterMs' => 'uplinkJitterMs',
                       'DownlinkJitterMs' => 'downlinkJitterMs',
                       'UplinkLossPercent' => 'uplinkLossPercent',
                       'DownlinkLossPercent' => 'downlinkLossPercent',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::NetworkProfile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::NetworkProfile object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UplinkLossPercent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::NetworkProfile object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An array of settings that describes characteristics of a network
profile.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the network profile.


=head2 Description => Str

  The description of the network profile.


=head2 DownlinkBandwidthBits => Int

  The data throughput rate in bits per second, as an integer from 0 to
104857600.


=head2 DownlinkDelayMs => Int

  Delay time for all packets to destination in milliseconds as an integer
from 0 to 2000.


=head2 DownlinkJitterMs => Int

  Time variation in the delay of received packets in milliseconds as an
integer from 0 to 2000.


=head2 DownlinkLossPercent => Int

  Proportion of received packets that fail to arrive from 0 to 100
percent.


=head2 Name => Str

  The name of the network profile.


=head2 Type => Str

  The type of network profile. Valid values are listed below.


=head2 UplinkBandwidthBits => Int

  The data throughput rate in bits per second, as an integer from 0 to
104857600.


=head2 UplinkDelayMs => Int

  Delay time for all packets to destination in milliseconds as an integer
from 0 to 2000.


=head2 UplinkJitterMs => Int

  Time variation in the delay of received packets in milliseconds as an
integer from 0 to 2000.


=head2 UplinkLossPercent => Int

  Proportion of transmitted packets that fail to arrive from 0 to 100
percent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

