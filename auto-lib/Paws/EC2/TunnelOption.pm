package Paws::EC2::TunnelOption;
  use Moose;
  has DpdTimeoutAction => (is => 'ro', isa => 'Str', request_name => 'dpdTimeoutAction', traits => ['NameInRequest']);
  has DpdTimeoutSeconds => (is => 'ro', isa => 'Int', request_name => 'dpdTimeoutSeconds', traits => ['NameInRequest']);
  has IkeVersions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IKEVersionsListValue]', request_name => 'ikeVersionSet', traits => ['NameInRequest']);
  has OutsideIpAddress => (is => 'ro', isa => 'Str', request_name => 'outsideIpAddress', traits => ['NameInRequest']);
  has Phase1DHGroupNumbers => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Phase1DHGroupNumbersListValue]', request_name => 'phase1DHGroupNumberSet', traits => ['NameInRequest']);
  has Phase1EncryptionAlgorithms => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Phase1EncryptionAlgorithmsListValue]', request_name => 'phase1EncryptionAlgorithmSet', traits => ['NameInRequest']);
  has Phase1IntegrityAlgorithms => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Phase1IntegrityAlgorithmsListValue]', request_name => 'phase1IntegrityAlgorithmSet', traits => ['NameInRequest']);
  has Phase1LifetimeSeconds => (is => 'ro', isa => 'Int', request_name => 'phase1LifetimeSeconds', traits => ['NameInRequest']);
  has Phase2DHGroupNumbers => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Phase2DHGroupNumbersListValue]', request_name => 'phase2DHGroupNumberSet', traits => ['NameInRequest']);
  has Phase2EncryptionAlgorithms => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Phase2EncryptionAlgorithmsListValue]', request_name => 'phase2EncryptionAlgorithmSet', traits => ['NameInRequest']);
  has Phase2IntegrityAlgorithms => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Phase2IntegrityAlgorithmsListValue]', request_name => 'phase2IntegrityAlgorithmSet', traits => ['NameInRequest']);
  has Phase2LifetimeSeconds => (is => 'ro', isa => 'Int', request_name => 'phase2LifetimeSeconds', traits => ['NameInRequest']);
  has PreSharedKey => (is => 'ro', isa => 'Str', request_name => 'preSharedKey', traits => ['NameInRequest']);
  has RekeyFuzzPercentage => (is => 'ro', isa => 'Int', request_name => 'rekeyFuzzPercentage', traits => ['NameInRequest']);
  has RekeyMarginTimeSeconds => (is => 'ro', isa => 'Int', request_name => 'rekeyMarginTimeSeconds', traits => ['NameInRequest']);
  has ReplayWindowSize => (is => 'ro', isa => 'Int', request_name => 'replayWindowSize', traits => ['NameInRequest']);
  has StartupAction => (is => 'ro', isa => 'Str', request_name => 'startupAction', traits => ['NameInRequest']);
  has TunnelInsideCidr => (is => 'ro', isa => 'Str', request_name => 'tunnelInsideCidr', traits => ['NameInRequest']);
  has TunnelInsideIpv6Cidr => (is => 'ro', isa => 'Str', request_name => 'tunnelInsideIpv6Cidr', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TunnelOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TunnelOption object:

  $service_obj->Method(Att1 => { DpdTimeoutAction => $value, ..., TunnelInsideIpv6Cidr => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TunnelOption object:

  $result = $service_obj->Method(...);
  $result->Att1->DpdTimeoutAction

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DpdTimeoutAction => Str

The action to take after a DPD timeout occurs.


=head2 DpdTimeoutSeconds => Int

The number of seconds after which a DPD timeout occurs.


=head2 IkeVersions => ArrayRef[L<Paws::EC2::IKEVersionsListValue>]

The IKE versions that are permitted for the VPN tunnel.


=head2 OutsideIpAddress => Str

The external IP address of the VPN tunnel.


=head2 Phase1DHGroupNumbers => ArrayRef[L<Paws::EC2::Phase1DHGroupNumbersListValue>]

The permitted Diffie-Hellman group numbers for the VPN tunnel for phase
1 IKE negotiations.


=head2 Phase1EncryptionAlgorithms => ArrayRef[L<Paws::EC2::Phase1EncryptionAlgorithmsListValue>]

The permitted encryption algorithms for the VPN tunnel for phase 1 IKE
negotiations.


=head2 Phase1IntegrityAlgorithms => ArrayRef[L<Paws::EC2::Phase1IntegrityAlgorithmsListValue>]

The permitted integrity algorithms for the VPN tunnel for phase 1 IKE
negotiations.


=head2 Phase1LifetimeSeconds => Int

The lifetime for phase 1 of the IKE negotiation, in seconds.


=head2 Phase2DHGroupNumbers => ArrayRef[L<Paws::EC2::Phase2DHGroupNumbersListValue>]

The permitted Diffie-Hellman group numbers for the VPN tunnel for phase
2 IKE negotiations.


=head2 Phase2EncryptionAlgorithms => ArrayRef[L<Paws::EC2::Phase2EncryptionAlgorithmsListValue>]

The permitted encryption algorithms for the VPN tunnel for phase 2 IKE
negotiations.


=head2 Phase2IntegrityAlgorithms => ArrayRef[L<Paws::EC2::Phase2IntegrityAlgorithmsListValue>]

The permitted integrity algorithms for the VPN tunnel for phase 2 IKE
negotiations.


=head2 Phase2LifetimeSeconds => Int

The lifetime for phase 2 of the IKE negotiation, in seconds.


=head2 PreSharedKey => Str

The pre-shared key (PSK) to establish initial authentication between
the virtual private gateway and the customer gateway.


=head2 RekeyFuzzPercentage => Int

The percentage of the rekey window determined by
C<RekeyMarginTimeSeconds> during which the rekey time is randomly
selected.


=head2 RekeyMarginTimeSeconds => Int

The margin time, in seconds, before the phase 2 lifetime expires,
during which the AWS side of the VPN connection performs an IKE rekey.


=head2 ReplayWindowSize => Int

The number of packets in an IKE replay window.


=head2 StartupAction => Str

The action to take when the establishing the VPN tunnels for a VPN
connection.


=head2 TunnelInsideCidr => Str

The range of inside IPv4 addresses for the tunnel.


=head2 TunnelInsideIpv6Cidr => Str

The range of inside IPv6 addresses for the tunnel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
