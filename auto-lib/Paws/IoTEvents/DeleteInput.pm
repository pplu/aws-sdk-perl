
package Paws::IoTEvents::DeleteInput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw//;
  has InputName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteInput');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/inputs/{inputName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTEvents::DeleteInputResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InputName' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'InputName' => 'inputName'
                  },
  'IsRequired' => {
                    'InputName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DeleteInput - Arguments for method DeleteInput on L<Paws::IoTEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteInput on the
L<AWS IoT Events|Paws::IoTEvents> service. Use the attributes of this class
as arguments to method DeleteInput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteInput.

=head1 SYNOPSIS

    my $iotevents = Paws->service('IoTEvents');
    my $DeleteInputResponse = $iotevents->DeleteInput(
      InputName => 'MyInputName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents/DeleteInput>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputName => Str

The name of the input to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteInput in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

