
package Paws::SES::DeleteReceiptFilter;
  use Moose;
  has FilterName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteReceiptFilter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::DeleteReceiptFilterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteReceiptFilterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DeleteReceiptFilter - Arguments for method DeleteReceiptFilter on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteReceiptFilter on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method DeleteReceiptFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteReceiptFilter.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # DeleteReceiptFilter
    # The following example deletes an IP address filter:
    my $DeleteReceiptFilterResponse = $email->DeleteReceiptFilter(
      {
        'FilterName' => 'MyFilter'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/DeleteReceiptFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FilterName => Str

The name of the IP address filter to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteReceiptFilter in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

