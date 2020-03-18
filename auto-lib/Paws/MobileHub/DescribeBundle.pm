
package Paws::MobileHub::DescribeBundle;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'bundleId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBundle');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bundles/{bundleId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MobileHub::DescribeBundleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::DescribeBundle - Arguments for method DescribeBundle on L<Paws::MobileHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBundle on the
L<AWS Mobile|Paws::MobileHub> service. Use the attributes of this class
as arguments to method DescribeBundle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBundle.

=head1 SYNOPSIS

    my $mobile = Paws->service('MobileHub');
    my $DescribeBundleResult = $mobile->DescribeBundle(
      BundleId => 'MyBundleId',

    );

    # Results:
    my $Details = $DescribeBundleResult->Details;

    # Returns a L<Paws::MobileHub::DescribeBundleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mobile/DescribeBundle>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BundleId => Str

Unique bundle identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBundle in L<Paws::MobileHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

