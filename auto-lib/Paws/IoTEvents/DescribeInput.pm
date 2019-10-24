
package Paws::IoTEvents::DescribeInput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw//;
  has InputName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeInput');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/inputs/{inputName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTEvents::DescribeInputResponse');

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

Paws::IoTEvents::DescribeInput - Arguments for method DescribeInput on L<Paws::IoTEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInput on the
L<AWS IoT Events|Paws::IoTEvents> service. Use the attributes of this class
as arguments to method DescribeInput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInput.

=head1 SYNOPSIS

    my $iotevents = Paws->service('IoTEvents');
    my $DescribeInputResponse = $iotevents->DescribeInput(
      InputName => 'MyInputName',

    );

    # Results:
    my $Input = $DescribeInputResponse->Input;

    # Returns a L<Paws::IoTEvents::DescribeInputResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents/DescribeInput>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputName => Str

The name of the input.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInput in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

