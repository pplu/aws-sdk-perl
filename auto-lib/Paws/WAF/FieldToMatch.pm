package Paws::WAF::FieldToMatch;
  use Moose;
  has Data => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::FieldToMatch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::FieldToMatch object:

  $service_obj->Method(Att1 => { Data => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::FieldToMatch object:

  $result = $service_obj->Method(...);
  $result->Att1->Data

=head1 DESCRIPTION

Specifies where in a web request to look for C<TargetString>.

=head1 ATTRIBUTES


=head2 Data => Str

  When the value of C<Type> is C<HEADER>, enter the name of the header
that you want AWS WAF to search, for example, C<User-Agent> or
C<Referer>. The name of the header is not case sensitive.

When the value of C<Type> is C<SINGLE_QUERY_ARG>, enter the name of the
parameter that you want AWS WAF to search, for example, C<UserName> or
C<SalesRegion>. The parameter name is not case sensitive.

If the value of C<Type> is any other value, omit C<Data>.


=head2 B<REQUIRED> Type => Str

  The part of the web request that you want AWS WAF to search for a
specified string. Parts of a request that you can search include the
following:

=over

=item *

C<HEADER>: A specified request header, for example, the value of the
C<User-Agent> or C<Referer> header. If you choose C<HEADER> for the
type, specify the name of the header in C<Data>.

=item *

C<METHOD>: The HTTP method, which indicated the type of operation that
the request is asking the origin to perform. Amazon CloudFront supports
the following methods: C<DELETE>, C<GET>, C<HEAD>, C<OPTIONS>,
C<PATCH>, C<POST>, and C<PUT>.

=item *

C<QUERY_STRING>: A query string, which is the part of a URL that
appears after a C<?> character, if any.

=item *

C<URI>: The part of a web request that identifies a resource, for
example, C</images/daily-ad.jpg>.

=item *

C<BODY>: The part of a request that contains any additional data that
you want to send to your web server as the HTTP request body, such as
data from a form. The request body immediately follows the request
headers. Note that only the first C<8192> bytes of the request body are
forwarded to AWS WAF for inspection. To allow or block requests based
on the length of the body, you can create a size constraint set. For
more information, see CreateSizeConstraintSet.

=item *

C<SINGLE_QUERY_ARG>: The parameter in the query string that you will
inspect, such as I<UserName> or I<SalesRegion>. The maximum length for
C<SINGLE_QUERY_ARG> is 30 characters.

=item *

C<ALL_QUERY_ARGS>: Similar to C<SINGLE_QUERY_ARG>, but rather than
inspecting a single parameter, AWS WAF will inspect all parameters
within the query for the value or regex pattern that you specify in
C<TargetString>.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

