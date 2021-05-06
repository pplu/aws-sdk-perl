
package Paws::IoT::AddThingToThingGroup;
  use Moose;
  has OverrideDynamicGroups => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'overrideDynamicGroups');
  has ThingArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingArn');
  has ThingGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingGroupArn');
  has ThingGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingGroupName');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddThingToThingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/thing-groups/addThingToThingGroup');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::AddThingToThingGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AddThingToThingGroup - Arguments for method AddThingToThingGroup on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddThingToThingGroup on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method AddThingToThingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddThingToThingGroup.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $AddThingToThingGroupResponse = $iot->AddThingToThingGroup(
      OverrideDynamicGroups => 1,                     # OPTIONAL
      ThingArn              => 'MyThingArn',          # OPTIONAL
      ThingGroupArn         => 'MyThingGroupArn',     # OPTIONAL
      ThingGroupName        => 'MyThingGroupName',    # OPTIONAL
      ThingName             => 'MyThingName',         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/AddThingToThingGroup>

=head1 ATTRIBUTES


=head2 OverrideDynamicGroups => Bool

Override dynamic thing groups with static thing groups when 10-group
limit is reached. If a thing belongs to 10 thing groups, and one or
more of those groups are dynamic thing groups, adding a thing to a
static group removes the thing from the last dynamic group.



=head2 ThingArn => Str

The ARN of the thing to add to a group.



=head2 ThingGroupArn => Str

The ARN of the group to which you are adding a thing.



=head2 ThingGroupName => Str

The name of the group to which you are adding a thing.



=head2 ThingName => Str

The name of the thing to add to a group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddThingToThingGroup in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

