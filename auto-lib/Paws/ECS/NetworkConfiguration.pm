package Paws::ECS::NetworkConfiguration;
  use Moose;
  has AwsvpcConfiguration => (is => 'ro', isa => 'Paws::ECS::AwsVpcConfiguration', request_name => 'awsvpcConfiguration', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::NetworkConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::NetworkConfiguration object:

  $service_obj->Method(Att1 => { AwsvpcConfiguration => $value, ..., AwsvpcConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::NetworkConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsvpcConfiguration

=head1 DESCRIPTION

An object representing the network configuration for a task or service.

=head1 ATTRIBUTES


=head2 AwsvpcConfiguration => L<Paws::ECS::AwsVpcConfiguration>

  The VPC subnets and security groups associated with a task.

All specified subnets and security groups must be from the same VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

