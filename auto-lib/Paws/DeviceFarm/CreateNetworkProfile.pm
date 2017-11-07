
package Paws::DeviceFarm::CreateNetworkProfile;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DownlinkBandwidthBits => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'downlinkBandwidthBits' );
  has DownlinkDelayMs => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'downlinkDelayMs' );
  has DownlinkJitterMs => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'downlinkJitterMs' );
  has DownlinkLossPercent => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'downlinkLossPercent' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' , required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' );
  has UplinkBandwidthBits => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'uplinkBandwidthBits' );
  has UplinkDelayMs => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'uplinkDelayMs' );
  has UplinkJitterMs => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'uplinkJitterMs' );
  has UplinkLossPercent => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'uplinkLossPercent' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::CreateNetworkProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateNetworkProfile - Arguments for method CreateNetworkProfile on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNetworkProfile on the 
AWS Device Farm service. Use the attributes of this class
as arguments to method CreateNetworkProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNetworkProfile.

As an example:

  $service_obj->CreateNetworkProfile(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


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



=head2 B<REQUIRED> Name => Str

The name you wish to specify for the new network profile.



=head2 B<REQUIRED> ProjectArn => Str

The Amazon Resource Name (ARN) of the project for which you want to
create a network profile.



=head2 Type => Str

The type of network profile you wish to create. Valid values are listed
below.

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

This class forms part of L<Paws>, documenting arguments for method CreateNetworkProfile in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

