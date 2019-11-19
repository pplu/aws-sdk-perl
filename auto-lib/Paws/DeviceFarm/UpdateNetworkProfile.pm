# Generated from json/callargs_class.tt

package Paws::DeviceFarm::UpdateNetworkProfile;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::DeviceFarm::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has DownlinkBandwidthBits => (is => 'ro', isa => Int, predicate => 1);
  has DownlinkDelayMs => (is => 'ro', isa => Int, predicate => 1);
  has DownlinkJitterMs => (is => 'ro', isa => Int, predicate => 1);
  has DownlinkLossPercent => (is => 'ro', isa => Int, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has Type => (is => 'ro', isa => Str, predicate => 1);
  has UplinkBandwidthBits => (is => 'ro', isa => Int, predicate => 1);
  has UplinkDelayMs => (is => 'ro', isa => Int, predicate => 1);
  has UplinkJitterMs => (is => 'ro', isa => Int, predicate => 1);
  has UplinkLossPercent => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateNetworkProfile');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DeviceFarm::UpdateNetworkProfileResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'UplinkJitterMs' => 'uplinkJitterMs',
                       'Arn' => 'arn',
                       'UplinkBandwidthBits' => 'uplinkBandwidthBits',
                       'Type' => 'type',
                       'DownlinkDelayMs' => 'downlinkDelayMs',
                       'DownlinkBandwidthBits' => 'downlinkBandwidthBits',
                       'UplinkDelayMs' => 'uplinkDelayMs',
                       'Description' => 'description',
                       'UplinkLossPercent' => 'uplinkLossPercent',
                       'DownlinkLossPercent' => 'downlinkLossPercent',
                       'Name' => 'name',
                       'DownlinkJitterMs' => 'downlinkJitterMs'
                     },
  'IsRequired' => {
                    'Arn' => 1
                  },
  'types' => {
               'UplinkLossPercent' => {
                                        'type' => 'Int'
                                      },
               'DownlinkLossPercent' => {
                                          'type' => 'Int'
                                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'DownlinkJitterMs' => {
                                       'type' => 'Int'
                                     },
               'UplinkJitterMs' => {
                                     'type' => 'Int'
                                   },
               'UplinkBandwidthBits' => {
                                          'type' => 'Int'
                                        },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Type' => {
                           'type' => 'Str'
                         },
               'DownlinkDelayMs' => {
                                      'type' => 'Int'
                                    },
               'DownlinkBandwidthBits' => {
                                            'type' => 'Int'
                                          },
               'Description' => {
                                  'type' => 'Str'
                                },
               'UplinkDelayMs' => {
                                    'type' => 'Int'
                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UpdateNetworkProfile - Arguments for method UpdateNetworkProfile on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNetworkProfile on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method UpdateNetworkProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNetworkProfile.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $UpdateNetworkProfileResult = $devicefarm->UpdateNetworkProfile(
      Arn                   => 'MyAmazonResourceName',
      Description           => 'MyMessage',              # OPTIONAL
      DownlinkBandwidthBits => 1,                        # OPTIONAL
      DownlinkDelayMs       => 1,                        # OPTIONAL
      DownlinkJitterMs      => 1,                        # OPTIONAL
      DownlinkLossPercent   => 1,                        # OPTIONAL
      Name                  => 'MyName',                 # OPTIONAL
      Type                  => 'CURATED',                # OPTIONAL
      UplinkBandwidthBits   => 1,                        # OPTIONAL
      UplinkDelayMs         => 1,                        # OPTIONAL
      UplinkJitterMs        => 1,                        # OPTIONAL
      UplinkLossPercent     => 1,                        # OPTIONAL
    );

    # Results:
    my $NetworkProfile = $UpdateNetworkProfileResult->NetworkProfile;

    # Returns a L<Paws::DeviceFarm::UpdateNetworkProfileResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/UpdateNetworkProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the project for which you want to
update network profile settings.



=head2 Description => Str

The description of the network profile about which you are returning
information.



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

The name of the network profile about which you are returning
information.



=head2 Type => Str

The type of network profile you wish to return information about. Valid
values are listed below.

Valid values are: C<"CURATED">, C<"PRIVATE">

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

This class forms part of L<Paws>, documenting arguments for method UpdateNetworkProfile in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

