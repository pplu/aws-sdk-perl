package Paws::CloudFront::S3OriginConfig;
  use Moose;
  has OriginAccessIdentity => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::S3OriginConfig

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::S3OriginConfig object:

  $service_obj->Method(Att1 => { OriginAccessIdentity => $value, ..., OriginAccessIdentity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::S3OriginConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->OriginAccessIdentity

=head1 ATTRIBUTES

=head2 B<REQUIRED> OriginAccessIdentity => Str

  The CloudFront origin access identity to associate with the origin. Use
an origin access identity to configure the origin so that end users can
only access objects in an Amazon S3 bucket through CloudFront. If you
want end users to be able to access objects using either the CloudFront
URL or the Amazon S3 URL, specify an empty OriginAccessIdentity
element. To delete the origin access identity from an existing
distribution, update the distribution configuration and include an
empty OriginAccessIdentity element. To replace the origin access
identity, update the distribution configuration and specify the new
origin access identity. Use the format
origin-access-identity/cloudfront/Id where Id is the value that
CloudFront returned in the Id element when you created the origin
access identity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

