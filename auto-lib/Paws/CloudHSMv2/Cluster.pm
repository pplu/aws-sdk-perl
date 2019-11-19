# Generated from default/object.tt
package Paws::CloudHSMv2::Cluster;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudHSMv2::Types qw/CloudHSMv2_ExternalSubnetMapping CloudHSMv2_Hsm CloudHSMv2_Certificates/;
  has BackupPolicy => (is => 'ro', isa => Str);
  has Certificates => (is => 'ro', isa => CloudHSMv2_Certificates);
  has ClusterId => (is => 'ro', isa => Str);
  has CreateTimestamp => (is => 'ro', isa => Str);
  has Hsms => (is => 'ro', isa => ArrayRef[CloudHSMv2_Hsm]);
  has HsmType => (is => 'ro', isa => Str);
  has PreCoPassword => (is => 'ro', isa => Str);
  has SecurityGroup => (is => 'ro', isa => Str);
  has SourceBackupId => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has StateMessage => (is => 'ro', isa => Str);
  has SubnetMapping => (is => 'ro', isa => CloudHSMv2_ExternalSubnetMapping);
  has VpcId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourceBackupId' => {
                                     'type' => 'Str'
                                   },
               'Certificates' => {
                                   'class' => 'Paws::CloudHSMv2::Certificates',
                                   'type' => 'CloudHSMv2_Certificates'
                                 },
               'CreateTimestamp' => {
                                      'type' => 'Str'
                                    },
               'Hsms' => {
                           'type' => 'ArrayRef[CloudHSMv2_Hsm]',
                           'class' => 'Paws::CloudHSMv2::Hsm'
                         },
               'SecurityGroup' => {
                                    'type' => 'Str'
                                  },
               'PreCoPassword' => {
                                    'type' => 'Str'
                                  },
               'State' => {
                            'type' => 'Str'
                          },
               'HsmType' => {
                              'type' => 'Str'
                            },
               'BackupPolicy' => {
                                   'type' => 'Str'
                                 },
               'SubnetMapping' => {
                                    'type' => 'CloudHSMv2_ExternalSubnetMapping',
                                    'class' => 'Paws::CloudHSMv2::ExternalSubnetMapping'
                                  },
               'ClusterId' => {
                                'type' => 'Str'
                              },
               'StateMessage' => {
                                   'type' => 'Str'
                                 },
               'VpcId' => {
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

Paws::CloudHSMv2::Cluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudHSMv2::Cluster object:

  $service_obj->Method(Att1 => { BackupPolicy => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudHSMv2::Cluster object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupPolicy

=head1 DESCRIPTION

Contains information about an AWS CloudHSM cluster.

=head1 ATTRIBUTES


=head2 BackupPolicy => Str

  The cluster's backup policy.


=head2 Certificates => CloudHSMv2_Certificates

  Contains one or more certificates or a certificate signing request
(CSR).


=head2 ClusterId => Str

  The cluster's identifier (ID).


=head2 CreateTimestamp => Str

  The date and time when the cluster was created.


=head2 Hsms => ArrayRef[CloudHSMv2_Hsm]

  Contains information about the HSMs in the cluster.


=head2 HsmType => Str

  The type of HSM that the cluster contains.


=head2 PreCoPassword => Str

  The default password for the cluster's Pre-Crypto Officer (PRECO) user.


=head2 SecurityGroup => Str

  The identifier (ID) of the cluster's security group.


=head2 SourceBackupId => Str

  The identifier (ID) of the backup used to create the cluster. This
value exists only when the cluster was created from a backup.


=head2 State => Str

  The cluster's state.


=head2 StateMessage => Str

  A description of the cluster's state.


=head2 SubnetMapping => CloudHSMv2_ExternalSubnetMapping

  A map of the cluster's subnets and their corresponding Availability
Zones.


=head2 VpcId => Str

  The identifier (ID) of the virtual private cloud (VPC) that contains
the cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

