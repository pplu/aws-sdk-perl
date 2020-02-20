package Paws::SecurityHub::AwsCloudFrontDistributionLogging;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has IncludeCookies => (is => 'ro', isa => 'Bool');
  has Prefix => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsCloudFrontDistributionLogging

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsCloudFrontDistributionLogging object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsCloudFrontDistributionLogging object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

A complex type that controls whether access logs are written for the
distribution.

=head1 ATTRIBUTES


=head2 Bucket => Str

  The Amazon S3 bucket to store the access logs in.


=head2 Enabled => Bool

  With this field, you can enable or disable the selected distribution.


=head2 IncludeCookies => Bool

  Specifies whether you want CloudFront to include cookies in access
logs.


=head2 Prefix => Str

  An optional string that you want CloudFront to use as a prefix to the
access log filenames for this distribution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

