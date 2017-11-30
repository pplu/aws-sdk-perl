package Paws::GuardDuty::Organization;
  use Moose;
  has Asn => (is => 'ro', isa => 'Str', request_name => 'asn', traits => ['NameInRequest']);
  has AsnOrg => (is => 'ro', isa => 'Str', request_name => 'asnOrg', traits => ['NameInRequest']);
  has Isp => (is => 'ro', isa => 'Str', request_name => 'isp', traits => ['NameInRequest']);
  has Org => (is => 'ro', isa => 'Str', request_name => 'org', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Organization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Organization object:

  $service_obj->Method(Att1 => { Asn => $value, ..., Org => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Organization object:

  $result = $service_obj->Method(...);
  $result->Att1->Asn

=head1 DESCRIPTION

ISP Organization information of the remote IP address.

=head1 ATTRIBUTES


=head2 Asn => Str

  Autonomous system number of the internet provider of the remote IP
address.


=head2 AsnOrg => Str

  Organization that registered this ASN.


=head2 Isp => Str

  ISP information for the internet provider.


=head2 Org => Str

  Name of the internet provider.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

