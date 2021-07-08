
package Paws::CloudFront::GetCachePolicyConfig;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCachePolicyConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/cache-policy/{Id}/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::GetCachePolicyConfigResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetCachePolicyConfig - Arguments for method GetCachePolicyConfig on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCachePolicyConfig2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method GetCachePolicyConfig2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCachePolicyConfig2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $GetCachePolicyConfigResult = $cloudfront->GetCachePolicyConfig(
      Id => 'Mystring',

    );

    # Results:
    my $CachePolicyConfig = $GetCachePolicyConfigResult->CachePolicyConfig;
    my $ETag              = $GetCachePolicyConfigResult->ETag;

    # Returns a L<Paws::CloudFront::GetCachePolicyConfigResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/GetCachePolicyConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier for the cache policy. If the cache policy is
attached to a distributionE<rsquo>s cache behavior, you can get the
policyE<rsquo>s identifier using C<ListDistributions> or
C<GetDistribution>. If the cache policy is not attached to a cache
behavior, you can get the identifier using C<ListCachePolicies>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCachePolicyConfig2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

