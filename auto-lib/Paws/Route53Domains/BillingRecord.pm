package Paws::Route53Domains::BillingRecord;
  use Moose;
  has BillDate => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
  has InvoiceId => (is => 'ro', isa => 'Str');
  has Operation => (is => 'ro', isa => 'Str');
  has Price => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::BillingRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Domains::BillingRecord object:

  $service_obj->Method(Att1 => { BillDate => $value, ..., Price => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Domains::BillingRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->BillDate

=head1 DESCRIPTION

Information for one billing record.

=head1 ATTRIBUTES


=head2 BillDate => Str

  The date that the operation was billed, in Unix format.


=head2 DomainName => Str

  The name of the domain that the billing record applies to. If the
domain name contains characters other than a-z, 0-9, and - (hyphen),
such as an internationalized domain name, then this value is in
Punycode. For more information, see DNS Domain Name Format
(http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html)
in the I<Amazon Route 53 Developer Guidezzz>.


=head2 InvoiceId => Str

  The ID of the invoice that is associated with the billing record.


=head2 Operation => Str

  The operation that you were charged for.


=head2 Price => Num

  The price that you were charged for the operation, in US dollars.

Example value: 12.0



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

