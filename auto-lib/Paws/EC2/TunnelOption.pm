package Paws::EC2::TunnelOption;
  use Moo;  use Types::Standard qw/Int ArrayRef Str/;
  use Paws::EC2::Types qw/EC2_Phase1EncryptionAlgorithmsListValue EC2_Phase2IntegrityAlgorithmsListValue EC2_Phase2DHGroupNumbersListValue EC2_Phase1DHGroupNumbersListValue EC2_Phase2EncryptionAlgorithmsListValue EC2_IKEVersionsListValue EC2_Phase1IntegrityAlgorithmsListValue/;
  has DpdTimeoutSeconds => (is => 'ro', isa => Int);
  has IkeVersions => (is => 'ro', isa => ArrayRef[EC2_IKEVersionsListValue]);
  has OutsideIpAddress => (is => 'ro', isa => Str);
  has Phase1DHGroupNumbers => (is => 'ro', isa => ArrayRef[EC2_Phase1DHGroupNumbersListValue]);
  has Phase1EncryptionAlgorithms => (is => 'ro', isa => ArrayRef[EC2_Phase1EncryptionAlgorithmsListValue]);
  has Phase1IntegrityAlgorithms => (is => 'ro', isa => ArrayRef[EC2_Phase1IntegrityAlgorithmsListValue]);
  has Phase1LifetimeSeconds => (is => 'ro', isa => Int);
  has Phase2DHGroupNumbers => (is => 'ro', isa => ArrayRef[EC2_Phase2DHGroupNumbersListValue]);
  has Phase2EncryptionAlgorithms => (is => 'ro', isa => ArrayRef[EC2_Phase2EncryptionAlgorithmsListValue]);
  has Phase2IntegrityAlgorithms => (is => 'ro', isa => ArrayRef[EC2_Phase2IntegrityAlgorithmsListValue]);
  has Phase2LifetimeSeconds => (is => 'ro', isa => Int);
  has PreSharedKey => (is => 'ro', isa => Str);
  has RekeyFuzzPercentage => (is => 'ro', isa => Int);
  has RekeyMarginTimeSeconds => (is => 'ro', isa => Int);
  has ReplayWindowSize => (is => 'ro', isa => Int);
  has TunnelInsideCidr => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RekeyMarginTimeSeconds' => {
                                             'type' => 'Int'
                                           },
               'IkeVersions' => {
                                  'type' => 'ArrayRef[EC2_IKEVersionsListValue]',
                                  'class' => 'Paws::EC2::IKEVersionsListValue'
                                },
               'Phase2EncryptionAlgorithms' => {
                                                 'class' => 'Paws::EC2::Phase2EncryptionAlgorithmsListValue',
                                                 'type' => 'ArrayRef[EC2_Phase2EncryptionAlgorithmsListValue]'
                                               },
               'Phase2LifetimeSeconds' => {
                                            'type' => 'Int'
                                          },
               'DpdTimeoutSeconds' => {
                                        'type' => 'Int'
                                      },
               'PreSharedKey' => {
                                   'type' => 'Str'
                                 },
               'Phase1LifetimeSeconds' => {
                                            'type' => 'Int'
                                          },
               'RekeyFuzzPercentage' => {
                                          'type' => 'Int'
                                        },
               'TunnelInsideCidr' => {
                                       'type' => 'Str'
                                     },
               'Phase1IntegrityAlgorithms' => {
                                                'class' => 'Paws::EC2::Phase1IntegrityAlgorithmsListValue',
                                                'type' => 'ArrayRef[EC2_Phase1IntegrityAlgorithmsListValue]'
                                              },
               'Phase2IntegrityAlgorithms' => {
                                                'class' => 'Paws::EC2::Phase2IntegrityAlgorithmsListValue',
                                                'type' => 'ArrayRef[EC2_Phase2IntegrityAlgorithmsListValue]'
                                              },
               'Phase1EncryptionAlgorithms' => {
                                                 'type' => 'ArrayRef[EC2_Phase1EncryptionAlgorithmsListValue]',
                                                 'class' => 'Paws::EC2::Phase1EncryptionAlgorithmsListValue'
                                               },
               'Phase1DHGroupNumbers' => {
                                           'type' => 'ArrayRef[EC2_Phase1DHGroupNumbersListValue]',
                                           'class' => 'Paws::EC2::Phase1DHGroupNumbersListValue'
                                         },
               'OutsideIpAddress' => {
                                       'type' => 'Str'
                                     },
               'Phase2DHGroupNumbers' => {
                                           'class' => 'Paws::EC2::Phase2DHGroupNumbersListValue',
                                           'type' => 'ArrayRef[EC2_Phase2DHGroupNumbersListValue]'
                                         },
               'ReplayWindowSize' => {
                                       'type' => 'Int'
                                     }
             },
  'NameInRequest' => {
                       'Phase2DHGroupNumbers' => 'phase2DHGroupNumberSet',
                       'ReplayWindowSize' => 'replayWindowSize',
                       'Phase1IntegrityAlgorithms' => 'phase1IntegrityAlgorithmSet',
                       'Phase2IntegrityAlgorithms' => 'phase2IntegrityAlgorithmSet',
                       'Phase1EncryptionAlgorithms' => 'phase1EncryptionAlgorithmSet',
                       'Phase1DHGroupNumbers' => 'phase1DHGroupNumberSet',
                       'OutsideIpAddress' => 'outsideIpAddress',
                       'Phase1LifetimeSeconds' => 'phase1LifetimeSeconds',
                       'RekeyFuzzPercentage' => 'rekeyFuzzPercentage',
                       'TunnelInsideCidr' => 'tunnelInsideCidr',
                       'RekeyMarginTimeSeconds' => 'rekeyMarginTimeSeconds',
                       'IkeVersions' => 'ikeVersionSet',
                       'Phase2EncryptionAlgorithms' => 'phase2EncryptionAlgorithmSet',
                       'Phase2LifetimeSeconds' => 'phase2LifetimeSeconds',
                       'DpdTimeoutSeconds' => 'dpdTimeoutSeconds',
                       'PreSharedKey' => 'preSharedKey'
                     }
}
;
    return $Params_map;
  }

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

  $service_obj->Method(Att1 => { DpdTimeoutSeconds => $value, ..., TunnelInsideCidr => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TunnelOption object:

  $result = $service_obj->Method(...);
  $result->Att1->DpdTimeoutSeconds

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DpdTimeoutSeconds => Int

  The number of seconds after which a DPD timeout occurs.


=head2 IkeVersions => ArrayRef[EC2_IKEVersionsListValue]

  The IKE versions that are permitted for the VPN tunnel.


=head2 OutsideIpAddress => Str

  The external IP address of the VPN tunnel.


=head2 Phase1DHGroupNumbers => ArrayRef[EC2_Phase1DHGroupNumbersListValue]

  The permitted Diffie-Hellman group numbers for the VPN tunnel for phase
1 IKE negotiations.


=head2 Phase1EncryptionAlgorithms => ArrayRef[EC2_Phase1EncryptionAlgorithmsListValue]

  The permitted encryption algorithms for the VPN tunnel for phase 1 IKE
negotiations.


=head2 Phase1IntegrityAlgorithms => ArrayRef[EC2_Phase1IntegrityAlgorithmsListValue]

  The permitted integrity algorithms for the VPN tunnel for phase 1 IKE
negotiations.


=head2 Phase1LifetimeSeconds => Int

  The lifetime for phase 1 of the IKE negotiation, in seconds.


=head2 Phase2DHGroupNumbers => ArrayRef[EC2_Phase2DHGroupNumbersListValue]

  The permitted Diffie-Hellman group numbers for the VPN tunnel for phase
2 IKE negotiations.


=head2 Phase2EncryptionAlgorithms => ArrayRef[EC2_Phase2EncryptionAlgorithmsListValue]

  The permitted encryption algorithms for the VPN tunnel for phase 2 IKE
negotiations.


=head2 Phase2IntegrityAlgorithms => ArrayRef[EC2_Phase2IntegrityAlgorithmsListValue]

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


=head2 TunnelInsideCidr => Str

  The range of inside IP addresses for the tunnel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
