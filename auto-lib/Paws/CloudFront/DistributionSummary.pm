# Generated from default/object.tt
package Paws::CloudFront::DistributionSummary;
  use Moo;
  use Types::Standard qw/ArrayRef Str Bool/;
  use Paws::CloudFront::Types qw/CloudFront_AliasICPRecordal CloudFront_Origins CloudFront_CustomErrorResponses CloudFront_CacheBehaviors CloudFront_OriginGroups CloudFront_Restrictions CloudFront_DefaultCacheBehavior CloudFront_Aliases CloudFront_ViewerCertificate/;
  has Aliases => (is => 'ro', isa => CloudFront_Aliases, required => 1);
  has AliasICPRecordals => (is => 'ro', isa => ArrayRef[CloudFront_AliasICPRecordal]);
  has ARN => (is => 'ro', isa => Str, required => 1);
  has CacheBehaviors => (is => 'ro', isa => CloudFront_CacheBehaviors, required => 1);
  has Comment => (is => 'ro', isa => Str, required => 1);
  has CustomErrorResponses => (is => 'ro', isa => CloudFront_CustomErrorResponses, required => 1);
  has DefaultCacheBehavior => (is => 'ro', isa => CloudFront_DefaultCacheBehavior, required => 1);
  has DomainName => (is => 'ro', isa => Str, required => 1);
  has Enabled => (is => 'ro', isa => Bool, required => 1);
  has HttpVersion => (is => 'ro', isa => Str, required => 1);
  has Id => (is => 'ro', isa => Str, required => 1);
  has IsIPV6Enabled => (is => 'ro', isa => Bool, required => 1);
  has LastModifiedTime => (is => 'ro', isa => Str, required => 1);
  has OriginGroups => (is => 'ro', isa => CloudFront_OriginGroups);
  has Origins => (is => 'ro', isa => CloudFront_Origins, required => 1);
  has PriceClass => (is => 'ro', isa => Str, required => 1);
  has Restrictions => (is => 'ro', isa => CloudFront_Restrictions, required => 1);
  has Status => (is => 'ro', isa => Str, required => 1);
  has ViewerCertificate => (is => 'ro', isa => CloudFront_ViewerCertificate, required => 1);
  has WebACLId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OriginGroups' => {
                                   'class' => 'Paws::CloudFront::OriginGroups',
                                   'type' => 'CloudFront_OriginGroups'
                                 },
               'IsIPV6Enabled' => {
                                    'type' => 'Bool'
                                  },
               'Status' => {
                             'type' => 'Str'
                           },
               'Origins' => {
                              'class' => 'Paws::CloudFront::Origins',
                              'type' => 'CloudFront_Origins'
                            },
               'ViewerCertificate' => {
                                        'class' => 'Paws::CloudFront::ViewerCertificate',
                                        'type' => 'CloudFront_ViewerCertificate'
                                      },
               'DefaultCacheBehavior' => {
                                           'class' => 'Paws::CloudFront::DefaultCacheBehavior',
                                           'type' => 'CloudFront_DefaultCacheBehavior'
                                         },
               'HttpVersion' => {
                                  'type' => 'Str'
                                },
               'CacheBehaviors' => {
                                     'class' => 'Paws::CloudFront::CacheBehaviors',
                                     'type' => 'CloudFront_CacheBehaviors'
                                   },
               'Aliases' => {
                              'class' => 'Paws::CloudFront::Aliases',
                              'type' => 'CloudFront_Aliases'
                            },
               'CustomErrorResponses' => {
                                           'class' => 'Paws::CloudFront::CustomErrorResponses',
                                           'type' => 'CloudFront_CustomErrorResponses'
                                         },
               'AliasICPRecordals' => {
                                        'class' => 'Paws::CloudFront::AliasICPRecordal',
                                        'type' => 'ArrayRef[CloudFront_AliasICPRecordal]'
                                      },
               'Id' => {
                         'type' => 'Str'
                       },
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'Comment' => {
                              'type' => 'Str'
                            },
               'WebACLId' => {
                               'type' => 'Str'
                             },
               'ARN' => {
                          'type' => 'Str'
                        },
               'LastModifiedTime' => {
                                       'type' => 'Str'
                                     },
               'PriceClass' => {
                                 'type' => 'Str'
                               },
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'Restrictions' => {
                                   'class' => 'Paws::CloudFront::Restrictions',
                                   'type' => 'CloudFront_Restrictions'
                                 }
             },
  'NameInRequest' => {
                       'AliasICPRecordals' => 'AliasICPRecordal'
                     },
  'IsRequired' => {
                    'IsIPV6Enabled' => 1,
                    'Status' => 1,
                    'Origins' => 1,
                    'ViewerCertificate' => 1,
                    'DefaultCacheBehavior' => 1,
                    'HttpVersion' => 1,
                    'CacheBehaviors' => 1,
                    'Aliases' => 1,
                    'CustomErrorResponses' => 1,
                    'Id' => 1,
                    'Enabled' => 1,
                    'Comment' => 1,
                    'WebACLId' => 1,
                    'ARN' => 1,
                    'LastModifiedTime' => 1,
                    'PriceClass' => 1,
                    'DomainName' => 1,
                    'Restrictions' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::DistributionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::DistributionSummary object:

  $service_obj->Method(Att1 => { Aliases => $value, ..., WebACLId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::DistributionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Aliases

=head1 DESCRIPTION

A summary of the information about a CloudFront distribution.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Aliases => CloudFront_Aliases

  A complex type that contains information about CNAMEs (alternate domain
names), if any, for this distribution.


=head2 AliasICPRecordals => ArrayRef[CloudFront_AliasICPRecordal]

  AWS services in China customers must file for an Internet Content
Provider (ICP) recordal if they want to serve content publicly on an
alternate domain name, also known as a CNAME, that they've added to
CloudFront. AliasICPRecordal provides the ICP recordal status for
CNAMEs associated with distributions.

For more information about ICP recordals, see Signup, Accounts, and
Credentials
(https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html)
in I<Getting Started with AWS services in China>.


=head2 B<REQUIRED> ARN => Str

  The ARN (Amazon Resource Name) for the distribution. For example:
C<arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5>, where
C<123456789012> is your AWS account ID.


=head2 B<REQUIRED> CacheBehaviors => CloudFront_CacheBehaviors

  A complex type that contains zero or more C<CacheBehavior> elements.


=head2 B<REQUIRED> Comment => Str

  The comment originally specified when this distribution was created.


=head2 B<REQUIRED> CustomErrorResponses => CloudFront_CustomErrorResponses

  A complex type that contains zero or more C<CustomErrorResponses>
elements.


=head2 B<REQUIRED> DefaultCacheBehavior => CloudFront_DefaultCacheBehavior

  A complex type that describes the default cache behavior if you don't
specify a C<CacheBehavior> element or if files don't match any of the
values of C<PathPattern> in C<CacheBehavior> elements. You must create
exactly one default cache behavior.


=head2 B<REQUIRED> DomainName => Str

  The domain name that corresponds to the distribution, for example,
C<d111111abcdef8.cloudfront.net>.


=head2 B<REQUIRED> Enabled => Bool

  Whether the distribution is enabled to accept user requests for
content.


=head2 B<REQUIRED> HttpVersion => Str

  Specify the maximum HTTP version that you want viewers to use to
communicate with CloudFront. The default value for new web
distributions is C<http2>. Viewers that don't support C<HTTP/2> will
automatically use an earlier version.


=head2 B<REQUIRED> Id => Str

  The identifier for the distribution. For example: C<EDFDVBD632BHDS5>.


=head2 B<REQUIRED> IsIPV6Enabled => Bool

  Whether CloudFront responds to IPv6 DNS requests with an IPv6 address
for your distribution.


=head2 B<REQUIRED> LastModifiedTime => Str

  The date and time the distribution was last modified.


=head2 OriginGroups => CloudFront_OriginGroups

  A complex type that contains information about origin groups for this
distribution.


=head2 B<REQUIRED> Origins => CloudFront_Origins

  A complex type that contains information about origins for this
distribution.


=head2 B<REQUIRED> PriceClass => Str

  A complex type that contains information about price class for this
streaming distribution.


=head2 B<REQUIRED> Restrictions => CloudFront_Restrictions

  A complex type that identifies ways in which you want to restrict
distribution of your content.


=head2 B<REQUIRED> Status => Str

  The current status of the distribution. When the status is C<Deployed>,
the distribution's information is propagated to all CloudFront edge
locations.


=head2 B<REQUIRED> ViewerCertificate => CloudFront_ViewerCertificate

  A complex type that specifies whether you want viewers to use HTTP or
HTTPS to request your objects, whether you're using an alternate domain
name with HTTPS, and if so, if you're using AWS Certificate Manager
(ACM) or a third-party certificate authority.


=head2 B<REQUIRED> WebACLId => Str

  The Web ACL Id (if any) associated with the distribution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

