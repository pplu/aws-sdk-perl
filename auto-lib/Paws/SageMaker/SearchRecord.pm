package Paws::SageMaker::SearchRecord;
  use Moose;
  has Experiment => (is => 'ro', isa => 'Paws::SageMaker::Experiment');
  has TrainingJob => (is => 'ro', isa => 'Paws::SageMaker::TrainingJob');
  has Trial => (is => 'ro', isa => 'Paws::SageMaker::Trial');
  has TrialComponent => (is => 'ro', isa => 'Paws::SageMaker::TrialComponent');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SearchRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::SearchRecord object:

  $service_obj->Method(Att1 => { Experiment => $value, ..., TrialComponent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::SearchRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->Experiment

=head1 DESCRIPTION

An individual search result record that contains a single resource
object.

=head1 ATTRIBUTES


=head2 Experiment => L<Paws::SageMaker::Experiment>

  A summary of the properties of an experiment.


=head2 TrainingJob => L<Paws::SageMaker::TrainingJob>

  A C<TrainingJob> object that is returned as part of a C<Search>
request.


=head2 Trial => L<Paws::SageMaker::Trial>

  A summary of the properties of a trial.


=head2 TrialComponent => L<Paws::SageMaker::TrialComponent>

  A summary of the properties of a trial component.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

