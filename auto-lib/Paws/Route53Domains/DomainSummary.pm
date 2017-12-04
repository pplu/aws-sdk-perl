package Paws::Route53Domains::DomainSummary;
  use Moose;
  has AutoRenew => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Expiry => (is => 'ro', isa => 'Str');
  has TransferLock => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::DomainSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Domains::DomainSummary object:

  $service_obj->Method(Att1 => { AutoRenew => $value, ..., TransferLock => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Domains::DomainSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoRenew

=head1 DESCRIPTION

Summary information about one domain.

=head1 ATTRIBUTES


=head2 AutoRenew => Bool

  Indicates whether the domain is automatically renewed upon expiration.


=head2 B<REQUIRED> DomainName => Str

  The name of the domain that the summary information applies to.


=head2 Expiry => Str

  Expiration date of the domain in Coordinated Universal Time (UTC).


=head2 TransferLock => Bool

  Indicates whether a domain is locked from unauthorized transfer to
another party.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

