package Paws::Amplify::SubDomain;
  use Moose;
  has DnsRecord => (is => 'ro', isa => 'Str', request_name => 'dnsRecord', traits => ['NameInRequest'], required => 1);
  has SubDomainSetting => (is => 'ro', isa => 'Paws::Amplify::SubDomainSetting', request_name => 'subDomainSetting', traits => ['NameInRequest'], required => 1);
  has Verified => (is => 'ro', isa => 'Bool', request_name => 'verified', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::SubDomain

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::SubDomain object:

  $service_obj->Method(Att1 => { DnsRecord => $value, ..., Verified => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::SubDomain object:

  $result = $service_obj->Method(...);
  $result->Att1->DnsRecord

=head1 DESCRIPTION

Subdomain for the Domain Association.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DnsRecord => Str

  DNS record for the Subdomain.


=head2 B<REQUIRED> SubDomainSetting => L<Paws::Amplify::SubDomainSetting>

  Setting structure for the Subdomain.


=head2 B<REQUIRED> Verified => Bool

  Verified status of the Subdomain



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

