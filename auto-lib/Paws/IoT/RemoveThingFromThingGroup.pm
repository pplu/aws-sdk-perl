
package Paws::IoT::RemoveThingFromThingGroup;
  use Moose;
  has ThingArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingArn');
  has ThingGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingGroupArn');
  has ThingGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingGroupName');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveThingFromThingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/thing-groups/removeThingFromThingGroup');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::RemoveThingFromThingGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RemoveThingFromThingGroup - Arguments for method RemoveThingFromThingGroup on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveThingFromThingGroup on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method RemoveThingFromThingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveThingFromThingGroup.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $RemoveThingFromThingGroupResponse = $iot->RemoveThingFromThingGroup(
      ThingArn       => 'MyThingArn',          # OPTIONAL
      ThingGroupArn  => 'MyThingGroupArn',     # OPTIONAL
      ThingGroupName => 'MyThingGroupName',    # OPTIONAL
      ThingName      => 'MyThingName',         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/RemoveThingFromThingGroup>

=head1 ATTRIBUTES


=head2 ThingArn => Str

The ARN of the thing to remove from the group.



=head2 ThingGroupArn => Str

The group ARN.



=head2 ThingGroupName => Str

The group name.



=head2 ThingName => Str

The name of the thing to remove from the group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveThingFromThingGroup in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

