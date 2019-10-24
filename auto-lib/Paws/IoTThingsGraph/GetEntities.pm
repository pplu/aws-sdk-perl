# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::GetEntities;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int/;
  use Paws::IoTThingsGraph::Types qw//;
  has Ids => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has NamespaceVersion => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetEntities');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::GetEntitiesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Ids' => {
                          'type' => 'ArrayRef[Str|Undef]'
                        },
               'NamespaceVersion' => {
                                       'type' => 'Int'
                                     }
             },
  'NameInRequest' => {
                       'Ids' => 'ids',
                       'NamespaceVersion' => 'namespaceVersion'
                     },
  'IsRequired' => {
                    'Ids' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetEntities - Arguments for method GetEntities on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEntities on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method GetEntities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEntities.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $GetEntitiesResponse = $iotthingsgraph->GetEntities(
      Ids => [
        'MyUrn', ...    # max: 160
      ],
      NamespaceVersion => 1,    # OPTIONAL
    );

    # Results:
    my $Descriptions = $GetEntitiesResponse->Descriptions;

    # Returns a L<Paws::IoTThingsGraph::GetEntitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/GetEntities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ids => ArrayRef[Str|Undef]

An array of entity IDs.

The IDs should be in the following format.

C<urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME>



=head2 NamespaceVersion => Int

The version of the user's namespace. Defaults to the latest version of
the user's namespace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEntities in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

