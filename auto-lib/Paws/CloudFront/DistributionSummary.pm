package Paws::CloudFront::DistributionSummary;
  use Moose;
  has Aliases => (is => 'ro', isa => 'Paws::CloudFront::Aliases', required => 1);
  has ARN => (is => 'ro', isa => 'Str', required => 1);
  has CacheBehaviors => (is => 'ro', isa => 'Paws::CloudFront::CacheBehaviors', required => 1);
  has Comment => (is => 'ro', isa => 'Str', required => 1);
  has CustomErrorResponses => (is => 'ro', isa => 'Paws::CloudFront::CustomErrorResponses', required => 1);
  has DefaultCacheBehavior => (is => 'ro', isa => 'Paws::CloudFront::DefaultCacheBehavior', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has HttpVersion => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IsIPV6Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has OriginGroups => (is => 'ro', isa => 'Paws::CloudFront::OriginGroups');
  has Origins => (is => 'ro', isa => 'Paws::CloudFront::Origins', required => 1);
  has PriceClass => (is => 'ro', isa => 'Str', required => 1);
  has Restrictions => (is => 'ro', isa => 'Paws::CloudFront::Restrictions', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has ViewerCertificate => (is => 'ro', isa => 'Paws::CloudFront::ViewerCertificate', required => 1);
  has WebACLId => (is => 'ro', isa => 'Str', required => 1);
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


=head2 B<REQUIRED> Aliases => L<Paws::CloudFront::Aliases>

  A complex type that contains information about CNAMEs (alternate domain
names), if any, for this distribution.


=head2 B<REQUIRED> ARN => Str

  The ARN (Amazon Resource Name) for the distribution. For example:
C<arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5>, where
C<123456789012> is your AWS account ID.


=head2 B<REQUIRED> CacheBehaviors => L<Paws::CloudFront::CacheBehaviors>

  A complex type that contains zero or more C<CacheBehavior> elements.


=head2 B<REQUIRED> Comment => Str

  The comment originally specified when this distribution was created.


=head2 B<REQUIRED> CustomErrorResponses => L<Paws::CloudFront::CustomErrorResponses>

  A complex type that contains zero or more C<CustomErrorResponses>
elements.


=head2 B<REQUIRED> DefaultCacheBehavior => L<Paws::CloudFront::DefaultCacheBehavior>

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


=head2 OriginGroups => L<Paws::CloudFront::OriginGroups>

  A complex type that contains information about origin groups for this
distribution.


=head2 B<REQUIRED> Origins => L<Paws::CloudFront::Origins>

  A complex type that contains information about origins for this
distribution.


=head2 B<REQUIRED> PriceClass => Str

  A complex type that contains information about price class for this
streaming distribution.


=head2 B<REQUIRED> Restrictions => L<Paws::CloudFront::Restrictions>

  


=head2 B<REQUIRED> Status => Str

  The current status of the distribution. When the status is C<Deployed>,
the distribution's information is propagated to all CloudFront edge
locations.


=head2 B<REQUIRED> ViewerCertificate => L<Paws::CloudFront::ViewerCertificate>

  


=head2 B<REQUIRED> WebACLId => Str

  The Web ACL Id (if any) associated with the distribution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

