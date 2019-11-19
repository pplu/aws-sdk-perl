
package Paws::IoTEvents::UpdateInput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw/IoTEvents_InputDefinition/;
  has InputDefinition => (is => 'ro', isa => IoTEvents_InputDefinition, required => 1, predicate => 1);
  has InputDescription => (is => 'ro', isa => Str, predicate => 1);
  has InputName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateInput');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/inputs/{inputName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTEvents::UpdateInputResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'InputName' => 'inputName'
                  },
  'types' => {
               'InputDescription' => {
                                       'type' => 'Str'
                                     },
               'InputDefinition' => {
                                      'class' => 'Paws::IoTEvents::InputDefinition',
                                      'type' => 'IoTEvents_InputDefinition'
                                    },
               'InputName' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'InputDefinition' => 'inputDefinition',
                       'InputDescription' => 'inputDescription'
                     },
  'IsRequired' => {
                    'InputDefinition' => 1,
                    'InputName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::UpdateInput - Arguments for method UpdateInput on L<Paws::IoTEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInput on the
L<AWS IoT Events|Paws::IoTEvents> service. Use the attributes of this class
as arguments to method UpdateInput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInput.

=head1 SYNOPSIS

    my $iotevents = Paws->service('IoTEvents');
    my $UpdateInputResponse = $iotevents->UpdateInput(
      InputDefinition => {
        Attributes => [
          {
            JsonPath => 'MyAttributeJsonPath',    # min: 1, max: 128

          },
          ...
        ],                                        # min: 1, max: 200

      },
      InputName        => 'MyInputName',
      InputDescription => 'MyInputDescription',    # OPTIONAL
    );

    # Results:
    my $InputConfiguration = $UpdateInputResponse->InputConfiguration;

    # Returns a L<Paws::IoTEvents::UpdateInputResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents/UpdateInput>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputDefinition => IoTEvents_InputDefinition

The definition of the input.



=head2 InputDescription => Str

A brief description of the input.



=head2 B<REQUIRED> InputName => Str

The name of the input you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInput in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

