package Paws::SSM::ProgressCounters;
  use Moose;
  has CancelledSteps => (is => 'ro', isa => 'Int');
  has FailedSteps => (is => 'ro', isa => 'Int');
  has SuccessSteps => (is => 'ro', isa => 'Int');
  has TimedOutSteps => (is => 'ro', isa => 'Int');
  has TotalSteps => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ProgressCounters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ProgressCounters object:

  $service_obj->Method(Att1 => { CancelledSteps => $value, ..., TotalSteps => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ProgressCounters object:

  $result = $service_obj->Method(...);
  $result->Att1->CancelledSteps

=head1 DESCRIPTION

An aggregate of step execution statuses displayed in the AWS Console
for a multi-Region and multi-account Automation execution.

=head1 ATTRIBUTES


=head2 CancelledSteps => Int

  The total number of steps that the system cancelled in all specified
AWS Regions and accounts for the current Automation execution.


=head2 FailedSteps => Int

  The total number of steps that failed to execute in all specified AWS
Regions and accounts for the current Automation execution.


=head2 SuccessSteps => Int

  The total number of steps that successfully completed in all specified
AWS Regions and accounts for the current Automation execution.


=head2 TimedOutSteps => Int

  The total number of steps that timed out in all specified AWS Regions
and accounts for the current Automation execution.


=head2 TotalSteps => Int

  The total number of steps executed in all specified AWS Regions and
accounts for the current Automation execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

