package Paws::SageMaker::TrialComponentSourceDetail;
  use Moose;
  has SourceArn => (is => 'ro', isa => 'Str');
  has TrainingJob => (is => 'ro', isa => 'Paws::SageMaker::TrainingJob');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TrialComponentSourceDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TrialComponentSourceDetail object:

  $service_obj->Method(Att1 => { SourceArn => $value, ..., TrainingJob => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TrialComponentSourceDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->SourceArn

=head1 DESCRIPTION

Detailed information about the source of a trial component.

=head1 ATTRIBUTES


=head2 SourceArn => Str

  The Amazon Resource Name (ARN) of the source.


=head2 TrainingJob => L<Paws::SageMaker::TrainingJob>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

