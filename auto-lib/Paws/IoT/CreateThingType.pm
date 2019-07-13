
package Paws::IoT::CreateThingType;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has ThingTypeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingTypeName', required => 1);
  has ThingTypeProperties => (is => 'ro', isa => 'Paws::IoT::ThingTypeProperties', traits => ['NameInRequest'], request_name => 'thingTypeProperties');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateThingType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/thing-types/{thingTypeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateThingTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateThingType - Arguments for method CreateThingType on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateThingType on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateThingType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateThingType.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateThingTypeResponse = $iot->CreateThingType(
      ThingTypeName => 'MyThingTypeName',
      Tags          => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],                            # OPTIONAL
      ThingTypeProperties => {
        SearchableAttributes => [
          'MyAttributeName', ...    # max: 128
        ],                          # OPTIONAL
        ThingTypeDescription => 'MyThingTypeDescription',  # max: 2028; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ThingTypeArn  = $CreateThingTypeResponse->ThingTypeArn;
    my $ThingTypeId   = $CreateThingTypeResponse->ThingTypeId;
    my $ThingTypeName = $CreateThingTypeResponse->ThingTypeName;

    # Returns a L<Paws::IoT::CreateThingTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateThingType>

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata which can be used to manage the thing type.



=head2 B<REQUIRED> ThingTypeName => Str

The name of the thing type.



=head2 ThingTypeProperties => L<Paws::IoT::ThingTypeProperties>

The ThingTypeProperties for the thing type to create. It contains
information about the new thing type including a description, and a
list of searchable thing attribute names.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateThingType in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

