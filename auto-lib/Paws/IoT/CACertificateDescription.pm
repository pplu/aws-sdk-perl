# Generated from default/object.tt
package Paws::IoT::CACertificateDescription;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw/IoT_CertificateValidity/;
  has AutoRegistrationStatus => (is => 'ro', isa => Str);
  has CertificateArn => (is => 'ro', isa => Str);
  has CertificateId => (is => 'ro', isa => Str);
  has CertificatePem => (is => 'ro', isa => Str);
  has CreationDate => (is => 'ro', isa => Str);
  has CustomerVersion => (is => 'ro', isa => Int);
  has GenerationId => (is => 'ro', isa => Str);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has OwnedBy => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Validity => (is => 'ro', isa => IoT_CertificateValidity);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'CertificateArn' => {
                                     'type' => 'Str'
                                   },
               'Validity' => {
                               'class' => 'Paws::IoT::CertificateValidity',
                               'type' => 'IoT_CertificateValidity'
                             },
               'OwnedBy' => {
                              'type' => 'Str'
                            },
               'CustomerVersion' => {
                                      'type' => 'Int'
                                    },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'GenerationId' => {
                                   'type' => 'Str'
                                 },
               'CertificateId' => {
                                    'type' => 'Str'
                                  },
               'AutoRegistrationStatus' => {
                                             'type' => 'Str'
                                           },
               'CertificatePem' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'CertificateArn' => 'certificateArn',
                       'Validity' => 'validity',
                       'OwnedBy' => 'ownedBy',
                       'CustomerVersion' => 'customerVersion',
                       'LastModifiedDate' => 'lastModifiedDate',
                       'CreationDate' => 'creationDate',
                       'GenerationId' => 'generationId',
                       'CertificateId' => 'certificateId',
                       'AutoRegistrationStatus' => 'autoRegistrationStatus',
                       'CertificatePem' => 'certificatePem'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CACertificateDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::CACertificateDescription object:

  $service_obj->Method(Att1 => { AutoRegistrationStatus => $value, ..., Validity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::CACertificateDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoRegistrationStatus

=head1 DESCRIPTION

Describes a CA certificate.

=head1 ATTRIBUTES


=head2 AutoRegistrationStatus => Str

  Whether the CA certificate configured for auto registration of device
certificates. Valid values are "ENABLE" and "DISABLE"


=head2 CertificateArn => Str

  The CA certificate ARN.


=head2 CertificateId => Str

  The CA certificate ID.


=head2 CertificatePem => Str

  The CA certificate data, in PEM format.


=head2 CreationDate => Str

  The date the CA certificate was created.


=head2 CustomerVersion => Int

  The customer version of the CA certificate.


=head2 GenerationId => Str

  The generation ID of the CA certificate.


=head2 LastModifiedDate => Str

  The date the CA certificate was last modified.


=head2 OwnedBy => Str

  The owner of the CA certificate.


=head2 Status => Str

  The status of a CA certificate.


=head2 Validity => IoT_CertificateValidity

  When the CA certificate is valid.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

