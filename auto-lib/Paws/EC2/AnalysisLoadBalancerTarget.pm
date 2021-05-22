package Paws::EC2::AnalysisLoadBalancerTarget;
  use Moose;
  has Address => (is => 'ro', isa => 'Str', request_name => 'address', traits => ['NameInRequest']);
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has Instance => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'instance', traits => ['NameInRequest']);
  has Port => (is => 'ro', isa => 'Int', request_name => 'port', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AnalysisLoadBalancerTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AnalysisLoadBalancerTarget object:

  $service_obj->Method(Att1 => { Address => $value, ..., Port => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AnalysisLoadBalancerTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Address => Str

The IP address.


=head2 AvailabilityZone => Str

The Availability Zone.


=head2 Instance => L<Paws::EC2::AnalysisComponent>

Information about the instance.


=head2 Port => Int

The port on which the target is listening.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
