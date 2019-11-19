# Generated from default/object.tt
package Paws::IoT::CertificateDescription;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw/IoT_CertificateValidity IoT_TransferData/;
  has CaCertificateId => (is => 'ro', isa => Str);
  has CertificateArn => (is => 'ro', isa => Str);
  has CertificateId => (is => 'ro', isa => Str);
  has CertificatePem => (is => 'ro', isa => Str);
  has CreationDate => (is => 'ro', isa => Str);
  has CustomerVersion => (is => 'ro', isa => Int);
  has GenerationId => (is => 'ro', isa => Str);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has OwnedBy => (is => 'ro', isa => Str);
  has PreviousOwnedBy => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has TransferData => (is => 'ro', isa => IoT_TransferData);
  has Validity => (is => 'ro', isa => IoT_CertificateValidity);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CertificatePem' => {
                                     'type' => 'Str'
                                   },
               'Status' => {
                             'type' => 'Str'
                           },
               'Validity' => {
                               'type' => 'IoT_CertificateValidity',
                               'class' => 'Paws::IoT::CertificateValidity'
                             },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'TransferData' => {
                                   'type' => 'IoT_TransferData',
                                   'class' => 'Paws::IoT::TransferData'
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
               'CertificateArn' => {
                                     'type' => 'Str'
                                   },
               'CaCertificateId' => {
                                      'type' => 'Str'
                                    },
               'CustomerVersion' => {
                                      'type' => 'Int'
                                    },
               'PreviousOwnedBy' => {
                                      'type' => 'Str'
                                    },
               'OwnedBy' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'CustomerVersion' => 'customerVersion',
                       'CaCertificateId' => 'caCertificateId',
                       'CertificateId' => 'certificateId',
                       'CertificateArn' => 'certificateArn',
                       'GenerationId' => 'generationId',
                       'LastModifiedDate' => 'lastModifiedDate',
                       'TransferData' => 'transferData',
                       'Validity' => 'validity',
                       'CertificatePem' => 'certificatePem',
                       'Status' => 'status',
                       'CreationDate' => 'creationDate',
                       'OwnedBy' => 'ownedBy',
                       'PreviousOwnedBy' => 'previousOwnedBy'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CertificateDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::CertificateDescription object:

  $service_obj->Method(Att1 => { CaCertificateId => $value, ..., Validity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::CertificateDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CaCertificateId

=head1 DESCRIPTION

Describes a certificate.

=head1 ATTRIBUTES


=head2 CaCertificateId => Str

  The certificate ID of the CA certificate used to sign this certificate.


=head2 CertificateArn => Str

  The ARN of the certificate.


=head2 CertificateId => Str

  The ID of the certificate.


=head2 CertificatePem => Str

  The certificate data, in PEM format.


=head2 CreationDate => Str

  The date and time the certificate was created.


=head2 CustomerVersion => Int

  The customer version of the certificate.


=head2 GenerationId => Str

  The generation ID of the certificate.


=head2 LastModifiedDate => Str

  The date and time the certificate was last modified.


=head2 OwnedBy => Str

  The ID of the AWS account that owns the certificate.


=head2 PreviousOwnedBy => Str

  The ID of the AWS account of the previous owner of the certificate.


=head2 Status => Str

  The status of the certificate.


=head2 TransferData => IoT_TransferData

  The transfer data.


=head2 Validity => IoT_CertificateValidity

  When the certificate is valid.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

