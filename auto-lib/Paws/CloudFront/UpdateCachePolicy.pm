
package Paws::CloudFront::UpdateCachePolicy;
  use Moose;
  has CachePolicyConfig => (is => 'ro', isa => 'Paws::CloudFront::CachePolicyConfig', traits => ['ParamInBody'], required => 1);
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCachePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/cache-policy/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateCachePolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateCachePolicy - Arguments for method UpdateCachePolicy on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCachePolicy2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateCachePolicy2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCachePolicy2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $UpdateCachePolicyResult = $cloudfront->UpdateCachePolicy(
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
      Id      => 'Mystring',
      IfMatch => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $CachePolicy = $UpdateCachePolicyResult->CachePolicy;
    my $ETag        = $UpdateCachePolicyResult->ETag;

    # Returns a L<Paws::CloudFront::UpdateCachePolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdateCachePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CachePolicyConfig => L<Paws::CloudFront::CachePolicyConfig>

A cache policy configuration.



=head2 B<REQUIRED> Id => Str

The unique identifier for the cache policy that you are updating. The
identifier is returned in a cache behaviorE<rsquo>s C<CachePolicyId>
field in the response to C<GetDistributionConfig>.



=head2 IfMatch => Str

The version of the cache policy that you are updating. The version is
returned in the cache policyE<rsquo>s C<ETag> field in the response to
C<GetCachePolicyConfig>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCachePolicy2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

