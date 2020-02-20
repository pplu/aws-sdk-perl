package Paws::SecurityHub::AwsCloudFrontDistributionOriginItem;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has OriginPath => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsCloudFrontDistributionOriginItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsCloudFrontDistributionOriginItem object:

  $service_obj->Method(Att1 => { DomainName => $value, ..., OriginPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsCloudFrontDistributionOriginItem object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainName

=head1 DESCRIPTION

A complex type that describes the Amazon S3 bucket, HTTP server (for
example, a web server), Amazon MediaStore, or other server from which
CloudFront gets your files.

=head1 ATTRIBUTES


=head2 DomainName => Str

  Amazon S3 origins: The DNS name of the Amazon S3 bucket from which you
want CloudFront to get objects for this origin.


=head2 Id => Str

  A unique identifier for the origin or origin group.


=head2 OriginPath => Str

  An optional element that causes CloudFront to request your content from
a directory in your Amazon S3 bucket or your custom origin.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

