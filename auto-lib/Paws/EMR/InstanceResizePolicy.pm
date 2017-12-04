package Paws::EMR::InstanceResizePolicy;
  use Moose;
  has InstancesToProtect => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has InstancesToTerminate => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has InstanceTerminationTimeout => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::InstanceResizePolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceResizePolicy object:

  $service_obj->Method(Att1 => { InstancesToProtect => $value, ..., InstanceTerminationTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceResizePolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->InstancesToProtect

=head1 DESCRIPTION

Custom policy for requesting termination protection or termination of
specific instances when shrinking an instance group.

=head1 ATTRIBUTES


=head2 InstancesToProtect => ArrayRef[Str|Undef]

  Specific list of instances to be protected when shrinking an instance
group.


=head2 InstancesToTerminate => ArrayRef[Str|Undef]

  Specific list of instances to be terminated when shrinking an instance
group.


=head2 InstanceTerminationTimeout => Int

  Decommissioning timeout override for the specific list of instances to
be terminated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

