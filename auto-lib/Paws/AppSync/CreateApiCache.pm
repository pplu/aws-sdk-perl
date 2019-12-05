
package Paws::AppSync::CreateApiCache;
  use Moose;
  has ApiCachingBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiCachingBehavior', required => 1);
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has AtRestEncryptionEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'atRestEncryptionEnabled');
  has TransitEncryptionEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'transitEncryptionEnabled');
  has Ttl => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'ttl', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApiCache');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/ApiCaches');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::CreateApiCacheResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateApiCache - Arguments for method CreateApiCache on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApiCache on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method CreateApiCache.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApiCache.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $CreateApiCacheResponse = $appsync->CreateApiCache(
      ApiCachingBehavior       => 'FULL_REQUEST_CACHING',
      ApiId                    => 'MyString',
      Ttl                      => 1,
      Type                     => 'T2_SMALL',
      AtRestEncryptionEnabled  => 1,                        # OPTIONAL
      TransitEncryptionEnabled => 1,                        # OPTIONAL
    );

    # Results:
    my $ApiCache = $CreateApiCacheResponse->ApiCache;

    # Returns a L<Paws::AppSync::CreateApiCacheResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/CreateApiCache>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiCachingBehavior => Str

Caching behavior.

=over

=item *

B<FULL_REQUEST_CACHING>: All requests are fully cached.

=item *

B<PER_RESOLVER_CACHING>: Individual resovlers that you specify are
cached.

=back


Valid values are: C<"FULL_REQUEST_CACHING">, C<"PER_RESOLVER_CACHING">

=head2 B<REQUIRED> ApiId => Str

The GraphQL API Id.



=head2 AtRestEncryptionEnabled => Bool

At rest encryption flag for cache. This setting cannot be updated after
creation.



=head2 TransitEncryptionEnabled => Bool

Transit encryption flag when connecting to cache. This setting cannot
be updated after creation.



=head2 B<REQUIRED> Ttl => Int

TTL in seconds for cache entries.

Valid values are between 1 and 3600 seconds.



=head2 B<REQUIRED> Type => Str

The cache instance type.

=over

=item *

B<T2_SMALL>: A t2.small instance type.

=item *

B<T2_MEDIUM>: A t2.medium instance type.

=item *

B<R4_LARGE>: A r4.large instance type.

=item *

B<R4_XLARGE>: A r4.xlarge instance type.

=item *

B<R4_2XLARGE>: A r4.2xlarge instance type.

=item *

B<R4_4XLARGE>: A r4.4xlarge instance type.

=item *

B<R4_8XLARGE>: A r4.8xlarge instance type.

=back


Valid values are: C<"T2_SMALL">, C<"T2_MEDIUM">, C<"R4_LARGE">, C<"R4_XLARGE">, C<"R4_2XLARGE">, C<"R4_4XLARGE">, C<"R4_8XLARGE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApiCache in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

