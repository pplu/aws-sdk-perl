package Paws::ECS::ServiceRegistry;
  use Moose;
  has Port => (is => 'ro', isa => 'Int', request_name => 'port', traits => ['NameInRequest']);
  has RegistryArn => (is => 'ro', isa => 'Str', request_name => 'registryArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ServiceRegistry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::ServiceRegistry object:

  $service_obj->Method(Att1 => { Port => $value, ..., RegistryArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::ServiceRegistry object:

  $result = $service_obj->Method(...);
  $result->Att1->Port

=head1 DESCRIPTION

Details of the service registry.

=head1 ATTRIBUTES


=head2 Port => Int

  The port value used if your Service Discovery service specified an SRV
record.


=head2 RegistryArn => Str

  The Amazon Resource Name (ARN) of the Service Registry. The currently
supported service registry is Amazon Route 53 Auto Naming Service. For
more information, see Service
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_autonaming_Service.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

