
package Paws::Lightsail::CreateDistribution;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bundleId' , required => 1);
  has CacheBehaviors => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::CacheBehaviorPerPath]', traits => ['NameInRequest'], request_name => 'cacheBehaviors' );
  has CacheBehaviorSettings => (is => 'ro', isa => 'Paws::Lightsail::CacheSettings', traits => ['NameInRequest'], request_name => 'cacheBehaviorSettings' );
  has DefaultCacheBehavior => (is => 'ro', isa => 'Paws::Lightsail::CacheBehavior', traits => ['NameInRequest'], request_name => 'defaultCacheBehavior' , required => 1);
  has DistributionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionName' , required => 1);
  has IpAddressType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipAddressType' );
  has Origin => (is => 'ro', isa => 'Paws::Lightsail::InputOrigin', traits => ['NameInRequest'], request_name => 'origin' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDistribution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateDistributionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateDistribution - Arguments for method CreateDistribution on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDistribution on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateDistribution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDistribution.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateDistributionResult = $lightsail->CreateDistribution(
      BundleId             => 'Mystring',
      DefaultCacheBehavior => {
        Behavior => 'dont-cache',    # values: dont-cache, cache; OPTIONAL
      },
      DistributionName => 'MyResourceName',
      Origin           => {
        Name           => 'MyResourceName',
        ProtocolPolicy => 'http-only', # values: http-only, https-only; OPTIONAL
        RegionName     => 'us-east-1'
        , # values: us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-west-2, eu-west-3, eu-central-1, ca-central-1, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2; OPTIONAL
      },
      CacheBehaviorSettings => {
        AllowedHTTPMethods => 'MyNonEmptyString',    # OPTIONAL
        CachedHTTPMethods  => 'MyNonEmptyString',    # OPTIONAL
        DefaultTTL         => 1,                     # OPTIONAL
        ForwardedCookies   => {
          CookiesAllowList => [ 'Mystring', ... ],    # OPTIONAL
          Option           => 'none',  # values: none, allow-list, all; OPTIONAL
        },    # OPTIONAL
        ForwardedHeaders => {
          HeadersAllowList => [
            'Accept',
            ... # values: Accept, Accept-Charset, Accept-Datetime, Accept-Encoding, Accept-Language, Authorization, CloudFront-Forwarded-Proto, CloudFront-Is-Desktop-Viewer, CloudFront-Is-Mobile-Viewer, CloudFront-Is-SmartTV-Viewer, CloudFront-Is-Tablet-Viewer, CloudFront-Viewer-Country, Host, Origin, Referer
          ],    # OPTIONAL
          Option => 'none',    # values: none, allow-list, all; OPTIONAL
        },    # OPTIONAL
        ForwardedQueryStrings => {
          Option                => 1,                      # OPTIONAL
          QueryStringsAllowList => [ 'Mystring', ... ],    # OPTIONAL
        },    # OPTIONAL
        MaximumTTL => 1,    # OPTIONAL
        MinimumTTL => 1,    # OPTIONAL
      },    # OPTIONAL
      CacheBehaviors => [
        {
          Behavior => 'dont-cache',    # values: dont-cache, cache; OPTIONAL
          Path     => 'Mystring',
        },
        ...
      ],    # OPTIONAL
      IpAddressType => 'dualstack',    # OPTIONAL
      Tags          => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Distribution = $CreateDistributionResult->Distribution;
    my $Operation    = $CreateDistributionResult->Operation;

    # Returns a L<Paws::Lightsail::CreateDistributionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateDistribution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BundleId => Str

The bundle ID to use for the distribution.

A distribution bundle describes the specifications of your
distribution, such as the monthly cost and monthly network transfer
quota.

Use the C<GetDistributionBundles> action to get a list of distribution
bundle IDs that you can specify.



=head2 CacheBehaviors => ArrayRef[L<Paws::Lightsail::CacheBehaviorPerPath>]

An array of objects that describe the per-path cache behavior for the
distribution.



=head2 CacheBehaviorSettings => L<Paws::Lightsail::CacheSettings>

An object that describes the cache behavior settings for the
distribution.



=head2 B<REQUIRED> DefaultCacheBehavior => L<Paws::Lightsail::CacheBehavior>

An object that describes the default cache behavior for the
distribution.



=head2 B<REQUIRED> DistributionName => Str

The name for the distribution.



=head2 IpAddressType => Str

The IP address type for the distribution.

The possible values are C<ipv4> for IPv4 only, and C<dualstack> for
IPv4 and IPv6.

The default value is C<dualstack>.

Valid values are: C<"dualstack">, C<"ipv4">

=head2 B<REQUIRED> Origin => L<Paws::Lightsail::InputOrigin>

An object that describes the origin resource for the distribution, such
as a Lightsail instance or load balancer.

The distribution pulls, caches, and serves content from the origin.



=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values to add to the distribution during
create.

Use the C<TagResource> action to tag a resource after it's created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDistribution in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

