package Paws::ApiGateway::MethodSnapshot;
  use Moose;
  has ApiKeyRequired => (is => 'ro', isa => 'Bool', request_name => 'apiKeyRequired', traits => ['NameInRequest']);
  has AuthorizationType => (is => 'ro', isa => 'Str', request_name => 'authorizationType', traits => ['NameInRequest']);
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

  The method's authorization type. Valid values are C<NONE> for open
access, C<AWS_IAM> for using AWS IAM permissions, C<CUSTOM> for using a
custom authorizer, or C<COGNITO_USER_POOLS> for using a Cognito user
pool.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

