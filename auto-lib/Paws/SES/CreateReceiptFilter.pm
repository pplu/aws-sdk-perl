
package Paws::SES::CreateReceiptFilter;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::SES::ReceiptFilter', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReceiptFilter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::CreateReceiptFilterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateReceiptFilterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::CreateReceiptFilter - Arguments for method CreateReceiptFilter on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReceiptFilter on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method CreateReceiptFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReceiptFilter.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # CreateReceiptFilter
    # The following example creates a new IP address filter:
    my $CreateReceiptFilterResponse = $email->CreateReceiptFilter(
      {
        'Filter' => {
          'IpFilter' => {
            'Cidr'   => '1.2.3.4/24',
            'Policy' => 'Allow'
          },
          'Name' => 'MyFilter'
        }
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateReceiptFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Filter => L<Paws::SES::ReceiptFilter>

A data structure that describes the IP address filter to create, which
consists of a name, an IP address range, and whether to allow or block
mail from it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReceiptFilter in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

