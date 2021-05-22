
package Paws::RedShift::ModifyUsageLimit;
  use Moose;
  has Amount => (is => 'ro', isa => 'Int');
  has BreachAction => (is => 'ro', isa => 'Str');
  has UsageLimitId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyUsageLimit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::UsageLimit');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyUsageLimitResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyUsageLimit - Arguments for method ModifyUsageLimit on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyUsageLimit on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ModifyUsageLimit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyUsageLimit.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $UsageLimit = $redshift->ModifyUsageLimit(
      UsageLimitId => 'MyString',
      Amount       => 1,            # OPTIONAL
      BreachAction => 'log',        # OPTIONAL
    );

    # Results:
    my $Amount            = $UsageLimit->Amount;
    my $BreachAction      = $UsageLimit->BreachAction;
    my $ClusterIdentifier = $UsageLimit->ClusterIdentifier;
    my $FeatureType       = $UsageLimit->FeatureType;
    my $LimitType         = $UsageLimit->LimitType;
    my $Period            = $UsageLimit->Period;
    my $Tags              = $UsageLimit->Tags;
    my $UsageLimitId      = $UsageLimit->UsageLimitId;

    # Returns a L<Paws::RedShift::UsageLimit> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ModifyUsageLimit>

=head1 ATTRIBUTES


=head2 Amount => Int

The new limit amount. For more information about this parameter, see
UsageLimit.



=head2 BreachAction => Str

The new action that Amazon Redshift takes when the limit is reached.
For more information about this parameter, see UsageLimit.

Valid values are: C<"log">, C<"emit-metric">, C<"disable">

=head2 B<REQUIRED> UsageLimitId => Str

The identifier of the usage limit to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyUsageLimit in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

