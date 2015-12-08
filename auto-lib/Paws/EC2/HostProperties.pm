package Paws::EC2::HostProperties;
  use Moose;
  has Cores => (is => 'ro', isa => 'Int', xmlname => 'cores', traits => ['Unwrapped']);
  has InstanceType => (is => 'ro', isa => 'Str', xmlname => 'instanceType', traits => ['Unwrapped']);
  has Sockets => (is => 'ro', isa => 'Int', xmlname => 'sockets', traits => ['Unwrapped']);
  has TotalVCpus => (is => 'ro', isa => 'Int', xmlname => 'totalVCpus', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::HostProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::HostProperties object:

  $service_obj->Method(Att1 => { Cores => $value, ..., TotalVCpus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::HostProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->Cores

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Cores => Int

  The number of cores on the Dedicated host.


=head2 InstanceType => Str

  The instance type size that the Dedicated host supports (e.g.,
m3.medium).


=head2 Sockets => Int

  The number of sockets on the Dedicated host.


=head2 TotalVCpus => Int

  The number of vCPUs on the Dedicated host.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
