package Paws::DAX::Parameter;
  use Moose;
  has AllowedValues => (is => 'ro', isa => 'Str');
  has ChangeType => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Str');
  has NodeTypeSpecificValues => (is => 'ro', isa => 'ArrayRef[Paws::DAX::NodeTypeSpecificValue]');
  has ParameterName => (is => 'ro', isa => 'Str');
  has ParameterType => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::Parameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DAX::Parameter object:

  $service_obj->Method(Att1 => { AllowedValues => $value, ..., Source => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DAX::Parameter object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedValues

=head1 DESCRIPTION

Describes an individual setting that controls some aspect of DAX
behavior.

=head1 ATTRIBUTES


=head2 AllowedValues => Str

  A range of values within which the parameter can be set.


=head2 ChangeType => Str

  The conditions under which changes to this parameter can be applied.
For example, C<requires-reboot> indicates that a new value for this
parameter will only take effect if a node is rebooted.


=head2 DataType => Str

  The data type of the parameter. For example, C<integer>:


=head2 Description => Str

  A description of the parameter


=head2 IsModifiable => Str

  Whether the customer is allowed to modify the parameter.


=head2 NodeTypeSpecificValues => ArrayRef[L<Paws::DAX::NodeTypeSpecificValue>]

  A list of node types, and specific parameter values for each node.


=head2 ParameterName => Str

  The name of the parameter.


=head2 ParameterType => Str

  Determines whether the parameter can be applied to any nodes, or only
nodes of a particular type.


=head2 ParameterValue => Str

  The value for the parameter.


=head2 Source => Str

  How the parameter is defined. For example, C<system> denotes a
system-defined parameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

