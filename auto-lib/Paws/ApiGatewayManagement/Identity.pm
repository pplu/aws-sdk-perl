package Paws::ApiGatewayManagement::Identity;
  use Moose;
  has SourceIp => (is => 'ro', isa => 'Str', request_name => 'sourceIp', traits => ['NameInRequest'], required => 1);
  has UserAgent => (is => 'ro', isa => 'Str', request_name => 'userAgent', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayManagement::Identity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayManagement::Identity object:

  $service_obj->Method(Att1 => { SourceIp => $value, ..., UserAgent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayManagement::Identity object:

  $result = $service_obj->Method(...);
  $result->Att1->SourceIp

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceIp => Str

  The source IP address of the TCP connection making the request to API
Gateway.


=head2 B<REQUIRED> UserAgent => Str

  The User Agent of the API caller.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayManagement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

