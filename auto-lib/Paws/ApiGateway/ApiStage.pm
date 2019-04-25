package Paws::ApiGateway::ApiStage;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', request_name => 'apiId', traits => ['NameInRequest']);
  has Stage => (is => 'ro', isa => 'Str', request_name => 'stage', traits => ['NameInRequest']);
  has Throttle => (is => 'ro', isa => 'Paws::ApiGateway::MapOfApiStageThrottleSettings', request_name => 'throttle', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ApiStage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGateway::ApiStage object:

  $service_obj->Method(Att1 => { ApiId => $value, ..., Throttle => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGateway::ApiStage object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiId

=head1 DESCRIPTION

API stage name of the associated API stage in a usage plan.

=head1 ATTRIBUTES


=head2 ApiId => Str

  API Id of the associated API stage in a usage plan.


=head2 Stage => Str

  API stage name of the associated API stage in a usage plan.


=head2 Throttle => L<Paws::ApiGateway::MapOfApiStageThrottleSettings>

  Map containing method level throttling information for API stage in a
usage plan.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

