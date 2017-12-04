package Paws::CloudFront::OriginSslProtocols;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'SslProtocol', traits => ['NameInRequest'], required => 1);
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::OriginSslProtocols

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::OriginSslProtocols object:

  $service_obj->Method(Att1 => { Items => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::OriginSslProtocols object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

=head1 DESCRIPTION

A complex type that contains information about the SSL/TLS protocols
that CloudFront can use when establishing an HTTPS connection with your
origin.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[Str|Undef]

  A list that contains allowed SSL/TLS protocols for this distribution.


=head2 B<REQUIRED> Quantity => Int

  The number of SSL/TLS protocols that you want to allow CloudFront to
use when establishing an HTTPS connection with this origin.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

