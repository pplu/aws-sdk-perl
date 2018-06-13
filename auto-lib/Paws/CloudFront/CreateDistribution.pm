
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
        CallerReference      => 'Mystring',
        DefaultCacheBehavior => {
          ViewerProtocolPolicy =>
            'allow-all',    # values: allow-all, https-only, redirect-to-https
          TargetOriginId => 'Mystring',
          MinTTL         => 1,
          TrustedSigners => {
            Enabled  => 1,
            Quantity => 1,
            Items    => [ 'Mystring', ... ],    # OPTIONAL
          },
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
          Compress       => 1,
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
          FieldLevelEncryptionId     => 'Mystring',
          SmoothStreaming            => 1,
          DefaultTTL                 => 1,
          MaxTTL                     => 1,
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
        },
        Origins => {
          Quantity => 1,
          Items    => [
            {
              Id                 => 'Mystring',
              DomainName         => 'Mystring',
              OriginPath         => 'Mystring',
              CustomOriginConfig => {
                OriginProtocolPolicy =>
                  'http-only',    # values: http-only, match-viewer, https-only
                HTTPSPort          => 1,
                HTTPPort           => 1,
                OriginReadTimeout  => 1,
                OriginSslProtocols => {
                  Items => [
                    'SSLv3', ...    # values: SSLv3, TLSv1, TLSv1.1, TLSv1.2
                  ],
                  Quantity => 1,

                },    # OPTIONAL
                OriginKeepaliveTimeout => 1,
              },    # OPTIONAL
              S3OriginConfig => {
                OriginAccessIdentity => 'Mystring',

              },    # OPTIONAL
              CustomHeaders => {
                Quantity => 1,
                Items    => [
                  {
                    HeaderValue => 'Mystring',
                    HeaderName  => 'Mystring',

                  },
                  ...
                ],    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],        # min: 1, ; OPTIONAL
        },
        Comment      => 'Mystring',
        Enabled      => 1,
        Restrictions => {
          GeoRestriction => {
            Quantity        => 1,
            RestrictionType => 'blacklist', # values: blacklist, whitelist, none
            Items => [ 'Mystring', ... ],   # OPTIONAL
          },

        },    # OPTIONAL
        IsIPV6Enabled     => 1,
        WebACLId          => 'Mystring',
        ViewerCertificate => {
          CertificateSource =>
            'cloudfront',    # values: cloudfront, iam, acm; OPTIONAL
          IAMCertificateId  => 'Mystring',
          Certificate       => 'Mystring',
          SSLSupportMethod  => 'sni-only',    # values: sni-only, vip; OPTIONAL
          ACMCertificateArn => 'Mystring',
          CloudFrontDefaultCertificate => 1,
          MinimumProtocolVersion       => 'SSLv3'
          , # values: SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018; OPTIONAL
        },    # OPTIONAL
        Aliases => {
          Quantity => 1,
          Items    => [ 'Mystring', ... ],    # OPTIONAL
        },    # OPTIONAL
        PriceClass => 'PriceClass_100'
        ,     # values: PriceClass_100, PriceClass_200, PriceClass_All; OPTIONAL
        Logging => {
          Enabled        => 1,
          Prefix         => 'Mystring',
          IncludeCookies => 1,
          Bucket         => 'Mystring',

        },    # OPTIONAL
        DefaultRootObject => 'Mystring',
        CacheBehaviors    => {
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
              TrustedSigners => {
                Enabled  => 1,
                Quantity => 1,
                Items    => [ 'Mystring', ... ],    # OPTIONAL
              },
              ViewerProtocolPolicy =>
                'allow-all',  # values: allow-all, https-only, redirect-to-https
              PathPattern    => 'Mystring',
              MinTTL         => 1,
              TargetOriginId => 'Mystring',
              Compress       => 1,
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
              FieldLevelEncryptionId     => 'Mystring',
              SmoothStreaming            => 1,
              DefaultTTL                 => 1,
              MaxTTL                     => 1,
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
            },
            ...
          ],        # OPTIONAL
        },    # OPTIONAL
        CustomErrorResponses => {
          Quantity => 1,
          Items    => [
            {
              ErrorCode          => 1,
              ResponseCode       => 'Mystring',
              ResponsePagePath   => 'Mystring',
              ErrorCachingMinTTL => 1,
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        HttpVersion => 'http1.1',    # values: http1.1, http2; OPTIONAL
      },

    );

    # Results:
    my $Distribution = $CreateDistributionResult->Distribution;
    my $Location     = $CreateDistributionResult->Location;
    my $ETag         = $CreateDistributionResult->ETag;

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

