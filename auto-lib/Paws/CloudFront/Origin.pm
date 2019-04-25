package Paws::CloudFront::Origin;
  use Moose;
  has CustomHeaders => (is => 'ro', isa => 'Paws::CloudFront::CustomHeaders');
  has CustomOriginConfig => (is => 'ro', isa => 'Paws::CloudFront::CustomOriginConfig');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has OriginPath => (is => 'ro', isa => 'Str');
  has S3OriginConfig => (is => 'ro', isa => 'Paws::CloudFront::S3OriginConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::Origin

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::Origin object:

  $service_obj->Method(Att1 => { CustomHeaders => $value, ..., S3OriginConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::Origin object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomHeaders

=head1 DESCRIPTION

A complex type that describes the Amazon S3 bucket, HTTP server (for
example, a web server), Amazon MediaStore, or other server from which
CloudFront gets your files. This can also be an origin group, if you've
created an origin group. You must specify at least one origin or origin
group.

For the current limit on the number of origins or origin groups that
you can specify for a distribution, see Amazon CloudFront Limits
(http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront)
in the I<AWS General Reference>.

=head1 ATTRIBUTES


=head2 CustomHeaders => L<Paws::CloudFront::CustomHeaders>

  A complex type that contains names and values for the custom headers
that you want.


=head2 CustomOriginConfig => L<Paws::CloudFront::CustomOriginConfig>

  A complex type that contains information about a custom origin. If the
origin is an Amazon S3 bucket, use the C<S3OriginConfig> element
instead.


=head2 B<REQUIRED> DomainName => Str

  B<Amazon S3 origins>: The DNS name of the Amazon S3 bucket from which
you want CloudFront to get objects for this origin, for example,
C<myawsbucket.s3.amazonaws.com>. If you set up your bucket to be
configured as a website endpoint, enter the Amazon S3 static website
hosting endpoint for the bucket.

For more information about specifying this value for different types of
origins, see Origin Domain Name
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesDomainName)
in the I<Amazon CloudFront Developer Guide>.

Constraints for Amazon S3 origins:

=over

=item *

If you configured Amazon S3 Transfer Acceleration for your bucket,
don't specify the C<s3-accelerate> endpoint for C<DomainName>.

=item *

The bucket name must be between 3 and 63 characters long (inclusive).

=item *

The bucket name must contain only lowercase characters, numbers,
periods, underscores, and dashes.

=item *

The bucket name must not contain adjacent periods.

=back

B<Custom Origins>: The DNS domain name for the HTTP server from which
you want CloudFront to get objects for this origin, for example,
C<www.example.com>.

Constraints for custom origins:

=over

=item *

C<DomainName> must be a valid DNS name that contains only a-z, A-Z,
0-9, dot (.), hyphen (-), or underscore (_) characters.

=item *

The name cannot exceed 128 characters.

=back



=head2 B<REQUIRED> Id => Str

  A unique identifier for the origin or origin group. The value of C<Id>
must be unique within the distribution.

When you specify the value of C<TargetOriginId> for the default cache
behavior or for another cache behavior, you indicate the origin to
which you want the cache behavior to route requests by specifying the
value of the C<Id> element for that origin. When a request matches the
path pattern for that cache behavior, CloudFront routes the request to
the specified origin. For more information, see Cache Behavior Settings
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior)
in the I<Amazon CloudFront Developer Guide>.


=head2 OriginPath => Str

  An optional element that causes CloudFront to request your content from
a directory in your Amazon S3 bucket or your custom origin. When you
include the C<OriginPath> element, specify the directory name,
beginning with a C</>. CloudFront appends the directory name to the
value of C<DomainName>, for example, C<example.com/production>. Do not
include a C</> at the end of the directory name.

For example, suppose you've specified the following values for your
distribution:

=over

=item *

C<DomainName>: An Amazon S3 bucket named C<myawsbucket>.

=item *

C<OriginPath>: C</production>

=item *

C<CNAME>: C<example.com>

=back

When a user enters C<example.com/index.html> in a browser, CloudFront
sends a request to Amazon S3 for C<myawsbucket/production/index.html>.

When a user enters C<example.com/acme/index.html> in a browser,
CloudFront sends a request to Amazon S3 for
C<myawsbucket/production/acme/index.html>.


=head2 S3OriginConfig => L<Paws::CloudFront::S3OriginConfig>

  A complex type that contains information about the Amazon S3 origin. If
the origin is a custom origin, use the C<CustomOriginConfig> element
instead.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

