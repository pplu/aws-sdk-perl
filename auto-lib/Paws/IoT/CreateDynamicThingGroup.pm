
package Paws::IoT::CreateDynamicThingGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_Tag IoT_ThingGroupProperties/;
  has IndexName => (is => 'ro', isa => Str, predicate => 1);
  has QueryString => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has QueryVersion => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[IoT_Tag], predicate => 1);
  has ThingGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ThingGroupProperties => (is => 'ro', isa => IoT_ThingGroupProperties, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDynamicThingGroup');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/dynamic-thing-groups/{thingGroupName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::CreateDynamicThingGroupResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'QueryVersion' => {
                                   'type' => 'Str'
                                 },
               'IndexName' => {
                                'type' => 'Str'
                              },
               'ThingGroupName' => {
                                     'type' => 'Str'
                                   },
               'ThingGroupProperties' => {
                                           'class' => 'Paws::IoT::ThingGroupProperties',
                                           'type' => 'IoT_ThingGroupProperties'
                                         },
               'Tags' => {
                           'class' => 'Paws::IoT::Tag',
                           'type' => 'ArrayRef[IoT_Tag]'
                         },
               'QueryString' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInURI' => {
                    'ThingGroupName' => 'thingGroupName'
                  },
  'NameInRequest' => {
                       'QueryVersion' => 'queryVersion',
                       'IndexName' => 'indexName',
                       'ThingGroupProperties' => 'thingGroupProperties',
                       'Tags' => 'tags',
                       'QueryString' => 'queryString'
                     },
  'IsRequired' => {
                    'ThingGroupName' => 1,
                    'QueryString' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateDynamicThingGroup - Arguments for method CreateDynamicThingGroup on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDynamicThingGroup on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateDynamicThingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDynamicThingGroup.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateDynamicThingGroupResponse = $iot->CreateDynamicThingGroup(
      QueryString    => 'MyQueryString',
      ThingGroupName => 'MyThingGroupName',
      IndexName      => 'MyIndexName',        # OPTIONAL
      QueryVersion   => 'MyQueryVersion',     # OPTIONAL
      Tags           => [
        {
          Key   => 'MyTagKey',                # OPTIONAL
          Value => 'MyTagValue',              # OPTIONAL
        },
        ...
      ],                                      # OPTIONAL
      ThingGroupProperties => {
        AttributePayload => {
          Attributes => {
            'MyAttributeName' =>
              'MyAttributeValue',             # key: max: 128, value: max: 800
          },    # OPTIONAL
          Merge => 1,    # OPTIONAL
        },    # OPTIONAL
        ThingGroupDescription =>
          'MyThingGroupDescription',    # max: 2028; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $IndexName      = $CreateDynamicThingGroupResponse->IndexName;
    my $QueryString    = $CreateDynamicThingGroupResponse->QueryString;
    my $QueryVersion   = $CreateDynamicThingGroupResponse->QueryVersion;
    my $ThingGroupArn  = $CreateDynamicThingGroupResponse->ThingGroupArn;
    my $ThingGroupId   = $CreateDynamicThingGroupResponse->ThingGroupId;
    my $ThingGroupName = $CreateDynamicThingGroupResponse->ThingGroupName;

    # Returns a L<Paws::IoT::CreateDynamicThingGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateDynamicThingGroup>

=head1 ATTRIBUTES


=head2 IndexName => Str

The dynamic thing group index name.

Currently one index is supported: "AWS_Things".



=head2 B<REQUIRED> QueryString => Str

The dynamic thing group search query string.

See Query Syntax
(https://docs.aws.amazon.com/iot/latest/developerguide/query-syntax.html)
for information about query string syntax.



=head2 QueryVersion => Str

The dynamic thing group query version.

Currently one query version is supported: "2017-09-30". If not
specified, the query version defaults to this value.



=head2 Tags => ArrayRef[IoT_Tag]

Metadata which can be used to manage the dynamic thing group.



=head2 B<REQUIRED> ThingGroupName => Str

The dynamic thing group name to create.



=head2 ThingGroupProperties => IoT_ThingGroupProperties

The dynamic thing group properties.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDynamicThingGroup in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

