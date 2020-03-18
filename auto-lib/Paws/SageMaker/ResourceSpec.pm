package Paws::SageMaker::ResourceSpec;
  use Moose;
  has EnvironmentArn => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ResourceSpec

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ResourceSpec object:

  $service_obj->Method(Att1 => { EnvironmentArn => $value, ..., InstanceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ResourceSpec object:

  $result = $service_obj->Method(...);
  $result->Att1->EnvironmentArn

=head1 DESCRIPTION

The instance type and quantity.

=head1 ATTRIBUTES


=head2 EnvironmentArn => Str

  The Amazon Resource Name (ARN) of the environment.


=head2 InstanceType => Str

  The instance type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

