
package Paws::IoT::DescribeThingResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw/IoT_Attributes/;
  has Attributes => (is => 'ro', isa => IoT_Attributes);
  has BillingGroupName => (is => 'ro', isa => Str);
  has DefaultClientId => (is => 'ro', isa => Str);
  has ThingArn => (is => 'ro', isa => Str);
  has ThingId => (is => 'ro', isa => Str);
  has ThingName => (is => 'ro', isa => Str);
  has ThingTypeName => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BillingGroupName' => {
                                       'type' => 'Str'
                                     },
               'DefaultClientId' => {
                                      'type' => 'Str'
                                    },
               'Version' => {
                              'type' => 'Int'
                            },
               'ThingId' => {
                              'type' => 'Str'
                            },
               'Attributes' => {
                                 'type' => 'IoT_Attributes',
                                 'class' => 'Paws::IoT::Attributes'
                               },
               'ThingName' => {
                                'type' => 'Str'
                              },
               'ThingArn' => {
                               'type' => 'Str'
                             },
               'ThingTypeName' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ThingId' => 'thingId',
                       'Version' => 'version',
                       'BillingGroupName' => 'billingGroupName',
                       'DefaultClientId' => 'defaultClientId',
                       'Attributes' => 'attributes',
                       'ThingArn' => 'thingArn',
                       'ThingName' => 'thingName',
                       'ThingTypeName' => 'thingTypeName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeThingResponse

=head1 ATTRIBUTES


=head2 Attributes => IoT_Attributes

The thing attributes.


=head2 BillingGroupName => Str

The name of the billing group the thing belongs to.


=head2 DefaultClientId => Str

The default client ID.


=head2 ThingArn => Str

The ARN of the thing to describe.


=head2 ThingId => Str

The ID of the thing to describe.


=head2 ThingName => Str

The name of the thing.


=head2 ThingTypeName => Str

The thing type name.


=head2 Version => Int

The current version of the thing record in the registry.

To avoid unintentional changes to the information in the registry, you
can pass the version information in the C<expectedVersion> parameter of
the C<UpdateThing> and C<DeleteThing> calls.


=head2 _request_id => Str


=cut

