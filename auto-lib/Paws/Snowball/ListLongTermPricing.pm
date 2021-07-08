
package Paws::Snowball::ListLongTermPricing;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLongTermPricing');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::ListLongTermPricingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::ListLongTermPricing - Arguments for method ListLongTermPricing on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLongTermPricing on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method ListLongTermPricing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLongTermPricing.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
    my $ListLongTermPricingResult = $snowball->ListLongTermPricing(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $LongTermPricingEntries =
      $ListLongTermPricingResult->LongTermPricingEntries;
    my $NextToken = $ListLongTermPricingResult->NextToken;

    # Returns a L<Paws::Snowball::ListLongTermPricingResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/ListLongTermPricing>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of C<ListLongTermPricing> objects to return.



=head2 NextToken => Str

Because HTTP requests are stateless, this is the starting point for
your next list of C<ListLongTermPricing> to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLongTermPricing in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

