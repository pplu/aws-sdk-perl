
package Paws::CloudFront::CreateDistributionWithTags;
  use Moose;
  has DistributionConfigWithTags => (is => 'ro', isa => 'Paws::CloudFront::DistributionConfigWithTags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDistributionWithTags');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-10-30/distribution?WithTags');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateDistributionWithTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateDistributionWithTags - Arguments for method CreateDistributionWithTags on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDistributionWithTags2017_10_30 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateDistributionWithTags2017_10_30.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDistributionWithTags2017_10_30.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateDistributionWithTagsResult =
      $cloudfront->CreateDistributionWithTags(
      DistributionConfigWithTags => {
        Tags => {
          Items => [
            {
              Key   => 'MyTagKey',      # min: 1, max: 128
              Value => 'MyTagValue',    # max: 256; OPTIONAL
            },
            ...
          ],                            # OPTIONAL
        },
        DistributionConfig => {
          Origins => {
            Quantity => 1,
            Items    => [
              {
                Id                 => 'Mystring',
                DomainName         => 'Mystring',
                OriginPath         => 'Mystring',
                CustomOriginConfig => {
                  HTTPPort  => 1,
                  HTTPSPort => 1,
                  OriginProtocolPolicy =>
                    'http-only',   # values: http-only, match-viewer, https-only
                  OriginReadTimeout      => 1,
                  OriginKeepaliveTimeout => 1,
                  OriginSslProtocols     => {
                    Quantity => 1,
                    Items    => [
                      'SSLv3', ...    # values: SSLv3, TLSv1, TLSv1.1, TLSv1.2
                    ],

                  },    # OPTIONAL
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
                S3OriginConfig => {
                  OriginAccessIdentity => 'Mystring',

                },    # OPTIONAL
              },
              ...
            ],        # min: 1, ; OPTIONAL
          },
          Comment              => 'Mystring',
          Enabled              => 1,
          DefaultCacheBehavior => {
            ForwardedValues => {
              QueryString => 1,
              Cookies     => {
                Forward          => 'none',    # values: none, whitelist, all
                WhitelistedNames => {
                  Quantity => 1,
                  Items    => [ 'Mystring', ... ],    # OPTIONAL
                },    # OPTIONAL
              },
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
            TargetOriginId => 'Mystring',
            MinTTL         => 1,
            ViewerProtocolPolicy =>
              'allow-all',    # values: allow-all, https-only, redirect-to-https
            DefaultTTL             => 1,
            SmoothStreaming        => 1,
            FieldLevelEncryptionId => 'Mystring',
            Compress               => 1,
            AllowedMethods         => {
              Items => [
                'GET',
                ...    # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
              ],
              Quantity      => 1,
              CachedMethods => {
                Quantity => 1,
                Items    => [
                  'GET',
                  ...    # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
                ],

              },    # OPTIONAL
            },    # OPTIONAL
            LambdaFunctionAssociations => {
              Quantity => 1,
              Items    => [
                {
                  LambdaFunctionARN => 'MyLambdaFunctionARN',
                  EventType         => 'viewer-request'
                  , # values: viewer-request, viewer-response, origin-request, origin-response

                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            MaxTTL => 1,
          },
          CallerReference   => 'Mystring',
          DefaultRootObject => 'Mystring',
          Aliases           => {
            Quantity => 1,
            Items    => [ 'Mystring', ... ],    # OPTIONAL
          },    # OPTIONAL
          ViewerCertificate => {
            MinimumProtocolVersion => 'SSLv3'
            , # values: SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018; OPTIONAL
            CloudFrontDefaultCertificate => 1,
            ACMCertificateArn            => 'Mystring',
            SSLSupportMethod => 'sni-only',    # values: sni-only, vip; OPTIONAL
            Certificate      => 'Mystring',
            IAMCertificateId => 'Mystring',
            CertificateSource =>
              'cloudfront',    # values: cloudfront, iam, acm; OPTIONAL
          },    # OPTIONAL
          PriceClass => 'PriceClass_100'
          ,   # values: PriceClass_100, PriceClass_200, PriceClass_All; OPTIONAL
          Logging => {
            Prefix         => 'Mystring',
            Enabled        => 1,
            Bucket         => 'Mystring',
            IncludeCookies => 1,

          },    # OPTIONAL
          CacheBehaviors => {
            Quantity => 1,
            Items    => [
              {
                PathPattern          => 'Mystring',
                ViewerProtocolPolicy => 'allow-all'
                ,    # values: allow-all, https-only, redirect-to-https
                TargetOriginId => 'Mystring',
                MinTTL         => 1,
                TrustedSigners => {
                  Enabled  => 1,
                  Quantity => 1,
                  Items    => [ 'Mystring', ... ],    # OPTIONAL
                },
                ForwardedValues => {
                  QueryString => 1,
                  Cookies     => {
                    Forward          => 'none',   # values: none, whitelist, all
                    WhitelistedNames => {
                      Quantity => 1,
                      Items    => [ 'Mystring', ... ],    # OPTIONAL
                    },    # OPTIONAL
                  },
                  QueryStringCacheKeys => {
                    Quantity => 1,
                    Items    => [ 'Mystring', ... ],    # OPTIONAL
                  },    # OPTIONAL
                  Headers => {
                    Quantity => 1,
                    Items    => [ 'Mystring', ... ],    # OPTIONAL
                  },    # OPTIONAL
                },
                AllowedMethods => {
                  Items => [
                    'GET',
                    ...   # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
                  ],
                  Quantity      => 1,
                  CachedMethods => {
                    Quantity => 1,
                    Items    => [
                      'GET',
                      ... # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
                    ],

                  },    # OPTIONAL
                },    # OPTIONAL
                Compress                   => 1,
                FieldLevelEncryptionId     => 'Mystring',
                SmoothStreaming            => 1,
                DefaultTTL                 => 1,
                MaxTTL                     => 1,
                LambdaFunctionAssociations => {
                  Quantity => 1,
                  Items    => [
                    {
                      LambdaFunctionARN => 'MyLambdaFunctionARN',
                      EventType         => 'viewer-request'
                      , # values: viewer-request, viewer-response, origin-request, origin-response

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
                ResponsePagePath   => 'Mystring',
                ResponseCode       => 'Mystring',
                ErrorCachingMinTTL => 1,
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          HttpVersion  => 'http1.1',    # values: http1.1, http2; OPTIONAL
          Restrictions => {
            GeoRestriction => {
              Quantity => 1,
              RestrictionType =>
                'blacklist',            # values: blacklist, whitelist, none
              Items => [ 'Mystring', ... ],    # OPTIONAL
            },

          },    # OPTIONAL
          IsIPV6Enabled => 1,
          WebACLId      => 'Mystring',
        },

      },

      );

    # Results:
    my $Location     = $CreateDistributionWithTagsResult->Location;
    my $ETag         = $CreateDistributionWithTagsResult->ETag;
    my $Distribution = $CreateDistributionWithTagsResult->Distribution;

    # Returns a L<Paws::CloudFront::CreateDistributionWithTagsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateDistributionWithTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DistributionConfigWithTags => L<Paws::CloudFront::DistributionConfigWithTags>

The distribution's configuration information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDistributionWithTags2017_10_30 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

