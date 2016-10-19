package Paws::CloudFront::Headers;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'Name', traits => ['NameInRequest']);
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::Headers

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::Headers object:

  $service_obj->Method(Att1 => { Items => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::Headers object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

=head1 DESCRIPTION

A complex type that specifies the headers that you want CloudFront to
forward to the origin for this cache behavior. For the headers that you
specify, CloudFront also caches separate versions of a given object
based on the header values in viewer requests; this is known as varying
on headers. For example, suppose viewer requests for logo.jpg contain a
custom Product header that has a value of either Acme or Apex, and you
configure CloudFront to vary on the Product header. CloudFront forwards
the Product header to the origin and caches the response from the
origin once for each header value.

=head1 ATTRIBUTES


=head2 Items => ArrayRef[Str|Undef]

  Optional: A complex type that contains a Name element for each header
that you want CloudFront to forward to the origin and to vary on for
this cache behavior. If Quantity is 0, omit Items.


=head2 B<REQUIRED> Quantity => Int

  The number of different headers that you want CloudFront to forward to
the origin and to vary on for this cache behavior. The maximum number
of headers that you can specify by name is 10. If you want CloudFront
to forward all headers to the origin and vary on all of them, specify 1
for Quantity and * for Name. If you don't want CloudFront to forward
any additional headers to the origin or to vary on any headers, specify
0 for Quantity and omit Items.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

