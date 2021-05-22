
package Paws::CloudFront::CreateCachePolicy;
  use Moose;
  has CachePolicyConfig => (is => 'ro', isa => 'Paws::CloudFront::CachePolicyConfig', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCachePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/cache-policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateCachePolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateCachePolicy - Arguments for method CreateCachePolicy on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCachePolicy2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateCachePolicy2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCachePolicy2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateCachePolicyResult = $cloudfront->CreateCachePolicy(
      CachePolicyConfig => {
        MinTTL                                   => 1,
        Name                                     => 'Mystring',
        Comment                                  => 'Mystring',
        DefaultTTL                               => 1,
        MaxTTL                                   => 1,
        ParametersInCacheKeyAndForwardedToOrigin => {
          CookiesConfig => {
            CookieBehavior => 'none',  # values: none, whitelist, allExcept, all
            Cookies        => {
              Quantity => 1,
              Items    => [ 'Mystring', ... ],    # OPTIONAL
            },    # OPTIONAL
          },
          EnableAcceptEncodingGzip => 1,
          HeadersConfig            => {
            HeaderBehavior => 'none',    # values: none, whitelist
            Headers        => {
              Quantity => 1,
              Items    => [ 'Mystring', ... ],    # OPTIONAL
            },    # OPTIONAL
          },
          QueryStringsConfig => {
            QueryStringBehavior =>
              'none',    # values: none, whitelist, allExcept, all
            QueryStrings => {
              Quantity => 1,
              Items    => [ 'Mystring', ... ],    # OPTIONAL
            },    # OPTIONAL
          },
          EnableAcceptEncodingBrotli => 1,
        },    # OPTIONAL
      },

    );

    # Results:
    my $CachePolicy = $CreateCachePolicyResult->CachePolicy;
    my $ETag        = $CreateCachePolicyResult->ETag;
    my $Location    = $CreateCachePolicyResult->Location;

    # Returns a L<Paws::CloudFront::CreateCachePolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateCachePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CachePolicyConfig => L<Paws::CloudFront::CachePolicyConfig>

A cache policy configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCachePolicy2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

