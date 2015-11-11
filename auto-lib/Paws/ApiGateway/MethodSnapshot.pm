package Paws::ApiGateway::MethodSnapshot;
  use Moose;
  has ApiKeyRequired => (is => 'ro', isa => 'Bool', xmlname => 'apiKeyRequired', request_name => 'apiKeyRequired', traits => ['Unwrapped','NameInRequest']);
  has AuthorizationType => (is => 'ro', isa => 'Str', xmlname => 'authorizationType', request_name => 'authorizationType', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::MethodSnapshot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGateway::MethodSnapshot object:

  $service_obj->Method(Att1 => { ApiKeyRequired => $value, ..., AuthorizationType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGateway::MethodSnapshot object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiKeyRequired

=head1 DESCRIPTION

Represents a summary of a Method resource, given a particular date and
time.

=head1 ATTRIBUTES


=head2 ApiKeyRequired => Bool

  Specifies whether the method requires a valid ApiKey.


=head2 AuthorizationType => Str

  Specifies the type of authorization used for the method.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

