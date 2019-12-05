package Paws::SageMaker::TensorBoardAppSettings;
  use Moose;
  has DefaultResourceSpec => (is => 'ro', isa => 'Paws::SageMaker::ResourceSpec');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TensorBoardAppSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TensorBoardAppSettings object:

  $service_obj->Method(Att1 => { DefaultResourceSpec => $value, ..., DefaultResourceSpec => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TensorBoardAppSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultResourceSpec

=head1 DESCRIPTION

The TensorBoard app settings.

=head1 ATTRIBUTES


=head2 DefaultResourceSpec => L<Paws::SageMaker::ResourceSpec>

  The instance type and quantity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

