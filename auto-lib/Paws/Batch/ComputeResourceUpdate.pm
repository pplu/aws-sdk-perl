package Paws::Batch::ComputeResourceUpdate;
  use Moose;
  has DesiredvCpus => (is => 'ro', isa => 'Int', request_name => 'desiredvCpus', traits => ['NameInRequest']);
  has MaxvCpus => (is => 'ro', isa => 'Int', request_name => 'maxvCpus', traits => ['NameInRequest']);
  has MinvCpus => (is => 'ro', isa => 'Int', request_name => 'minvCpus', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ComputeResourceUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::ComputeResourceUpdate object:

  $service_obj->Method(Att1 => { DesiredvCpus => $value, ..., MinvCpus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::ComputeResourceUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->DesiredvCpus

=head1 DESCRIPTION

An object representing the attributes of a compute environment that can
be updated.

=head1 ATTRIBUTES


=head2 DesiredvCpus => Int

  The desired number of EC2 vCPUS in the compute environment.


=head2 MaxvCpus => Int

  The maximum number of EC2 vCPUs that an environment can reach.


=head2 MinvCpus => Int

  The minimum number of EC2 vCPUs that an environment should maintain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

