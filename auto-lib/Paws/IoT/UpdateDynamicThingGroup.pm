
package Paws::IoT::UpdateDynamicThingGroup;
  use Moose;
  has ExpectedVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'expectedVersion');
  has IndexName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexName');
  has QueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryString');
  has QueryVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryVersion');
  has ThingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingGroupName', required => 1);
  has ThingGroupProperties => (is => 'ro', isa => 'Paws::IoT::ThingGroupProperties', traits => ['NameInRequest'], request_name => 'thingGroupProperties', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDynamicThingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dynamic-thing-groups/{thingGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateDynamicThingGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateDynamicThingGroup - Arguments for method UpdateDynamicThingGroup on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDynamicThingGroup on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateDynamicThingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDynamicThingGroup.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateDynamicThingGroupResponse = $iot->UpdateDynamicThingGroup(
      ThingGroupName       => 'MyThingGroupName',
      ThingGroupProperties => {
        AttributePayload => {
          Attributes => {
            'MyAttributeName' =>
              'MyAttributeValue',    # key: max: 128, value: max: 800
          },    # OPTIONAL
          Merge => 1,    # OPTIONAL
        },    # OPTIONAL
        ThingGroupDescription =>
          'MyThingGroupDescription',    # max: 2028; OPTIONAL
      },
      ExpectedVersion => 1,                   # OPTIONAL
      IndexName       => 'MyIndexName',       # OPTIONAL
      QueryString     => 'MyQueryString',     # OPTIONAL
      QueryVersion    => 'MyQueryVersion',    # OPTIONAL
    );

    # Results:
    my $Version = $UpdateDynamicThingGroupResponse->Version;

    # Returns a L<Paws::IoT::UpdateDynamicThingGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateDynamicThingGroup>

=head1 ATTRIBUTES


=head2 ExpectedVersion => Int

The expected version of the dynamic thing group to update.



=head2 IndexName => Str

The dynamic thing group index to update.

Currently one index is supported: 'AWS_Things'.



=head2 QueryString => Str

The dynamic thing group search query string to update.



=head2 QueryVersion => Str

The dynamic thing group query version to update.

Currently one query version is supported: "2017-09-30". If not
specified, the query version defaults to this value.



=head2 B<REQUIRED> ThingGroupName => Str

The name of the dynamic thing group to update.



=head2 B<REQUIRED> ThingGroupProperties => L<Paws::IoT::ThingGroupProperties>

The dynamic thing group properties to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDynamicThingGroup in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

