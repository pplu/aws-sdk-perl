package Paws::ELBv2::RedirectActionConfig;
  use Moose;
  has Host => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str');
  has Query => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::RedirectActionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::RedirectActionConfig object:

  $service_obj->Method(Att1 => { Host => $value, ..., StatusCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::RedirectActionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Host

=head1 DESCRIPTION

Information about a redirect action.

A URI consists of the following components:
protocol://hostname:port/path?query. You must modify at least one of
the following components to avoid a redirect loop: protocol, hostname,
port, or path. Any components that you do not modify retain their
original values.

You can reuse URI components using the following reserved keywords:

=over

=item *



=item *



=item *



=item *



=item *



=back

For example, you can change the path to "/new/#{path}", the hostname to
"example.#{host}", or the query to "#{query}&value=xyz".

=head1 ATTRIBUTES


=head2 Host => Str

  The hostname. This component is not percent-encoded. The hostname can
contain #{host}.


=head2 Path => Str

  The absolute path, starting with the leading "/". This component is not
percent-encoded. The path can contain #{host}, #{path}, and #{port}.


=head2 Port => Str

  The port. You can specify a value from 1 to 65535 or #{port}.


=head2 Protocol => Str

  The protocol. You can specify HTTP, HTTPS, or #{protocol}. You can
redirect HTTP to HTTP, HTTP to HTTPS, and HTTPS to HTTPS. You cannot
redirect HTTPS to HTTP.


=head2 Query => Str

  The query parameters, URL-encoded when necessary, but not
percent-encoded. Do not include the leading "?", as it is automatically
added. You can specify any of the reserved keywords.


=head2 B<REQUIRED> StatusCode => Str

  The HTTP redirect code. The redirect is either permanent (HTTP 301) or
temporary (HTTP 302).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

