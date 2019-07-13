package Paws::SageMaker::CategoricalParameterRangeSpecification;
  use Moose;
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CategoricalParameterRangeSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::CategoricalParameterRangeSpecification object:

  $service_obj->Method(Att1 => { Values => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::CategoricalParameterRangeSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->Values

=head1 DESCRIPTION

Defines the possible values for a categorical hyperparameter.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

  The allowed categories for the hyperparameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

