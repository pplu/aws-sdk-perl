package Paws::DAX::ParameterGroupStatus;
  use Moose;
  has NodeIdsToReboot => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
  has ParameterGroupName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::ParameterGroupStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DAX::ParameterGroupStatus object:

  $service_obj->Method(Att1 => { NodeIdsToReboot => $value, ..., ParameterGroupName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DAX::ParameterGroupStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->NodeIdsToReboot

=head1 DESCRIPTION

The status of a parameter group.

=head1 ATTRIBUTES


=head2 NodeIdsToReboot => ArrayRef[Str|Undef]

  The node IDs of one or more nodes to be rebooted.


=head2 ParameterApplyStatus => Str

  The status of parameter updates.


=head2 ParameterGroupName => Str

  The name of the parameter group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

