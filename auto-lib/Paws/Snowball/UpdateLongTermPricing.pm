
package Paws::Snowball::UpdateLongTermPricing;
  use Moose;
  has IsLongTermPricingAutoRenew => (is => 'ro', isa => 'Bool');
  has LongTermPricingId => (is => 'ro', isa => 'Str', required => 1);
  has ReplacementJob => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLongTermPricing');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::UpdateLongTermPricingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::UpdateLongTermPricing - Arguments for method UpdateLongTermPricing on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLongTermPricing on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method UpdateLongTermPricing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLongTermPricing.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
    my $UpdateLongTermPricingResult = $snowball->UpdateLongTermPricing(
      LongTermPricingId          => 'MyLongTermPricingId',
      IsLongTermPricingAutoRenew => 1,                       # OPTIONAL
      ReplacementJob             => 'MyJobId',               # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/UpdateLongTermPricing>

=head1 ATTRIBUTES


=head2 IsLongTermPricingAutoRenew => Bool

If set to C<true>, specifies that the current long-term pricing type
for the device should be automatically renewed before the long-term
pricing contract expires.



=head2 B<REQUIRED> LongTermPricingId => Str

The ID of the long-term pricing type for the device.



=head2 ReplacementJob => Str

Specifies that a device that is ordered with long-term pricing should
be replaced with a new device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLongTermPricing in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

