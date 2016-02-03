
package Paws::SES::ListReceiptRuleSets;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReceiptRuleSets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::ListReceiptRuleSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListReceiptRuleSetsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListReceiptRuleSets - Arguments for method ListReceiptRuleSets on Paws::SES

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReceiptRuleSets on the 
Amazon Simple Email Service service. Use the attributes of this class
as arguments to method ListReceiptRuleSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReceiptRuleSets.

As an example:

  $service_obj->ListReceiptRuleSets(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 NextToken => Str

A token returned from a previous call to C<ListReceiptRuleSets> to
indicate the position in the receipt rule set list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReceiptRuleSets in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

