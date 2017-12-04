package Paws::CloudFront::S3Origin;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has OriginAccessIdentity => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::S3Origin

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::S3Origin object:

  $service_obj->Method(Att1 => { DomainName => $value, ..., OriginAccessIdentity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::S3Origin object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainName

=head1 DESCRIPTION

A complex type that contains information about the Amazon S3 bucket
from which you want CloudFront to get your media files for
distribution.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

  The DNS name of the Amazon S3 origin.


=head2 B<REQUIRED> OriginAccessIdentity => Str

  The CloudFront origin access identity to associate with the RTMP
distribution. Use an origin access identity to configure the
distribution so that end users can only access objects in an Amazon S3
bucket through CloudFront.

If you want end users to be able to access objects using either the
CloudFront URL or the Amazon S3 URL, specify an empty
C<OriginAccessIdentity> element.

To delete the origin access identity from an existing distribution,
update the distribution configuration and include an empty
C<OriginAccessIdentity> element.

To replace the origin access identity, update the distribution
configuration and specify the new origin access identity.

For more information, see Using an Origin Access Identity to Restrict
Access to Your Amazon S3 Content
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html)
in the I<Amazon Amazon CloudFront Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

