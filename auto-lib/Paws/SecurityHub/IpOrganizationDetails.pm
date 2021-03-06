# Generated by default/object.tt
package Paws::SecurityHub::IpOrganizationDetails;
  use Moose;
  has Asn => (is => 'ro', isa => 'Int');
  has AsnOrg => (is => 'ro', isa => 'Str');
  has Isp => (is => 'ro', isa => 'Str');
  has Org => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::IpOrganizationDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::IpOrganizationDetails object:

  $service_obj->Method(Att1 => { Asn => $value, ..., Org => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::IpOrganizationDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Asn

=head1 DESCRIPTION

Provides information about an internet provider.

=head1 ATTRIBUTES


=head2 Asn => Int

The Autonomous System Number (ASN) of the internet provider


=head2 AsnOrg => Str

The name of the organization that registered the ASN.


=head2 Isp => Str

The ISP information for the internet provider.


=head2 Org => Str

The name of the internet provider.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

