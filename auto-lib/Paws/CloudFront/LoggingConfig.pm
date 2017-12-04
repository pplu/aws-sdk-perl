package Paws::CloudFront::LoggingConfig;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has IncludeCookies => (is => 'ro', isa => 'Bool', required => 1);
  has Prefix => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::LoggingConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::LoggingConfig object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::LoggingConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

A complex type that controls whether access logs are written for the
distribution.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

  The Amazon S3 bucket to store the access logs in, for example,
C<myawslogbucket.s3.amazonaws.com>.


=head2 B<REQUIRED> Enabled => Bool

  Specifies whether you want CloudFront to save access logs to an Amazon
S3 bucket. If you don't want to enable logging when you create a
distribution or if you want to disable logging for an existing
distribution, specify C<false> for C<Enabled>, and specify empty
C<Bucket> and C<Prefix> elements. If you specify C<false> for
C<Enabled> but you specify values for C<Bucket>, C<prefix>, and
C<IncludeCookies>, the values are automatically deleted.


=head2 B<REQUIRED> IncludeCookies => Bool

  Specifies whether you want CloudFront to include cookies in access
logs, specify C<true> for C<IncludeCookies>. If you choose to include
cookies in logs, CloudFront logs all cookies regardless of how you
configure the cache behaviors for this distribution. If you don't want
to include cookies when you create a distribution or if you want to
disable include cookies for an existing distribution, specify C<false>
for C<IncludeCookies>.


=head2 B<REQUIRED> Prefix => Str

  An optional string that you want CloudFront to prefix to the access log
C<filenames> for this distribution, for example, C<myprefix/>. If you
want to enable logging, but you don't want to specify a prefix, you
still must include an empty C<Prefix> element in the C<Logging>
element.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

