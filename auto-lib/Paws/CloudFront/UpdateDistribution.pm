
package Paws::CloudFront::UpdateDistribution;
  use Moose;
  has DistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::DistributionConfig', required => 1);
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDistribution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2018-11-05/distribution/{Id}/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateDistributionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateDistribution - Arguments for method UpdateDistribution on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDistribution2018_11_05 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateDistribution2018_11_05.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDistribution2018_11_05.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $UpdateDistributionResult = $cloudfront->UpdateDistribution(
      DistributionConfig => {
        CallerReference      => 'Mystring',
        Comment              => 'Mystring',
        DefaultCacheBehavior => {
          ForwardedValues => {
            Cookies => {
              Forward          => 'none',    # values: none, whitelist, all
              WhitelistedNames => {
                Quantity => 1,
                Items    => [ 'Mystring', ... ],    # OPTIONAL
              },    # OPTIONAL
            },
            QueryString => 1,
            Headers     => {
              Quantity => 1,
              Items    => [ 'Mystring', ... ],    # OPTIONAL
            },    # OPTIONAL
            QueryStringCacheKeys => {
              Quantity => 1,
              Items    => [ 'Mystring', ... ],    # OPTIONAL
            },    # OPTIONAL
          },
          MinTTL         => 1,
          TargetOriginId => 'Mystring',
          TrustedSigners => {
            Enabled  => 1,
            Quantity => 1,
            Items    => [ 'Mystring', ... ],    # OPTIONAL
          },
          ViewerProtocolPolicy =>
            'allow-all',    # values: allow-all, https-only, redirect-to-https
          AllowedMethods => {
            Items => [
              'GET', ...  # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
            ],
            Quantity      => 1,
            CachedMethods => {
              Items => [
                'GET',
                ...       # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
              ],
              Quantity => 1,

            },    # OPTIONAL
          },    # OPTIONAL
          Compress                   => 1,
          DefaultTTL                 => 1,
          FieldLevelEncryptionId     => 'Mystring',
          LambdaFunctionAssociations => {
            Quantity => 1,
            Items    => [
              {
                EventType => 'viewer-request'
                , # values: viewer-request, viewer-response, origin-request, origin-response
                LambdaFunctionARN => 'MyLambdaFunctionARN',
                IncludeBody       => 1,
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          MaxTTL          => 1,
          SmoothStreaming => 1,
        },
        Enabled => 1,
        Origins => {
          Items => [
            {
              DomainName    => 'Mystring',
              Id            => 'Mystring',
              CustomHeaders => {
                Quantity => 1,
                Items    => [
                  {
                    HeaderName  => 'Mystring',
                    HeaderValue => 'Mystring',

                  },
                  ...
                ],    # OPTIONAL
              },    # OPTIONAL
              CustomOriginConfig => {
                HTTPPort  => 1,
                HTTPSPort => 1,
                OriginProtocolPolicy =>
                  'http-only',    # values: http-only, match-viewer, https-only
                OriginKeepaliveTimeout => 1,
                OriginReadTimeout      => 1,
                OriginSslProtocols     => {
                  Items => [
                    'SSLv3', ...    # values: SSLv3, TLSv1, TLSv1.1, TLSv1.2
                  ],
                  Quantity => 1,

                },    # OPTIONAL
              },    # OPTIONAL
              OriginPath     => 'Mystring',
              S3OriginConfig => {
                OriginAccessIdentity => 'Mystring',

              },    # OPTIONAL
            },
            ...
          ],        # min: 1
          Quantity => 1,

        },
        Aliases => {
          Quantity => 1,
          Items    => [ 'Mystring', ... ],    # OPTIONAL
        },    # OPTIONAL
        CacheBehaviors => {
          Quantity => 1,
          Items    => [
            {
              ForwardedValues => {
                Cookies => {
                  Forward          => 'none',    # values: none, whitelist, all
                  WhitelistedNames => {
                    Quantity => 1,
                    Items    => [ 'Mystring', ... ],    # OPTIONAL
                  },    # OPTIONAL
                },
                QueryString => 1,
                Headers     => {
                  Quantity => 1,
                  Items    => [ 'Mystring', ... ],    # OPTIONAL
                },    # OPTIONAL
                QueryStringCacheKeys => {
                  Quantity => 1,
                  Items    => [ 'Mystring', ... ],    # OPTIONAL
                },    # OPTIONAL
              },
              MinTTL         => 1,
              PathPattern    => 'Mystring',
              TargetOriginId => 'Mystring',
              TrustedSigners => {
                Enabled  => 1,
                Quantity => 1,
                Items    => [ 'Mystring', ... ],    # OPTIONAL
              },
              ViewerProtocolPolicy =>
                'allow-all',  # values: allow-all, https-only, redirect-to-https
              AllowedMethods => {
                Items => [
                  'GET',
                  ...    # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
                ],
                Quantity      => 1,
                CachedMethods => {
                  Items => [
                    'GET',
                    ...   # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
                  ],
                  Quantity => 1,

                },    # OPTIONAL
              },    # OPTIONAL
              Compress                   => 1,
              DefaultTTL                 => 1,
              FieldLevelEncryptionId     => 'Mystring',
              LambdaFunctionAssociations => {
                Quantity => 1,
                Items    => [
                  {
                    EventType => 'viewer-request'
                    , # values: viewer-request, viewer-response, origin-request, origin-response
                    LambdaFunctionARN => 'MyLambdaFunctionARN',
                    IncludeBody       => 1,
                  },
                  ...
                ],    # OPTIONAL
              },    # OPTIONAL
              MaxTTL          => 1,
              SmoothStreaming => 1,
            },
            ...
          ],        # OPTIONAL
        },    # OPTIONAL
        CustomErrorResponses => {
          Quantity => 1,
          Items    => [
            {
              ErrorCode          => 1,
              ErrorCachingMinTTL => 1,
              ResponseCode       => 'Mystring',
              ResponsePagePath   => 'Mystring',
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        DefaultRootObject => 'Mystring',
        HttpVersion       => 'http1.1',    # values: http1.1, http2; OPTIONAL
        IsIPV6Enabled     => 1,
        Logging           => {
          Bucket         => 'Mystring',
          Enabled        => 1,
          IncludeCookies => 1,
          Prefix         => 'Mystring',

        },                                 # OPTIONAL
        OriginGroups => {
          Quantity => 1,
          Items    => [
            {
              FailoverCriteria => {
                StatusCodes => {
                  Items => [ 1, ... ],     # min: 1
                  Quantity => 1,

                },

              },
              Id      => 'Mystring',
              Members => {
                Items => [
                  {
                    OriginId => 'Mystring',

                  },
                  ...
                ],    # min: 2, max: 2
                Quantity => 1,

              },

            },
            ...
          ],          # OPTIONAL
        },    # OPTIONAL
        PriceClass => 'PriceClass_100'
        ,     # values: PriceClass_100, PriceClass_200, PriceClass_All; OPTIONAL
        Restrictions => {
          GeoRestriction => {
            Quantity        => 1,
            RestrictionType => 'blacklist', # values: blacklist, whitelist, none
            Items => [ 'Mystring', ... ],   # OPTIONAL
          },

        },    # OPTIONAL
        ViewerCertificate => {
          ACMCertificateArn => 'Mystring',
          Certificate       => 'Mystring',
          CertificateSource =>
            'cloudfront',    # values: cloudfront, iam, acm; OPTIONAL
          CloudFrontDefaultCertificate => 1,
          IAMCertificateId             => 'Mystring',
          MinimumProtocolVersion       => 'SSLv3'
          , # values: SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018; OPTIONAL
          SSLSupportMethod => 'sni-only',    # values: sni-only, vip; OPTIONAL
        },    # OPTIONAL
        WebACLId => 'Mystring',
      },
      Id      => 'Mystring',
      IfMatch => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $Distribution = $UpdateDistributionResult->Distribution;
    my $ETag         = $UpdateDistributionResult->ETag;

    # Returns a L<Paws::CloudFront::UpdateDistributionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdateDistribution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DistributionConfig => L<Paws::CloudFront::DistributionConfig>

The distribution's configuration information.



=head2 B<REQUIRED> Id => Str

The distribution's id.



=head2 IfMatch => Str

The value of the C<ETag> header that you received when retrieving the
distribution's configuration. For example: C<E2QWRUHAPOMQZL>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDistribution2018_11_05 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

