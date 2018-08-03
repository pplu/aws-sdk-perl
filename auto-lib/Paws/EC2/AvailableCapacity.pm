package Paws::EC2::AvailableCapacity;
  use Moose;
  has AvailableInstanceCapacity => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceCapacity]', request_name => 'availableInstanceCapacity', traits => ['NameInRequest']);
  has AvailableVCpus => (is => 'ro', isa => 'Int', request_name => 'availableVCpus', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AvailableCapacity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AvailableCapacity object:

  $service_obj->Method(Att1 => { AvailableInstanceCapacity => $value, ..., AvailableVCpus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AvailableCapacity object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailableInstanceCapacity

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailableInstanceCapacity => ArrayRef[L<Paws::EC2::InstanceCapacity>]

  The total number of instances supported by the Dedicated Host.


=head2 AvailableVCpus => Int

  The number of vCPUs available on the Dedicated Host.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
