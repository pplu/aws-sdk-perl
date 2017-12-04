package Paws::CloudFront::StreamingDistributionSummary;
  use Moose;
  has Aliases => (is => 'ro', isa => 'Paws::CloudFront::Aliases', required => 1);
  has ARN => (is => 'ro', isa => 'Str', required => 1);
  has Comment => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has PriceClass => (is => 'ro', isa => 'Str', required => 1);
  has S3Origin => (is => 'ro', isa => 'Paws::CloudFront::S3Origin', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has TrustedSigners => (is => 'ro', isa => 'Paws::CloudFront::TrustedSigners', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::StreamingDistributionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::StreamingDistributionSummary object:

  $service_obj->Method(Att1 => { Aliases => $value, ..., TrustedSigners => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::StreamingDistributionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Aliases

=head1 DESCRIPTION

A summary of the information for an Amazon CloudFront streaming
distribution.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Aliases => L<Paws::CloudFront::Aliases>

  A complex type that contains information about CNAMEs (alternate domain
names), if any, for this streaming distribution.


=head2 B<REQUIRED> ARN => Str

  The ARN (Amazon Resource Name) for the streaming distribution. For
example:
C<arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5>,
where C<123456789012> is your AWS account ID.


=head2 B<REQUIRED> Comment => Str

  The comment originally specified when this distribution was created.


=head2 B<REQUIRED> DomainName => Str

  The domain name corresponding to the distribution, for example,
C<d111111abcdef8.cloudfront.net>.


=head2 B<REQUIRED> Enabled => Bool

  Whether the distribution is enabled to accept end user requests for
content.


=head2 B<REQUIRED> Id => Str

  The identifier for the distribution, for example, C<EDFDVBD632BHDS5>.


=head2 B<REQUIRED> LastModifiedTime => Str

  The date and time the distribution was last modified.


=head2 B<REQUIRED> PriceClass => Str

  


=head2 B<REQUIRED> S3Origin => L<Paws::CloudFront::S3Origin>

  A complex type that contains information about the Amazon S3 bucket
from which you want CloudFront to get your media files for
distribution.


=head2 B<REQUIRED> Status => Str

  Indicates the current status of the distribution. When the status is
C<Deployed>, the distribution's information is fully propagated
throughout the Amazon CloudFront system.


=head2 B<REQUIRED> TrustedSigners => L<Paws::CloudFront::TrustedSigners>

  A complex type that specifies the AWS accounts, if any, that you want
to allow to create signed URLs for private content. If you want to
require signed URLs in requests for objects in the target origin that
match the C<PathPattern> for this cache behavior, specify C<true> for
C<Enabled>, and specify the applicable values for C<Quantity> and
C<Items>.If you don't want to require signed URLs in requests for
objects that match C<PathPattern>, specify C<false> for C<Enabled> and
C<0> for C<Quantity>. Omit C<Items>. To add, change, or remove one or
more trusted signers, change C<Enabled> to C<true> (if it's currently
C<false>), change C<Quantity> as applicable, and specify all of the
trusted signers that you want to include in the updated distribution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

