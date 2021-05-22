
package Paws::AppSync::UpdateApiCache;
  use Moose;
  has ApiCachingBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiCachingBehavior', required => 1);
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has Ttl => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'ttl', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApiCache');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/ApiCaches/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::UpdateApiCacheResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateApiCache - Arguments for method UpdateApiCache on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApiCache on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method UpdateApiCache.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApiCache.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $UpdateApiCacheResponse = $appsync->UpdateApiCache(
      ApiCachingBehavior => 'FULL_REQUEST_CACHING',
      ApiId              => 'MyString',
      Ttl                => 1,
      Type               => 'T2_SMALL',

    );

    # Results:
    my $ApiCache = $UpdateApiCacheResponse->ApiCache;

    # Returns a L<Paws::AppSync::UpdateApiCacheResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/UpdateApiCache>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiCachingBehavior => Str

Caching behavior.

=over

=item *

B<FULL_REQUEST_CACHING>: All requests are fully cached.

=item *

B<PER_RESOLVER_CACHING>: Individual resolvers that you specify are
cached.

=back


Valid values are: C<"FULL_REQUEST_CACHING">, C<"PER_RESOLVER_CACHING">

=head2 B<REQUIRED> ApiId => Str

The GraphQL API Id.



=head2 B<REQUIRED> Ttl => Int

TTL in seconds for cache entries.

Valid values are between 1 and 3600 seconds.



=head2 B<REQUIRED> Type => Str

The cache instance type. Valid values are

=over

=item *

C<SMALL>

=item *

C<MEDIUM>

=item *

C<LARGE>

=item *

C<XLARGE>

=item *

C<LARGE_2X>

=item *

C<LARGE_4X>

=item *

C<LARGE_8X> (not available in all regions)

=item *

C<LARGE_12X>

=back

Historically, instance types were identified by an EC2-style value. As
of July 2020, this is deprecated, and the generic identifiers above
should be used.

The following legacy instance types are available, but their use is
discouraged:

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


Valid values are: C<"T2_SMALL">, C<"T2_MEDIUM">, C<"R4_LARGE">, C<"R4_XLARGE">, C<"R4_2XLARGE">, C<"R4_4XLARGE">, C<"R4_8XLARGE">, C<"SMALL">, C<"MEDIUM">, C<"LARGE">, C<"XLARGE">, C<"LARGE_2X">, C<"LARGE_4X">, C<"LARGE_8X">, C<"LARGE_12X">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApiCache in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

