
package Paws::WAFV2::UpdateWebACL;
  use Moose;
  has CustomResponseBodies => (is => 'ro', isa => 'Paws::WAFV2::CustomResponseBodies');
  has DefaultAction => (is => 'ro', isa => 'Paws::WAFV2::DefaultAction', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LockToken => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::Rule]');
  has Scope => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityConfig => (is => 'ro', isa => 'Paws::WAFV2::VisibilityConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWebACL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::UpdateWebACLResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::UpdateWebACL - Arguments for method UpdateWebACL on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWebACL on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method UpdateWebACL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWebACL.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $UpdateWebACLResponse = $wafv2->UpdateWebACL(
      DefaultAction => {
        Allow => {
          CustomRequestHandling => {
            InsertHeaders => [
              {
                Name  => 'MyCustomHTTPHeaderName',     # min: 1, max: 64
                Value => 'MyCustomHTTPHeaderValue',    # min: 1, max: 255

              },
              ...
            ],    # min: 1

          },    # OPTIONAL
        },    # OPTIONAL
        Block => {
          CustomResponse => {
            ResponseCode          => 1,    # min: 200, max: 600
            CustomResponseBodyKey =>
              'MyEntityName',              # min: 1, max: 128; OPTIONAL
            ResponseHeaders => [
              {
                Name  => 'MyCustomHTTPHeaderName',     # min: 1, max: 64
                Value => 'MyCustomHTTPHeaderValue',    # min: 1, max: 255

              },
              ...
            ],    # min: 1
          },    # OPTIONAL
        },    # OPTIONAL
      },
      Id               => 'MyEntityId',
      LockToken        => 'MyLockToken',
      Name             => 'MyEntityName',
      Scope            => 'CLOUDFRONT',
      VisibilityConfig => {
        CloudWatchMetricsEnabled => 1,
        MetricName               => 'MyMetricName',    # min: 1, max: 255
        SampledRequestsEnabled   => 1,

      },
      CustomResponseBodies => {
        'MyEntityName' => {
          Content     => 'MyResponseContent',    # min: 1, max: 10240
          ContentType =>
            'TEXT_PLAIN',    # values: TEXT_PLAIN, TEXT_HTML, APPLICATION_JSON

        },    # key: min: 1, max: 128; OPTIONAL
      },    # OPTIONAL
      Description => 'MyEntityDescription',    # OPTIONAL
      Rules       => [
        {
          Name      => 'MyEntityName',         # min: 1, max: 128; OPTIONAL
          Priority  => 1,
          Statement => {
            AndStatement => {
              Statements => [ <Statement>, ... ],

            },                                 # OPTIONAL
            ByteMatchStatement => {
              FieldToMatch => {
                AllQueryArguments => {

                },    # OPTIONAL
                Body => {

                },    # OPTIONAL
                JsonBody => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    IncludedPaths => [
                      'MyJsonPointerPath', ...    # min: 1, max: 512
                    ],    # min: 1; OPTIONAL
                  },
                  MatchScope              => 'ALL',    # values: ALL, KEY, VALUE
                  InvalidFallbackBehavior => 'MATCH'
                  ,    # values: MATCH, NO_MATCH, EVALUATE_AS_STRING; OPTIONAL
                },    # OPTIONAL
                Method => {

                },    # OPTIONAL
                QueryString => {

                },    # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              PositionalConstraint => 'EXACTLY'
              , # values: EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
              SearchString        => 'BlobSearchString',
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                },
                ...
              ],    # min: 1

            },    # OPTIONAL
            GeoMatchStatement => {
              CountryCodes => [
                'AF',
                ... # values: AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
              ],    # min: 1; OPTIONAL
              ForwardedIPConfig => {
                FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH
                HeaderName => 'MyForwardedIPHeaderName',    # min: 1, max: 255

              },    # OPTIONAL
            },    # OPTIONAL
            IPSetReferenceStatement => {
              ARN                    => 'MyResourceArn',    # min: 20, max: 2048
              IPSetForwardedIPConfig => {
                FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH
                HeaderName => 'MyForwardedIPHeaderName',    # min: 1, max: 255
                Position   => 'FIRST',    # values: FIRST, LAST, ANY

              },    # OPTIONAL
            },    # OPTIONAL
            LabelMatchStatement => {
              Key   => 'MyLabelMatchKey',    # min: 1, max: 1024
              Scope => 'LABEL',              # values: LABEL, NAMESPACE

            },    # OPTIONAL
            ManagedRuleGroupStatement => {
              Name          => 'MyEntityName',    # min: 1, max: 128; OPTIONAL
              VendorName    => 'MyVendorName',    # min: 1, max: 128
              ExcludedRules => [
                {
                  Name => 'MyEntityName',         # min: 1, max: 128; OPTIONAL

                },
                ...
              ],    # OPTIONAL
              ScopeDownStatement => <Statement>,
            },    # OPTIONAL
            NotStatement => {
              Statement => <Statement>,

            },    # OPTIONAL
            OrStatement => {
              Statements => [ <Statement>, ... ],

            },    # OPTIONAL
            RateBasedStatement => {
              AggregateKeyType  => 'IP',    # values: IP, FORWARDED_IP
              Limit             => 1,       # min: 100, max: 2000000000
              ForwardedIPConfig => {
                FallbackBehavior => 'MATCH',    # values: MATCH, NO_MATCH
                HeaderName => 'MyForwardedIPHeaderName',    # min: 1, max: 255

              },    # OPTIONAL
              ScopeDownStatement => <Statement>,
            },    # OPTIONAL
            RegexPatternSetReferenceStatement => {
              ARN          => 'MyResourceArn',    # min: 20, max: 2048
              FieldToMatch => {
                AllQueryArguments => {

                },                                # OPTIONAL
                Body => {

                },                                # OPTIONAL
                JsonBody => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    IncludedPaths => [
                      'MyJsonPointerPath', ...    # min: 1, max: 512
                    ],    # min: 1; OPTIONAL
                  },
                  MatchScope              => 'ALL',    # values: ALL, KEY, VALUE
                  InvalidFallbackBehavior => 'MATCH'
                  ,    # values: MATCH, NO_MATCH, EVALUATE_AS_STRING; OPTIONAL
                },    # OPTIONAL
                Method => {

                },    # OPTIONAL
                QueryString => {

                },    # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                },
                ...
              ],    # min: 1

            },    # OPTIONAL
            RuleGroupReferenceStatement => {
              ARN           => 'MyResourceArn',    # min: 20, max: 2048
              ExcludedRules => [
                {
                  Name => 'MyEntityName',          # min: 1, max: 128; OPTIONAL

                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            SizeConstraintStatement => {
              ComparisonOperator => 'EQ',    # values: EQ, NE, LE, LT, GE, GT
              FieldToMatch       => {
                AllQueryArguments => {

                },                           # OPTIONAL
                Body => {

                },                           # OPTIONAL
                JsonBody => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    IncludedPaths => [
                      'MyJsonPointerPath', ...    # min: 1, max: 512
                    ],    # min: 1; OPTIONAL
                  },
                  MatchScope              => 'ALL',    # values: ALL, KEY, VALUE
                  InvalidFallbackBehavior => 'MATCH'
                  ,    # values: MATCH, NO_MATCH, EVALUATE_AS_STRING; OPTIONAL
                },    # OPTIONAL
                Method => {

                },    # OPTIONAL
                QueryString => {

                },    # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              Size                => 1,    # max: 21474836480
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                },
                ...
              ],    # min: 1

            },    # OPTIONAL
            SqliMatchStatement => {
              FieldToMatch => {
                AllQueryArguments => {

                },    # OPTIONAL
                Body => {

                },    # OPTIONAL
                JsonBody => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    IncludedPaths => [
                      'MyJsonPointerPath', ...    # min: 1, max: 512
                    ],    # min: 1; OPTIONAL
                  },
                  MatchScope              => 'ALL',    # values: ALL, KEY, VALUE
                  InvalidFallbackBehavior => 'MATCH'
                  ,    # values: MATCH, NO_MATCH, EVALUATE_AS_STRING; OPTIONAL
                },    # OPTIONAL
                Method => {

                },    # OPTIONAL
                QueryString => {

                },    # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                },
                ...
              ],    # min: 1

            },    # OPTIONAL
            XssMatchStatement => {
              FieldToMatch => {
                AllQueryArguments => {

                },    # OPTIONAL
                Body => {

                },    # OPTIONAL
                JsonBody => {
                  MatchPattern => {
                    All => {

                    },    # OPTIONAL
                    IncludedPaths => [
                      'MyJsonPointerPath', ...    # min: 1, max: 512
                    ],    # min: 1; OPTIONAL
                  },
                  MatchScope              => 'ALL',    # values: ALL, KEY, VALUE
                  InvalidFallbackBehavior => 'MATCH'
                  ,    # values: MATCH, NO_MATCH, EVALUATE_AS_STRING; OPTIONAL
                },    # OPTIONAL
                Method => {

                },    # OPTIONAL
                QueryString => {

                },    # OPTIONAL
                SingleHeader => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                SingleQueryArgument => {
                  Name => 'MyFieldToMatchData',    # min: 1, max: 64

                },    # OPTIONAL
                UriPath => {

                },    # OPTIONAL
              },
              TextTransformations => [
                {
                  Priority => 1,
                  Type     => 'NONE'
                  , # values: NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE

                },
                ...
              ],    # min: 1

            },    # OPTIONAL
          },
          VisibilityConfig => {
            CloudWatchMetricsEnabled => 1,
            MetricName               => 'MyMetricName',    # min: 1, max: 255
            SampledRequestsEnabled   => 1,

          },
          Action => {
            Allow => {
              CustomRequestHandling => {
                InsertHeaders => [
                  {
                    Name  => 'MyCustomHTTPHeaderName',     # min: 1, max: 64
                    Value => 'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                  },
                  ...
                ],    # min: 1

              },    # OPTIONAL
            },    # OPTIONAL
            Block => {
              CustomResponse => {
                ResponseCode          => 1,    # min: 200, max: 600
                CustomResponseBodyKey =>
                  'MyEntityName',              # min: 1, max: 128; OPTIONAL
                ResponseHeaders => [
                  {
                    Name  => 'MyCustomHTTPHeaderName',     # min: 1, max: 64
                    Value => 'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                  },
                  ...
                ],    # min: 1
              },    # OPTIONAL
            },    # OPTIONAL
            Count => {
              CustomRequestHandling => {
                InsertHeaders => [
                  {
                    Name  => 'MyCustomHTTPHeaderName',     # min: 1, max: 64
                    Value => 'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                  },
                  ...
                ],    # min: 1

              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          OverrideAction => {
            Count => {
              CustomRequestHandling => {
                InsertHeaders => [
                  {
                    Name  => 'MyCustomHTTPHeaderName',     # min: 1, max: 64
                    Value => 'MyCustomHTTPHeaderValue',    # min: 1, max: 255

                  },
                  ...
                ],    # min: 1

              },    # OPTIONAL
            },    # OPTIONAL
            None => {

            },    # OPTIONAL
          },    # OPTIONAL
          RuleLabels => [
            {
              Name => 'MyLabelName',    # min: 1, max: 1024

            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $NextLockToken = $UpdateWebACLResponse->NextLockToken;

    # Returns a L<Paws::WAFV2::UpdateWebACLResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/UpdateWebACL>

=head1 ATTRIBUTES


=head2 CustomResponseBodies => L<Paws::WAFV2::CustomResponseBodies>

A map of custom response keys and content bodies. When you create a
rule with a block action, you can send a custom response to the web
request. You define these for the web ACL, and then use them in the
rules and default actions that you define in the web ACL.

For information about customizing web requests and responses, see
Customizing web requests and responses in WAF
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html)
in the WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

For information about the limits on count and size for custom request
and response settings, see WAF quotas
(https://docs.aws.amazon.com/waf/latest/developerguide/limits.html) in
the WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).



=head2 B<REQUIRED> DefaultAction => L<Paws::WAFV2::DefaultAction>

The action to perform if none of the C<Rules> contained in the
C<WebACL> match.



=head2 Description => Str

A description of the web ACL that helps with identification.



=head2 B<REQUIRED> Id => Str

The unique identifier for the web ACL. This ID is returned in the
responses to create and list commands. You provide it to operations
like update and delete.



=head2 B<REQUIRED> LockToken => Str

A token used for optimistic locking. WAF returns a token to your get
and list requests, to mark the state of the entity at the time of the
request. To make changes to the entity associated with the token, you
provide the token to operations like update and delete. WAF uses the
token to ensure that no changes have been made to the entity since you
last retrieved it. If a change has been made, the update fails with a
C<WAFOptimisticLockException>. If this happens, perform another get,
and use the new token returned by that operation.



=head2 B<REQUIRED> Name => Str

The name of the web ACL. You cannot change the name of a web ACL after
you create it.



=head2 Rules => ArrayRef[L<Paws::WAFV2::Rule>]

The Rule statements used to identify the web requests that you want to
allow, block, or count. Each rule includes one top-level statement that
WAF uses to identify matching web requests, and parameters that govern
how WAF handles them.



=head2 B<REQUIRED> Scope => Str

Specifies whether this is for an Amazon CloudFront distribution or for
a regional application. A regional application can be an Application
Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync
GraphQL API.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:

=over

=item *

CLI - Specify the Region when you use the CloudFront scope:
C<--scope=CLOUDFRONT --region=us-east-1>.

=item *

API and SDKs - For all calls, use the Region endpoint us-east-1.

=back


Valid values are: C<"CLOUDFRONT">, C<"REGIONAL">

=head2 B<REQUIRED> VisibilityConfig => L<Paws::WAFV2::VisibilityConfig>

Defines and enables Amazon CloudWatch metrics and web request sample
collection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWebACL in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

