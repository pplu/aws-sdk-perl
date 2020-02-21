package Paws::Robomaker::FailedCreateSimulationJobRequest;
  use Moose;
  has FailedAt => (is => 'ro', isa => 'Str', request_name => 'failedAt', traits => ['NameInRequest']);
  has FailureCode => (is => 'ro', isa => 'Str', request_name => 'failureCode', traits => ['NameInRequest']);
  has FailureReason => (is => 'ro', isa => 'Str', request_name => 'failureReason', traits => ['NameInRequest']);
  has Request => (is => 'ro', isa => 'Paws::Robomaker::SimulationJobRequest', request_name => 'request', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::FailedCreateSimulationJobRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::FailedCreateSimulationJobRequest object:

  $service_obj->Method(Att1 => { FailedAt => $value, ..., Request => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::FailedCreateSimulationJobRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->FailedAt

=head1 DESCRIPTION

Information about a failed create simulation job request.

=head1 ATTRIBUTES


=head2 FailedAt => Str

  The time, in milliseconds since the epoch, when the simulation job
batch failed.


=head2 FailureCode => Str

  The failure code.


=head2 FailureReason => Str

  The failure reason of the simulation job request.


=head2 Request => L<Paws::Robomaker::SimulationJobRequest>

  The simulation job request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

