package Paws::SageMaker::AlgorithmSummary;
  use Moose;
  has AlgorithmArn => (is => 'ro', isa => 'Str', required => 1);
  has AlgorithmDescription => (is => 'ro', isa => 'Str');
  has AlgorithmName => (is => 'ro', isa => 'Str', required => 1);
  has AlgorithmStatus => (is => 'ro', isa => 'Str', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AlgorithmSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AlgorithmSummary object:

  $service_obj->Method(Att1 => { AlgorithmArn => $value, ..., CreationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AlgorithmSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AlgorithmArn

=head1 DESCRIPTION

Provides summary information about an algorithm.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmArn => Str

  The Amazon Resource Name (ARN) of the algorithm.


=head2 AlgorithmDescription => Str

  A brief description of the algorithm.


=head2 B<REQUIRED> AlgorithmName => Str

  The name of the algorithm that is described by the summary.


=head2 B<REQUIRED> AlgorithmStatus => Str

  The overall status of the algorithm.


=head2 B<REQUIRED> CreationTime => Str

  A timestamp that shows when the algorithm was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

