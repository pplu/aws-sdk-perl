package Paws::EC2::ModifyVpnTunnelOptionsSpecification;
  use Moose;
  has DPDTimeoutSeconds => (is => 'ro', isa => 'Int');
  has IKEVersions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IKEVersionsRequestListValue]', request_name => 'IKEVersion', traits => ['NameInRequest']);
  has Phase1DHGroupNumbers => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Phase1DHGroupNumbersRequestListValue]', request_name => 'Phase1DHGroupNumber', traits => ['NameInRequest']);
  has Phase1EncryptionAlgorithms => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Phase1EncryptionAlgorithmsRequestListValue]', request_name => 'Phase1EncryptionAlgorithm', traits => ['NameInRequest']);
  has Phase1IntegrityAlgorithms => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Phase1IntegrityAlgorithmsRequestListValue]', request_name => 'Phase1IntegrityAlgorithm', traits => ['NameInRequest']);
  has Phase1LifetimeSeconds => (is => 'ro', isa => 'Int');
  has Phase2DHGroupNumbers => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Phase2DHGroupNumbersRequestListValue]', request_name => 'Phase2DHGroupNumber', traits => ['NameInRequest']);
  has Phase2EncryptionAlgorithms => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Phase2EncryptionAlgorithmsRequestListValue]', request_name => 'Phase2EncryptionAlgorithm', traits => ['NameInRequest']);
  has Phase2IntegrityAlgorithms => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Phase2IntegrityAlgorithmsRequestListValue]', request_name => 'Phase2IntegrityAlgorithm', traits => ['NameInRequest']);
  has Phase2LifetimeSeconds => (is => 'ro', isa => 'Int');
  has PreSharedKey => (is => 'ro', isa => 'Str');
  has RekeyFuzzPercentage => (is => 'ro', isa => 'Int');
  has RekeyMarginTimeSeconds => (is => 'ro', isa => 'Int');
  has ReplayWindowSize => (is => 'ro', isa => 'Int');
  has TunnelInsideCidr => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpnTunnelOptionsSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ModifyVpnTunnelOptionsSpecification object:

  $service_obj->Method(Att1 => { DPDTimeoutSeconds => $value, ..., TunnelInsideCidr => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ModifyVpnTunnelOptionsSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->DPDTimeoutSeconds

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DPDTimeoutSeconds => Int

The number of seconds after which a DPD timeout occurs.

Constraints: A value between 0 and 30.

Default: C<30>


=head2 IKEVersions => ArrayRef[L<Paws::EC2::IKEVersionsRequestListValue>]

The IKE versions that are permitted for the VPN tunnel.

Valid values: C<ikev1> | C<ikev2>


=head2 Phase1DHGroupNumbers => ArrayRef[L<Paws::EC2::Phase1DHGroupNumbersRequestListValue>]

One or more Diffie-Hellman group numbers that are permitted for the VPN
tunnel for phase 1 IKE negotiations.

Valid values: C<2> | C<14> | C<15> | C<16> | C<17> | C<18> | C<22> |
C<23> | C<24>


=head2 Phase1EncryptionAlgorithms => ArrayRef[L<Paws::EC2::Phase1EncryptionAlgorithmsRequestListValue>]

One or more encryption algorithms that are permitted for the VPN tunnel
for phase 1 IKE negotiations.

Valid values: C<AES128> | C<AES256>


=head2 Phase1IntegrityAlgorithms => ArrayRef[L<Paws::EC2::Phase1IntegrityAlgorithmsRequestListValue>]

One or more integrity algorithms that are permitted for the VPN tunnel
for phase 1 IKE negotiations.

Valid values: C<SHA1> | C<SHA2-256>


=head2 Phase1LifetimeSeconds => Int

The lifetime for phase 1 of the IKE negotiation, in seconds.

Constraints: A value between 900 and 28,800.

Default: C<28800>


=head2 Phase2DHGroupNumbers => ArrayRef[L<Paws::EC2::Phase2DHGroupNumbersRequestListValue>]

One or more Diffie-Hellman group numbers that are permitted for the VPN
tunnel for phase 2 IKE negotiations.

Valid values: C<2> | C<5> | C<14> | C<15> | C<16> | C<17> | C<18> |
C<22> | C<23> | C<24>


=head2 Phase2EncryptionAlgorithms => ArrayRef[L<Paws::EC2::Phase2EncryptionAlgorithmsRequestListValue>]

One or more encryption algorithms that are permitted for the VPN tunnel
for phase 2 IKE negotiations.

Valid values: C<AES128> | C<AES256>


=head2 Phase2IntegrityAlgorithms => ArrayRef[L<Paws::EC2::Phase2IntegrityAlgorithmsRequestListValue>]

One or more integrity algorithms that are permitted for the VPN tunnel
for phase 2 IKE negotiations.

Valid values: C<SHA1> | C<SHA2-256>


=head2 Phase2LifetimeSeconds => Int

The lifetime for phase 2 of the IKE negotiation, in seconds.

Constraints: A value between 900 and 3,600. The value must be less than
the value for C<Phase1LifetimeSeconds>.

Default: C<3600>


=head2 PreSharedKey => Str

The pre-shared key (PSK) to establish initial authentication between
the virtual private gateway and the customer gateway.

Constraints: Allowed characters are alphanumeric characters, periods
(.), and underscores (_). Must be between 8 and 64 characters in length
and cannot start with zero (0).


=head2 RekeyFuzzPercentage => Int

The percentage of the rekey window (determined by
C<RekeyMarginTimeSeconds>) during which the rekey time is randomly
selected.

Constraints: A value between 0 and 100.

Default: C<100>


=head2 RekeyMarginTimeSeconds => Int

The margin time, in seconds, before the phase 2 lifetime expires,
during which the AWS side of the VPN connection performs an IKE rekey.
The exact time of the rekey is randomly selected based on the value for
C<RekeyFuzzPercentage>.

Constraints: A value between 60 and half of C<Phase2LifetimeSeconds>.

Default: C<540>


=head2 ReplayWindowSize => Int

The number of packets in an IKE replay window.

Constraints: A value between 64 and 2048.

Default: C<1024>


=head2 TunnelInsideCidr => Str

The range of inside IP addresses for the tunnel. Any specified CIDR
blocks must be unique across all VPN connections that use the same
virtual private gateway.

Constraints: A size /30 CIDR block from the C<169.254.0.0/16> range.
The following CIDR blocks are reserved and cannot be used:

=over

=item *

C<169.254.0.0/30>

=item *

C<169.254.1.0/30>

=item *

C<169.254.2.0/30>

=item *

C<169.254.3.0/30>

=item *

C<169.254.4.0/30>

=item *

C<169.254.5.0/30>

=item *

C<169.254.169.252/30>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
