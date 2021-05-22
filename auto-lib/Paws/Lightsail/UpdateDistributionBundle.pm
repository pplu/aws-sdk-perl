
package Paws::Lightsail::UpdateDistributionBundle;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bundleId' );
  has DistributionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDistributionBundle');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::UpdateDistributionBundleResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::UpdateDistributionBundle - Arguments for method UpdateDistributionBundle on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDistributionBundle on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method UpdateDistributionBundle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDistributionBundle.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $UpdateDistributionBundleResult = $lightsail->UpdateDistributionBundle(
      BundleId         => 'Mystring',          # OPTIONAL
      DistributionName => 'MyResourceName',    # OPTIONAL
    );

    # Results:
    my $Operation = $UpdateDistributionBundleResult->Operation;

    # Returns a L<Paws::Lightsail::UpdateDistributionBundleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/UpdateDistributionBundle>

=head1 ATTRIBUTES


=head2 BundleId => Str

The bundle ID of the new bundle to apply to your distribution.

Use the C<GetDistributionBundles> action to get a list of distribution
bundle IDs that you can specify.



=head2 DistributionName => Str

The name of the distribution for which to update the bundle.

Use the C<GetDistributions> action to get a list of distribution names
that you can specify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDistributionBundle in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

