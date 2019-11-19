
package Paws::IoT::CreateThing;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_AttributePayload/;
  has AttributePayload => (is => 'ro', isa => IoT_AttributePayload, predicate => 1);
  has BillingGroupName => (is => 'ro', isa => Str, predicate => 1);
  has ThingName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ThingTypeName => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateThing');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/things/{thingName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::CreateThingResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ThingName' => 'thingName'
                  },
  'types' => {
               'BillingGroupName' => {
                                       'type' => 'Str'
                                     },
               'ThingName' => {
                                'type' => 'Str'
                              },
               'ThingTypeName' => {
                                    'type' => 'Str'
                                  },
               'AttributePayload' => {
                                       'type' => 'IoT_AttributePayload',
                                       'class' => 'Paws::IoT::AttributePayload'
                                     }
             },
  'NameInRequest' => {
                       'AttributePayload' => 'attributePayload',
                       'ThingTypeName' => 'thingTypeName',
                       'BillingGroupName' => 'billingGroupName'
                     },
  'IsRequired' => {
                    'ThingName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateThing - Arguments for method CreateThing on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateThing on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateThing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateThing.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateThingResponse = $iot->CreateThing(
      ThingName        => 'MyThingName',
      AttributePayload => {
        Attributes => {
          'MyAttributeName' =>
            'MyAttributeValue',    # key: max: 128, value: max: 800
        },    # OPTIONAL
        Merge => 1,    # OPTIONAL
      },    # OPTIONAL
      BillingGroupName => 'MyBillingGroupName',    # OPTIONAL
      ThingTypeName    => 'MyThingTypeName',       # OPTIONAL
    );

    # Results:
    my $ThingArn  = $CreateThingResponse->ThingArn;
    my $ThingId   = $CreateThingResponse->ThingId;
    my $ThingName = $CreateThingResponse->ThingName;

    # Returns a L<Paws::IoT::CreateThingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateThing>

=head1 ATTRIBUTES


=head2 AttributePayload => IoT_AttributePayload

The attribute payload, which consists of up to three name/value pairs
in a JSON document. For example:

C<{\"attributes\":{\"string1\":\"string2\"}}>



=head2 BillingGroupName => Str

The name of the billing group the thing will be added to.



=head2 B<REQUIRED> ThingName => Str

The name of the thing to create.



=head2 ThingTypeName => Str

The name of the thing type associated with the new thing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateThing in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

