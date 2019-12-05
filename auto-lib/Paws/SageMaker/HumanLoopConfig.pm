package Paws::SageMaker::HumanLoopConfig;
  use Moose;
  has HumanTaskUiArn => (is => 'ro', isa => 'Str', required => 1);
  has PublicWorkforceTaskPrice => (is => 'ro', isa => 'Paws::SageMaker::PublicWorkforceTaskPrice');
  has TaskAvailabilityLifetimeInSeconds => (is => 'ro', isa => 'Int');
  has TaskCount => (is => 'ro', isa => 'Int', required => 1);
  has TaskDescription => (is => 'ro', isa => 'Str', required => 1);
  has TaskKeywords => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TaskTimeLimitInSeconds => (is => 'ro', isa => 'Int');
  has TaskTitle => (is => 'ro', isa => 'Str', required => 1);
  has WorkteamArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HumanLoopConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HumanLoopConfig object:

  $service_obj->Method(Att1 => { HumanTaskUiArn => $value, ..., WorkteamArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HumanLoopConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->HumanTaskUiArn

=head1 DESCRIPTION

Describes the work to be performed by human workers.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HumanTaskUiArn => Str

  The Amazon Resource Name (ARN) of the human task user interface.


=head2 PublicWorkforceTaskPrice => L<Paws::SageMaker::PublicWorkforceTaskPrice>

  


=head2 TaskAvailabilityLifetimeInSeconds => Int

  The length of time that a task remains available for labeling by human
workers.


=head2 B<REQUIRED> TaskCount => Int

  The number of human tasks.


=head2 B<REQUIRED> TaskDescription => Str

  A description for the human worker task.


=head2 TaskKeywords => ArrayRef[Str|Undef]

  Keywords used to describe the task so that workers can discover the
task.


=head2 TaskTimeLimitInSeconds => Int

  The amount of time that a worker has to complete a task.


=head2 B<REQUIRED> TaskTitle => Str

  A title for the human worker task.


=head2 B<REQUIRED> WorkteamArn => Str

  Amazon Resource Name (ARN) of a team of workers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

