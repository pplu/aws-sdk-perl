package Paws::EC2::InstanceCount;
  use Moose;
  has InstanceCount => (is => 'ro', isa => 'Int', request_name => 'instanceCount', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceCount

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceCount object:

  $service_obj->Method(Att1 => { InstanceCount => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceCount object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceCount

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 InstanceCount => Int

  The number of listed Reserved Instances in the state specified by the
C<state>.


=head2 State => Str

  The states of the listed Reserved Instances.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
