
package Paws::RedShift::CreateUsageLimit;
  use Moose;
  has Amount => (is => 'ro', isa => 'Int', required => 1);
  has BreachAction => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FeatureType => (is => 'ro', isa => 'Str', required => 1);
  has LimitType => (is => 'ro', isa => 'Str', required => 1);
  has Period => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUsageLimit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::UsageLimit');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateUsageLimitResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateUsageLimit - Arguments for method CreateUsageLimit on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUsageLimit on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method CreateUsageLimit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUsageLimit.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $UsageLimit = $redshift->CreateUsageLimit(
      Amount            => 1,
      ClusterIdentifier => 'MyString',
      FeatureType       => 'spectrum',
      LimitType         => 'time',
      BreachAction      => 'log',        # OPTIONAL
      Period            => 'daily',      # OPTIONAL
      Tags              => [
        {
          Key   => 'MyString',           # max: 2147483647
          Value => 'MyString',           # max: 2147483647
        },
        ...
      ],                                 # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/CreateUsageLimit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Amount => Int

The limit amount. If time-based, this amount is in minutes. If
data-based, this amount is in terabytes (TB). The value must be a
positive number.



=head2 BreachAction => Str

The action that Amazon Redshift takes when the limit is reached. The
default is log. For more information about this parameter, see
UsageLimit.

Valid values are: C<"log">, C<"emit-metric">, C<"disable">

=head2 B<REQUIRED> ClusterIdentifier => Str

The identifier of the cluster that you want to limit usage.



=head2 B<REQUIRED> FeatureType => Str

The Amazon Redshift feature that you want to limit.

Valid values are: C<"spectrum">, C<"concurrency-scaling">

=head2 B<REQUIRED> LimitType => Str

The type of limit. Depending on the feature type, this can be based on
a time duration or data size. If C<FeatureType> is C<spectrum>, then
C<LimitType> must be C<data-scanned>. If C<FeatureType> is
C<concurrency-scaling>, then C<LimitType> must be C<time>.

Valid values are: C<"time">, C<"data-scanned">

=head2 Period => Str

The time period that the amount applies to. A C<weekly> period begins
on Sunday. The default is C<monthly>.

Valid values are: C<"daily">, C<"weekly">, C<"monthly">

=head2 Tags => ArrayRef[L<Paws::RedShift::Tag>]

A list of tag instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUsageLimit in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

