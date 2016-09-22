package Paws::CloudFront::DistributionConfig;
  use Moose;
  has Aliases => (is => 'ro', isa => 'Paws::CloudFront::Aliases');
  has CacheBehaviors => (is => 'ro', isa => 'Paws::CloudFront::CacheBehaviors');
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Comment => (is => 'ro', isa => 'Str', required => 1);
  has CustomErrorResponses => (is => 'ro', isa => 'Paws::CloudFront::CustomErrorResponses');
  has DefaultCacheBehavior => (is => 'ro', isa => 'Paws::CloudFront::DefaultCacheBehavior', required => 1);
  has DefaultRootObject => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has HttpVersion => (is => 'ro', isa => 'Str');
  has Logging => (is => 'ro', isa => 'Paws::CloudFront::LoggingConfig');
  has Origins => (is => 'ro', isa => 'Paws::CloudFront::Origins', required => 1);
  has PriceClass => (is => 'ro', isa => 'Str');
  has Restrictions => (is => 'ro', isa => 'Paws::CloudFront::Restrictions');
  has ViewerCertificate => (is => 'ro', isa => 'Paws::CloudFront::ViewerCertificate');
  has WebACLId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::DistributionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::DistributionConfig object:

  $service_obj->Method(Att1 => { Aliases => $value, ..., WebACLId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::DistributionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Aliases

=head1 DESCRIPTION

A distribution Configuration.

=head1 ATTRIBUTES


=head2 Aliases => L<Paws::CloudFront::Aliases>

  A complex type that contains information about CNAMEs (alternate domain
names), if any, for this distribution.


=head2 CacheBehaviors => L<Paws::CloudFront::CacheBehaviors>

  A complex type that contains zero or more CacheBehavior elements.


=head2 B<REQUIRED> CallerReference => Str

  A unique number that ensures the request can't be replayed. If the
CallerReference is new (no matter the content of the DistributionConfig
object), a new distribution is created. If the CallerReference is a
value you already sent in a previous request to create a distribution,
and the content of the DistributionConfig is identical to the original
request (ignoring white space), the response includes the same
information returned to the original request. If the CallerReference is
a value you already sent in a previous request to create a distribution
but the content of the DistributionConfig is different from the
original request, CloudFront returns a DistributionAlreadyExists error.


=head2 B<REQUIRED> Comment => Str

  Any comments you want to include about the distribution.


=head2 CustomErrorResponses => L<Paws::CloudFront::CustomErrorResponses>

  A complex type that contains zero or more CustomErrorResponse elements.


=head2 B<REQUIRED> DefaultCacheBehavior => L<Paws::CloudFront::DefaultCacheBehavior>

  A complex type that describes the default cache behavior if you do not
specify a CacheBehavior element or if files don't match any of the
values of PathPattern in CacheBehavior elements.You must create exactly
one default cache behavior.


=head2 DefaultRootObject => Str

  The object that you want CloudFront to return (for example, index.html)
when an end user requests the root URL for your distribution
(http://www.example.com) instead of an object in your distribution
(http://www.example.com/index.html). Specifying a default root object
avoids exposing the contents of your distribution. If you don't want to
specify a default root object when you create a distribution, include
an empty DefaultRootObject element. To delete the default root object
from an existing distribution, update the distribution configuration
and include an empty DefaultRootObject element. To replace the default
root object, update the distribution configuration and specify the new
object.


=head2 B<REQUIRED> Enabled => Bool

  Whether the distribution is enabled to accept end user requests for
content.


=head2 HttpVersion => Str

  (Optional) Specify the maximum HTTP version that you want viewers to
use to communicate with CloudFront. The default value for new web
distributions is http2. Viewers that don't support HTTP/2 will
automatically use an earlier version.


=head2 Logging => L<Paws::CloudFront::LoggingConfig>

  A complex type that controls whether access logs are written for the
distribution.


=head2 B<REQUIRED> Origins => L<Paws::CloudFront::Origins>

  A complex type that contains information about origins for this
distribution.


=head2 PriceClass => Str

  A complex type that contains information about price class for this
distribution.


=head2 Restrictions => L<Paws::CloudFront::Restrictions>

  


=head2 ViewerCertificate => L<Paws::CloudFront::ViewerCertificate>

  


=head2 WebACLId => Str

  (Optional) If you're using AWS WAF to filter CloudFront requests, the
Id of the AWS WAF web ACL that is associated with the distribution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

