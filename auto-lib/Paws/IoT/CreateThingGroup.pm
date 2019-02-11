
package Paws::IoT::CreateThingGroup;
  use Moose;
  has ParentGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentGroupName');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has ThingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingGroupName', required => 1);
  has ThingGroupProperties => (is => 'ro', isa => 'Paws::IoT::ThingGroupProperties', traits => ['NameInRequest'], request_name => 'thingGroupProperties');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateThingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/thing-groups/{thingGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateThingGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateThingGroup - Arguments for method CreateThingGroup on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateThingGroup on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateThingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateThingGroup.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateThingGroupResponse = $iot->CreateThingGroup(
      ThingGroupName  => 'MyThingGroupName',
      ParentGroupName => 'MyThingGroupName',    # OPTIONAL
      Tags            => [
        {
          Key   => 'MyTagKey',                  # OPTIONAL
          Value => 'MyTagValue',                # OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
      ThingGroupProperties => {
        AttributePayload => {
          Attributes => {
            'MyAttributeName' =>
              'MyAttributeValue',               # key: max: 128, value: max: 800
          },    # OPTIONAL
          Merge => 1,    # OPTIONAL
        },    # OPTIONAL
        ThingGroupDescription =>
          'MyThingGroupDescription',    # max: 2028; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ThingGroupArn  = $CreateThingGroupResponse->ThingGroupArn;
    my $ThingGroupId   = $CreateThingGroupResponse->ThingGroupId;
    my $ThingGroupName = $CreateThingGroupResponse->ThingGroupName;

    # Returns a L<Paws::IoT::CreateThingGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateThingGroup>

=head1 ATTRIBUTES


=head2 ParentGroupName => Str

The name of the parent thing group.



=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata which can be used to manage the thing group.



=head2 B<REQUIRED> ThingGroupName => Str

The thing group name to create.



=head2 ThingGroupProperties => L<Paws::IoT::ThingGroupProperties>

The thing group properties.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateThingGroup in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

