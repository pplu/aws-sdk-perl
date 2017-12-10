package Paws::EMR::InstanceStatus;
  use Moose;
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Paws::EMR::InstanceStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Paws::EMR::InstanceTimeline');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::InstanceStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceStatus object:

  $service_obj->Method(Att1 => { State => $value, ..., Timeline => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->State

=head1 DESCRIPTION

The instance status details.

=head1 ATTRIBUTES


=head2 State => Str

  The current state of the instance.


=head2 StateChangeReason => L<Paws::EMR::InstanceStateChangeReason>

  The details of the status change reason for the instance.


=head2 Timeline => L<Paws::EMR::InstanceTimeline>

  The timeline of the instance status over time.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

