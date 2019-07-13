package Paws::SageMaker::LabelCountersForWorkteam;
  use Moose;
  has HumanLabeled => (is => 'ro', isa => 'Int');
  has PendingHuman => (is => 'ro', isa => 'Int');
  has Total => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::LabelCountersForWorkteam

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::LabelCountersForWorkteam object:

  $service_obj->Method(Att1 => { HumanLabeled => $value, ..., Total => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::LabelCountersForWorkteam object:

  $result = $service_obj->Method(...);
  $result->Att1->HumanLabeled

=head1 DESCRIPTION

Provides counts for human-labeled tasks in the labeling job.

=head1 ATTRIBUTES


=head2 HumanLabeled => Int

  The total number of data objects labeled by a human worker.


=head2 PendingHuman => Int

  The total number of data objects that need to be labeled by a human
worker.


=head2 Total => Int

  The total number of tasks in the labeling job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

