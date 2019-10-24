# Generated from default/object.tt
package Paws::ApiGateway::MethodSetting;
  use Moo;
  use Types::Standard qw/Bool Int Str Num/;
  use Paws::ApiGateway::Types qw//;
  has CacheDataEncrypted => (is => 'ro', isa => Bool);
  has CacheTtlInSeconds => (is => 'ro', isa => Int);
  has CachingEnabled => (is => 'ro', isa => Bool);
  has DataTraceEnabled => (is => 'ro', isa => Bool);
  has LoggingLevel => (is => 'ro', isa => Str);
  has MetricsEnabled => (is => 'ro', isa => Bool);
  has RequireAuthorizationForCacheControl => (is => 'ro', isa => Bool);
  has ThrottlingBurstLimit => (is => 'ro', isa => Int);
  has ThrottlingRateLimit => (is => 'ro', isa => Num);
  has UnauthorizedCacheControlHeaderStrategy => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CachingEnabled' => {
                                     'type' => 'Bool'
                                   },
               'MetricsEnabled' => {
                                     'type' => 'Bool'
                                   },
               'LoggingLevel' => {
                                   'type' => 'Str'
                                 },
               'DataTraceEnabled' => {
                                       'type' => 'Bool'
                                     },
               'CacheDataEncrypted' => {
                                         'type' => 'Bool'
                                       },
               'CacheTtlInSeconds' => {
                                        'type' => 'Int'
                                      },
               'RequireAuthorizationForCacheControl' => {
                                                          'type' => 'Bool'
                                                        },
               'UnauthorizedCacheControlHeaderStrategy' => {
                                                             'type' => 'Str'
                                                           },
               'ThrottlingRateLimit' => {
                                          'type' => 'Num'
                                        },
               'ThrottlingBurstLimit' => {
                                           'type' => 'Int'
                                         }
             },
  'NameInRequest' => {
                       'CachingEnabled' => 'cachingEnabled',
                       'MetricsEnabled' => 'metricsEnabled',
                       'LoggingLevel' => 'loggingLevel',
                       'DataTraceEnabled' => 'dataTraceEnabled',
                       'CacheDataEncrypted' => 'cacheDataEncrypted',
                       'CacheTtlInSeconds' => 'cacheTtlInSeconds',
                       'RequireAuthorizationForCacheControl' => 'requireAuthorizationForCacheControl',
                       'UnauthorizedCacheControlHeaderStrategy' => 'unauthorizedCacheControlHeaderStrategy',
                       'ThrottlingRateLimit' => 'throttlingRateLimit',
                       'ThrottlingBurstLimit' => 'throttlingBurstLimit'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::MethodSetting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGateway::MethodSetting object:

  $service_obj->Method(Att1 => { CacheDataEncrypted => $value, ..., UnauthorizedCacheControlHeaderStrategy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGateway::MethodSetting object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheDataEncrypted

=head1 DESCRIPTION

Specifies the method setting properties.

=head1 ATTRIBUTES


=head2 CacheDataEncrypted => Bool

  Specifies whether the cached responses are encrypted. The PATCH path
for this setting is C</{method_setting_key}/caching/dataEncrypted>, and
the value is a Boolean.


=head2 CacheTtlInSeconds => Int

  Specifies the time to live (TTL), in seconds, for cached responses. The
higher the TTL, the longer the response will be cached. The PATCH path
for this setting is C</{method_setting_key}/caching/ttlInSeconds>, and
the value is an integer.


=head2 CachingEnabled => Bool

  Specifies whether responses should be cached and returned for requests.
A cache cluster must be enabled on the stage for responses to be
cached. The PATCH path for this setting is
C</{method_setting_key}/caching/enabled>, and the value is a Boolean.


=head2 DataTraceEnabled => Bool

  Specifies whether data trace logging is enabled for this method, which
affects the log entries pushed to Amazon CloudWatch Logs. The PATCH
path for this setting is C</{method_setting_key}/logging/dataTrace>,
and the value is a Boolean.


=head2 LoggingLevel => Str

  Specifies the logging level for this method, which affects the log
entries pushed to Amazon CloudWatch Logs. The PATCH path for this
setting is C</{method_setting_key}/logging/loglevel>, and the available
levels are C<OFF>, C<ERROR>, and C<INFO>.


=head2 MetricsEnabled => Bool

  Specifies whether Amazon CloudWatch metrics are enabled for this
method. The PATCH path for this setting is
C</{method_setting_key}/metrics/enabled>, and the value is a Boolean.


=head2 RequireAuthorizationForCacheControl => Bool

  Specifies whether authorization is required for a cache invalidation
request. The PATCH path for this setting is
C</{method_setting_key}/caching/requireAuthorizationForCacheControl>,
and the value is a Boolean.


=head2 ThrottlingBurstLimit => Int

  Specifies the throttling burst limit. The PATCH path for this setting
is C</{method_setting_key}/throttling/burstLimit>, and the value is an
integer.


=head2 ThrottlingRateLimit => Num

  Specifies the throttling rate limit. The PATCH path for this setting is
C</{method_setting_key}/throttling/rateLimit>, and the value is a
double.


=head2 UnauthorizedCacheControlHeaderStrategy => Str

  Specifies how to handle unauthorized requests for cache invalidation.
The PATCH path for this setting is
C</{method_setting_key}/caching/unauthorizedCacheControlHeaderStrategy>,
and the available values are C<FAIL_WITH_403>,
C<SUCCEED_WITH_RESPONSE_HEADER>, C<SUCCEED_WITHOUT_RESPONSE_HEADER>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

