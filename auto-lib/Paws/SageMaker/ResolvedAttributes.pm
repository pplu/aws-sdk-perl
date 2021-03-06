# Generated by default/object.tt
package Paws::SageMaker::ResolvedAttributes;
  use Moose;
  has AutoMLJobObjective => (is => 'ro', isa => 'Paws::SageMaker::AutoMLJobObjective');
  has CompletionCriteria => (is => 'ro', isa => 'Paws::SageMaker::AutoMLJobCompletionCriteria');
  has ProblemType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ResolvedAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ResolvedAttributes object:

  $service_obj->Method(Att1 => { AutoMLJobObjective => $value, ..., ProblemType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ResolvedAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoMLJobObjective

=head1 DESCRIPTION

The resolved attributes.

=head1 ATTRIBUTES


=head2 AutoMLJobObjective => L<Paws::SageMaker::AutoMLJobObjective>




=head2 CompletionCriteria => L<Paws::SageMaker::AutoMLJobCompletionCriteria>




=head2 ProblemType => Str

The problem type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

