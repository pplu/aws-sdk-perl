package Paws::CloudFront::StreamingLoggingConfig;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Prefix => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::StreamingLoggingConfig

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::StreamingLoggingConfig object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::StreamingLoggingConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 ATTRIBUTES

=head2 B<REQUIRED> Bucket => Str

  

The Amazon S3 bucket to store the access logs in, for example,
myawslogbucket.s3.amazonaws.com.










=head2 B<REQUIRED> Enabled => Bool

  

Specifies whether you want CloudFront to save access logs to an Amazon
S3 bucket. If you do not want to enable logging when you create a
streaming distribution or if you want to disable logging for an
existing streaming distribution, specify false for Enabled, and specify
empty Bucket and Prefix elements. If you specify false for Enabled but
you specify values for Bucket and Prefix, the values are automatically
deleted.










=head2 B<REQUIRED> Prefix => Str

  

An optional string that you want CloudFront to prefix to the access log
filenames for this streaming distribution, for example, myprefix/. If
you want to enable logging, but you do not want to specify a prefix,
you still must include an empty Prefix element in the Logging element.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

