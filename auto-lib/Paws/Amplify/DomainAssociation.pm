package Paws::Amplify::DomainAssociation;
  use Moose;
  has CertificateVerificationDNSRecord => (is => 'ro', isa => 'Str', request_name => 'certificateVerificationDNSRecord', traits => ['NameInRequest'], required => 1);
  has DomainAssociationArn => (is => 'ro', isa => 'Str', request_name => 'domainAssociationArn', traits => ['NameInRequest'], required => 1);
  has DomainName => (is => 'ro', isa => 'Str', request_name => 'domainName', traits => ['NameInRequest'], required => 1);
  has DomainStatus => (is => 'ro', isa => 'Str', request_name => 'domainStatus', traits => ['NameInRequest'], required => 1);
  has EnableAutoSubDomain => (is => 'ro', isa => 'Bool', request_name => 'enableAutoSubDomain', traits => ['NameInRequest'], required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', request_name => 'statusReason', traits => ['NameInRequest'], required => 1);
  has SubDomains => (is => 'ro', isa => 'ArrayRef[Paws::Amplify::SubDomain]', request_name => 'subDomains', traits => ['NameInRequest'], required => 1);
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


=head2 B<REQUIRED> CertificateVerificationDNSRecord => Str

  DNS Record for certificate verification.


=head2 B<REQUIRED> DomainAssociationArn => Str

  ARN for the Domain Association.


=head2 B<REQUIRED> DomainName => Str

  Name of the domain.


=head2 B<REQUIRED> DomainStatus => Str

  Status fo the Domain Association.


=head2 B<REQUIRED> EnableAutoSubDomain => Bool

  Enables automated creation of Subdomains for branches.


=head2 B<REQUIRED> StatusReason => Str

  Reason for the current status of the Domain Association.


=head2 B<REQUIRED> SubDomains => ArrayRef[L<Paws::Amplify::SubDomain>]

  Subdomains for the Domain Association.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

