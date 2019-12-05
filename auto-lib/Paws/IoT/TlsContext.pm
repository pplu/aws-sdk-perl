package Paws::IoT::TlsContext;
  use Moose;
  has ServerName => (is => 'ro', isa => 'Str', request_name => 'serverName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TlsContext

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::TlsContext object:

  $service_obj->Method(Att1 => { ServerName => $value, ..., ServerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::TlsContext object:

  $result = $service_obj->Method(...);
  $result->Att1->ServerName

=head1 DESCRIPTION

Specifies the TLS context to use for the test authorizer request.

=head1 ATTRIBUTES


=head2 ServerName => Str

  The value of the C<serverName> key in a TLS authorization request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

