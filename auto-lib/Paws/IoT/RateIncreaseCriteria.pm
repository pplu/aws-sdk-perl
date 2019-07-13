package Paws::IoT::RateIncreaseCriteria;
  use Moose;
  has NumberOfNotifiedThings => (is => 'ro', isa => 'Int', request_name => 'numberOfNotifiedThings', traits => ['NameInRequest']);
  has NumberOfSucceededThings => (is => 'ro', isa => 'Int', request_name => 'numberOfSucceededThings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RateIncreaseCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::RateIncreaseCriteria object:

  $service_obj->Method(Att1 => { NumberOfNotifiedThings => $value, ..., NumberOfSucceededThings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::RateIncreaseCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->NumberOfNotifiedThings

=head1 DESCRIPTION

Allows you to define a criteria to initiate the increase in rate of
rollout for a job.

=head1 ATTRIBUTES


=head2 NumberOfNotifiedThings => Int

  The threshold for number of notified things that will initiate the
increase in rate of rollout.


=head2 NumberOfSucceededThings => Int

  The threshold for number of succeeded things that will initiate the
increase in rate of rollout.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

