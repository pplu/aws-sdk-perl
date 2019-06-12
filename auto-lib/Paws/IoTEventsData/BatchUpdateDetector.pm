
package Paws::IoTEventsData::BatchUpdateDetector;
  use Moose;
  has Detectors => (is => 'ro', isa => 'ArrayRef[Paws::IoTEventsData::UpdateDetectorRequest]', traits => ['NameInRequest'], request_name => 'detectors', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateDetector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detectors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTEventsData::BatchUpdateDetectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::BatchUpdateDetector - Arguments for method BatchUpdateDetector on L<Paws::IoTEventsData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateDetector on the
L<AWS IoT Events Data|Paws::IoTEventsData> service. Use the attributes of this class
as arguments to method BatchUpdateDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateDetector.

=head1 SYNOPSIS

    my $data.iotevents = Paws->service('IoTEventsData');
    my $BatchUpdateDetectorResponse = $data . iotevents->BatchUpdateDetector(
      Detectors => [
        {
          DetectorModelName => 'MyDetectorModelName',    # min: 1, max: 128
          MessageId         => 'MyMessageId',            # min: 1, max: 64
          State             => {
            StateName => 'MyStateName',                  # min: 1, max: 128
            Timers    => [
              {
                Name    => 'MyTimerName',                # min: 1, max: 128
                Seconds => 1,

              },
              ...
            ],
            Variables => [
              {
                Name  => 'MyVariableName',               # min: 1, max: 128
                Value => 'MyVariableValue',              # min: 1, max: 1024

              },
              ...
            ],

          },
          KeyValue => 'MyKeyValue',    # min: 1, max: 128; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $BatchUpdateDetectorErrorEntries =
      $BatchUpdateDetectorResponse->BatchUpdateDetectorErrorEntries;

    # Returns a L<Paws::IoTEventsData::BatchUpdateDetectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.iotevents/BatchUpdateDetector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Detectors => ArrayRef[L<Paws::IoTEventsData::UpdateDetectorRequest>]

The list of detectors (instances) to be updated, along with the values
to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateDetector in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

