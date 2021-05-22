
package Paws::Snowball::CreateLongTermPricing;
  use Moose;
  has IsLongTermPricingAutoRenew => (is => 'ro', isa => 'Bool');
  has LongTermPricingType => (is => 'ro', isa => 'Str', required => 1);
  has SnowballType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLongTermPricing');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::CreateLongTermPricingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::CreateLongTermPricing - Arguments for method CreateLongTermPricing on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLongTermPricing on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method CreateLongTermPricing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLongTermPricing.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
    my $CreateLongTermPricingResult = $snowball->CreateLongTermPricing(
      LongTermPricingType        => 'OneYear',
      IsLongTermPricingAutoRenew => 1,             # OPTIONAL
      SnowballType               => 'STANDARD',    # OPTIONAL
    );

    # Results:
    my $LongTermPricingId = $CreateLongTermPricingResult->LongTermPricingId;

    # Returns a L<Paws::Snowball::CreateLongTermPricingResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/CreateLongTermPricing>

=head1 ATTRIBUTES


=head2 IsLongTermPricingAutoRenew => Bool

Specifies whether the current long term pricing type for the device
should be renewed.



=head2 B<REQUIRED> LongTermPricingType => Str

The type of long term pricing option you want for the device - one year
or three year long term pricing.

Valid values are: C<"OneYear">, C<"ThreeYear">

=head2 SnowballType => Str

The type of AWS Snow Family device to use for the long term pricing
job.

Valid values are: C<"STANDARD">, C<"EDGE">, C<"EDGE_C">, C<"EDGE_CG">, C<"EDGE_S">, C<"SNC1_HDD">, C<"SNC1_SSD">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLongTermPricing in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

