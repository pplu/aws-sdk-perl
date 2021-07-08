
package Paws::Lightsail::GetDistributionLatestCacheReset;
  use Moose;
  has DistributionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDistributionLatestCacheReset');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetDistributionLatestCacheResetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDistributionLatestCacheReset - Arguments for method GetDistributionLatestCacheReset on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDistributionLatestCacheReset on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetDistributionLatestCacheReset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDistributionLatestCacheReset.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetDistributionLatestCacheResetResult =
      $lightsail->GetDistributionLatestCacheReset(
      DistributionName => 'MyResourceName',    # OPTIONAL
      );

    # Results:
    my $CreateTime = $GetDistributionLatestCacheResetResult->CreateTime;
    my $Status     = $GetDistributionLatestCacheResetResult->Status;

   # Returns a L<Paws::Lightsail::GetDistributionLatestCacheResetResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetDistributionLatestCacheReset>

=head1 ATTRIBUTES


=head2 DistributionName => Str

The name of the distribution for which to return the timestamp of the
last cache reset.

Use the C<GetDistributions> action to get a list of distribution names
that you can specify.

When omitted, the response includes the latest cache reset timestamp of
all your distributions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDistributionLatestCacheReset in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

