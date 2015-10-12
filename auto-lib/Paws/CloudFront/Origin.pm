package Paws::CloudFront::Origin;
  use Moose;
  has CustomOriginConfig => (is => 'ro', isa => 'Paws::CloudFront::CustomOriginConfig');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has OriginPath => (is => 'ro', isa => 'Str');
  has S3OriginConfig => (is => 'ro', isa => 'Paws::CloudFront::S3OriginConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::Origin

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::Origin object:

  $service_obj->Method(Att1 => { CustomOriginConfig => $value, ..., S3OriginConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::Origin object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomOriginConfig

=head1 ATTRIBUTES

=head2 CustomOriginConfig => L<Paws::CloudFront::CustomOriginConfig>

  A complex type that contains information about a custom origin. If the
origin is an Amazon S3 bucket, use the S3OriginConfig element instead.

=head2 B<REQUIRED> DomainName => Str

  Amazon S3 origins: The DNS name of the Amazon S3 bucket from which you
want CloudFront to get objects for this origin, for example,
myawsbucket.s3.amazonaws.com. Custom origins: The DNS domain name for
the HTTP server from which you want CloudFront to get objects for this
origin, for example, www.example.com.

=head2 B<REQUIRED> Id => Str

  A unique identifier for the origin. The value of Id must be unique
within the distribution. You use the value of Id when you create a
cache behavior. The Id identifies the origin that CloudFront routes a
request to when the request matches the path pattern for that cache
behavior.

=head2 OriginPath => Str

  An optional element that causes CloudFront to request your content from
a directory in your Amazon S3 bucket or your custom origin. When you
include the OriginPath element, specify the directory name, beginning
with a /. CloudFront appends the directory name to the value of
DomainName.

=head2 S3OriginConfig => L<Paws::CloudFront::S3OriginConfig>

  A complex type that contains information about the Amazon S3 origin. If
the origin is a custom origin, use the CustomOriginConfig element
instead.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

