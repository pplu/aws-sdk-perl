package Paws::Batch::ComputeEnvironmentOrder;
  use Moose;
  has ComputeEnvironment => (is => 'ro', isa => 'Str', request_name => 'computeEnvironment', traits => ['NameInRequest'], required => 1);
  has Order => (is => 'ro', isa => 'Int', request_name => 'order', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ComputeEnvironmentOrder

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::ComputeEnvironmentOrder object:

  $service_obj->Method(Att1 => { ComputeEnvironment => $value, ..., Order => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::ComputeEnvironmentOrder object:

  $result = $service_obj->Method(...);
  $result->Att1->ComputeEnvironment

=head1 DESCRIPTION

The order in which compute environments are tried for job placement
within a queue. Compute environments are tried in ascending order. For
example, if two compute environments are associated with a job queue,
the compute environment with a lower order integer value is tried for
job placement first.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeEnvironment => Str

  The Amazon Resource Name (ARN) of the compute environment.


=head2 B<REQUIRED> Order => Int

  The order of the compute environment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

