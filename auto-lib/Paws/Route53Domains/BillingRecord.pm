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

This class has no description

=head1 ATTRIBUTES


=head2 BillDate => Str

  The date that the operation was billed, in Unix format.

Type: Double


=head2 DomainName => Str

  The name of a domain.

Type: String


=head2 InvoiceId => Str

  The ID of the invoice that is associated with the billing record.

Type: String


=head2 Operation => Str

  The operation that you were charged for.

Type: String

Valid values:

=over

=item * C<REGISTER_DOMAIN>

=item * C<TRANSFER_IN_DOMAIN>

=item * C<RENEW_DOMAIN>

=item * C<CHANGE_DOMAIN_OWNER>

=back



=head2 Price => Num

  The price that you were charged for the operation, in US dollars.

Type: Double

Example value: 12.0



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

