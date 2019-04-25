package Paws::IoT::AbortCriteria;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', request_name => 'action', traits => ['NameInRequest'], required => 1);
  has FailureType => (is => 'ro', isa => 'Str', request_name => 'failureType', traits => ['NameInRequest'], required => 1);
  has MinNumberOfExecutedThings => (is => 'ro', isa => 'Int', request_name => 'minNumberOfExecutedThings', traits => ['NameInRequest'], required => 1);
  has ThresholdPercentage => (is => 'ro', isa => 'Num', request_name => 'thresholdPercentage', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AbortCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AbortCriteria object:

  $service_obj->Method(Att1 => { Action => $value, ..., ThresholdPercentage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AbortCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Details of abort criteria to define rules to abort the job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

  The type of abort action to initiate a job abort.


=head2 B<REQUIRED> FailureType => Str

  The type of job execution failure to define a rule to initiate a job
abort.


=head2 B<REQUIRED> MinNumberOfExecutedThings => Int

  Minimum number of executed things before evaluating an abort rule.


=head2 B<REQUIRED> ThresholdPercentage => Num

  The threshold as a percentage of the total number of executed things
that will initiate a job abort.

AWS IoT supports up to two digits after the decimal (for example, 10.9
and 10.99, but not 10.999).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

