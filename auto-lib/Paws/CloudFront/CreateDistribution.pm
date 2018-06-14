
package Paws::CloudFront::CreateDistribution;
  use Moose;
  has DistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::DistributionConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDistribution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-10-30/distribution');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateDistributionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateDistribution - Arguments for method CreateDistribution on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDistribution2017_10_30 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateDistribution2017_10_30.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDistribution2017_10_30.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateDistributionResult = $cloudfront->CreateDistribution(
      DistributionConfig => {
        CallerReference => 'Mystring',
        Origins         => {
          Quantity => 1,
          Items    => [
            {
              Id             => 'Mystring',
              DomainName     => 'Mystring',
              S3OriginConfig => {
                OriginAccessIdentity => 'Mystring',

              },    # OPTIONAL
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
              OriginPath         => 'Mystring',
              CustomOriginConfig => {
                HTTPSPort => 1,
                HTTPPort  => 1,
                OriginProtocolPolicy =>
                  'http-only',    # values: http-only, match-viewer, https-only
                OriginKeepaliveTimeout => 1,
                OriginSslProtocols     => {
                  Items => [
                    'SSLv3', ...    # values: SSLv3, TLSv1, TLSv1.1, TLSv1.2
                  ],
                  Quantity => 1,

                },    # OPTIONAL
                OriginReadTimeout => 1,
              },    # OPTIONAL
            },
            ...
          ],        # min: 1, ; OPTIONAL
        },
        DefaultCacheBehavior => {
          MinTTL => 1,
          ViewerProtocolPolicy =>
            'allow-all',    # values: allow-all, https-only, redirect-to-https
          TrustedSigners => {
            Quantity => 1,
            Enabled  => 1,
            Items    => [ 'Mystring', ... ],    # OPTIONAL
          },
          TargetOriginId  => 'Mystring',
          ForwardedValues => {
            Cookies => {
              Forward          => 'none',       # values: none, whitelist, all
              WhitelistedNames => {
                Quantity => 1,
                Items    => [ 'Mystring', ... ],    # OPTIONAL
              },    # OPTIONAL
            },
            QueryString          => 1,
            QueryStringCacheKeys => {
              Quantity => 1,
              Items    => [ 'Mystring', ... ],    # OPTIONAL
            },    # OPTIONAL
            Headers => {
              Quantity => 1,
              Items    => [ 'Mystring', ... ],    # OPTIONAL
            },    # OPTIONAL
          },
          FieldLevelEncryptionId     => 'Mystring',
          MaxTTL                     => 1,
          DefaultTTL                 => 1,
          Compress                   => 1,
          SmoothStreaming            => 1,
          LambdaFunctionAssociations => {
            Quantity => 1,
            Items    => [
              {
                EventType => 'viewer-request'
                , # values: viewer-request, viewer-response, origin-request, origin-response
                LambdaFunctionARN => 'MyLambdaFunctionARN',

              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          AllowedMethods => {
            Quantity => 1,
            Items    => [
              'GET', ...  # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
            ],
            CachedMethods => {
              Quantity => 1,
              Items    => [
                'GET',
                ...       # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
              ],

            },    # OPTIONAL
          },    # OPTIONAL
        },
        Enabled           => 1,
        Comment           => 'Mystring',
        IsIPV6Enabled     => 1,
        ViewerCertificate => {
          IAMCertificateId  => 'Mystring',
          ACMCertificateArn => 'Mystring',
          SSLSupportMethod  => 'sni-only',    # values: sni-only, vip; OPTIONAL
          MinimumProtocolVersion => 'SSLv3'
          , # values: SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018; OPTIONAL
          Certificate                  => 'Mystring',
          CloudFrontDefaultCertificate => 1,
          CertificateSource =>
            'cloudfront',    # values: cloudfront, iam, acm; OPTIONAL
        },    # OPTIONAL
        CacheBehaviors => {
          Quantity => 1,
          Items    => [
            {
              MinTTL => 1,
              ViewerProtocolPolicy =>
                'allow-all',  # values: allow-all, https-only, redirect-to-https
              TrustedSigners => {
                Quantity => 1,
                Enabled  => 1,
                Items    => [ 'Mystring', ... ],    # OPTIONAL
              },
              TargetOriginId  => 'Mystring',
              PathPattern     => 'Mystring',
              ForwardedValues => {
                Cookies => {
                  Forward          => 'none',    # values: none, whitelist, all
                  WhitelistedNames => {
                    Quantity => 1,
                    Items    => [ 'Mystring', ... ],    # OPTIONAL
                  },    # OPTIONAL
                },
                QueryString          => 1,
                QueryStringCacheKeys => {
                  Quantity => 1,
                  Items    => [ 'Mystring', ... ],    # OPTIONAL
                },    # OPTIONAL
                Headers => {
                  Quantity => 1,
                  Items    => [ 'Mystring', ... ],    # OPTIONAL
                },    # OPTIONAL
              },
              FieldLevelEncryptionId     => 'Mystring',
              MaxTTL                     => 1,
              DefaultTTL                 => 1,
              Compress                   => 1,
              SmoothStreaming            => 1,
              LambdaFunctionAssociations => {
                Quantity => 1,
                Items    => [
                  {
                    EventType => 'viewer-request'
                    , # values: viewer-request, viewer-response, origin-request, origin-response
                    LambdaFunctionARN => 'MyLambdaFunctionARN',

                  },
                  ...
                ],    # OPTIONAL
              },    # OPTIONAL
              AllowedMethods => {
                Quantity => 1,
                Items    => [
                  'GET',
                  ...    # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
                ],
                CachedMethods => {
                  Quantity => 1,
                  Items    => [
                    'GET',
                    ...   # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
                  ],

                },    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],        # OPTIONAL
        },    # OPTIONAL
        HttpVersion => 'http1.1',    # values: http1.1, http2; OPTIONAL
        Aliases     => {
          Quantity => 1,
          Items    => [ 'Mystring', ... ],    # OPTIONAL
        },    # OPTIONAL
        CustomErrorResponses => {
          Quantity => 1,
          Items    => [
            {
              ErrorCode          => 1,
              ResponsePagePath   => 'Mystring',
              ResponseCode       => 'Mystring',
              ErrorCachingMinTTL => 1,
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        DefaultRootObject => 'Mystring',
        WebACLId          => 'Mystring',
        Logging           => {
          IncludeCookies => 1,
          Bucket         => 'Mystring',
          Enabled        => 1,
          Prefix         => 'Mystring',

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
      },

    );

    # Results:
    my $Distribution = $CreateDistributionResult->Distribution;
    my $ETag         = $CreateDistributionResult->ETag;
    my $Location     = $CreateDistributionResult->Location;

    # Returns a L<Paws::CloudFront::CreateDistributionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateDistribution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DistributionConfig => L<Paws::CloudFront::DistributionConfig>

The distribution's configuration information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDistribution2017_10_30 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

