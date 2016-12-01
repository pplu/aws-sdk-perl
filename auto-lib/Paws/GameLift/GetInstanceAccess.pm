
package Paws::GameLift::GetInstanceAccess;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstanceAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::GetInstanceAccessOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GetInstanceAccess - Arguments for method GetInstanceAccess on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInstanceAccess on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method GetInstanceAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInstanceAccess.

As an example:

  $service_obj->GetInstanceAccess(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

Unique identifier for a fleet. Specify the fleet that contain the
instance you want access to. The fleet can be in any of the following
statuses: ACTIVATING, ACTIVE, or ERROR. Fleets with an ERROR status can
be accessed for a few hours before being deleted.



=head2 B<REQUIRED> InstanceId => Str

Unique identifier for an instance. Specify the instance you want to get
access to. You can access an instance in any status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInstanceAccess in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

