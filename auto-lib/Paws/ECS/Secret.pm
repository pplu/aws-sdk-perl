package Paws::ECS::Secret;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has ValueFrom => (is => 'ro', isa => 'Str', request_name => 'valueFrom', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Secret

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Secret object:

  $service_obj->Method(Att1 => { Name => $value, ..., ValueFrom => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Secret object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

An object representing the secret to expose to your container. For more
information, see Specifying Sensitive Data
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html)
in the I<Amazon Elastic Container Service Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The value to set as the environment variable on the container.


=head2 B<REQUIRED> ValueFrom => Str

  The secret to expose to the container. If your task is using the EC2
launch type, then supported values are either the full ARN of the AWS
Secrets Manager secret or the full ARN of the parameter in the AWS
Systems Manager Parameter Store. If your task is using the Fargate
launch type, then the only supported value is the full ARN of the
parameter in the AWS Systems Manager Parameter Store.

If the AWS Systems Manager Parameter Store parameter exists in the same
Region as the task you are launching, then you can use either the full
ARN or name of the parameter. If the parameter exists in a different
Region, then the full ARN must be specified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

