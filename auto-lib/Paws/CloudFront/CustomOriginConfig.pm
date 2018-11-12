package Paws::CloudFront::CustomOriginConfig;
  use Moose;
  has HTTPPort => (is => 'ro', isa => 'Int', required => 1);
  has HTTPSPort => (is => 'ro', isa => 'Int', required => 1);
  has OriginKeepaliveTimeout => (is => 'ro', isa => 'Int');
  has OriginProtocolPolicy => (is => 'ro', isa => 'Str', required => 1);
  has OriginReadTimeout => (is => 'ro', isa => 'Int');
  has OriginSslProtocols => (is => 'ro', isa => 'Paws::CloudFront::OriginSslProtocols');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CustomOriginConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::CustomOriginConfig object:

  $service_obj->Method(Att1 => { HTTPPort => $value, ..., OriginSslProtocols => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::CustomOriginConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->HTTPPort

=head1 DESCRIPTION

A customer origin or an Amazon S3 bucket configured as a website
endpoint.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HTTPPort => Int

  The HTTP port the custom origin listens on.


=head2 B<REQUIRED> HTTPSPort => Int

  The HTTPS port the custom origin listens on.


=head2 OriginKeepaliveTimeout => Int

  You can create a custom keep-alive timeout. All timeout units are in
seconds. The default keep-alive timeout is 5 seconds, but you can
configure custom timeout lengths using the CloudFront API. The minimum
timeout length is 1 second; the maximum is 60 seconds.

If you need to increase the maximum time limit, contact the AWS Support
Center (https://console.aws.amazon.com/support/home#/).


=head2 B<REQUIRED> OriginProtocolPolicy => Str

  The origin protocol policy to apply to your origin.


=head2 OriginReadTimeout => Int

  You can create a custom origin read timeout. All timeout units are in
seconds. The default origin read timeout is 30 seconds, but you can
configure custom timeout lengths using the CloudFront API. The minimum
timeout length is 4 seconds; the maximum is 60 seconds.

If you need to increase the maximum time limit, contact the AWS Support
Center (https://console.aws.amazon.com/support/home#/).


=head2 OriginSslProtocols => L<Paws::CloudFront::OriginSslProtocols>

  The SSL/TLS protocols that you want CloudFront to use when
communicating with your origin over HTTPS.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

