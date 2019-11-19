# Generated from default/object.tt
package Paws::Amplify::DomainAssociation;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::Amplify::Types qw/Amplify_SubDomain/;
  has CertificateVerificationDNSRecord => (is => 'ro', isa => Str);
  has DomainAssociationArn => (is => 'ro', isa => Str, required => 1);
  has DomainName => (is => 'ro', isa => Str, required => 1);
  has DomainStatus => (is => 'ro', isa => Str, required => 1);
  has EnableAutoSubDomain => (is => 'ro', isa => Bool, required => 1);
  has StatusReason => (is => 'ro', isa => Str, required => 1);
  has SubDomains => (is => 'ro', isa => ArrayRef[Amplify_SubDomain], required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'SubDomains' => 1,
                    'StatusReason' => 1,
                    'DomainStatus' => 1,
                    'EnableAutoSubDomain' => 1,
                    'DomainAssociationArn' => 1,
                    'DomainName' => 1
                  },
  'NameInRequest' => {
                       'CertificateVerificationDNSRecord' => 'certificateVerificationDNSRecord',
                       'DomainAssociationArn' => 'domainAssociationArn',
                       'EnableAutoSubDomain' => 'enableAutoSubDomain',
                       'SubDomains' => 'subDomains',
                       'DomainName' => 'domainName',
                       'DomainStatus' => 'domainStatus',
                       'StatusReason' => 'statusReason'
                     },
  'types' => {
               'CertificateVerificationDNSRecord' => {
                                                       'type' => 'Str'
                                                     },
               'EnableAutoSubDomain' => {
                                          'type' => 'Bool'
                                        },
               'DomainAssociationArn' => {
                                           'type' => 'Str'
                                         },
               'SubDomains' => {
                                 'type' => 'ArrayRef[Amplify_SubDomain]',
                                 'class' => 'Paws::Amplify::SubDomain'
                               },
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'StatusReason' => {
                                   'type' => 'Str'
                                 },
               'DomainStatus' => {
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

Paws::Amplify::DomainAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::DomainAssociation object:

  $service_obj->Method(Att1 => { CertificateVerificationDNSRecord => $value, ..., SubDomains => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::DomainAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateVerificationDNSRecord

=head1 DESCRIPTION

Structure for Domain Association, which associates a custom domain with
an Amplify App.

=head1 ATTRIBUTES


=head2 CertificateVerificationDNSRecord => Str

  DNS Record for certificate verification.


=head2 B<REQUIRED> DomainAssociationArn => Str

  ARN for the Domain Association.


=head2 B<REQUIRED> DomainName => Str

  Name of the domain.


=head2 B<REQUIRED> DomainStatus => Str

  Status fo the Domain Association.


=head2 B<REQUIRED> EnableAutoSubDomain => Bool

  Enables automated creation of Subdomains for branches. (Currently not
supported)


=head2 B<REQUIRED> StatusReason => Str

  Reason for the current status of the Domain Association.


=head2 B<REQUIRED> SubDomains => ArrayRef[Amplify_SubDomain]

  Subdomains for the Domain Association.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

