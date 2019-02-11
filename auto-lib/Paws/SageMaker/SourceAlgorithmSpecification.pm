package Paws::SageMaker::SourceAlgorithmSpecification;
  use Moose;
  has SourceAlgorithms => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::SourceAlgorithm]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SourceAlgorithmSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::SourceAlgorithmSpecification object:

  $service_obj->Method(Att1 => { SourceAlgorithms => $value, ..., SourceAlgorithms => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::SourceAlgorithmSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->SourceAlgorithms

=head1 DESCRIPTION

A list of algorithms that were used to create a model package.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceAlgorithms => ArrayRef[L<Paws::SageMaker::SourceAlgorithm>]

  A list of the algorithms that were used to create a model package.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

