
package Paws::IoTEventsData::ListDetectors;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoTEventsData::Types qw//;
  has DetectorModelName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has StateName => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListDetectors');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/detectors/{detectorModelName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTEventsData::ListDetectorsResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInQuery' => {
                      'StateName' => 'stateName',
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken'
                    },
  'IsRequired' => {
                    'DetectorModelName' => 1
                  },
  'types' => {
               'DetectorModelName' => {
                                        'type' => 'Str'
                                      },
               'StateName' => {
                                'type' => 'Str'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'ParamInURI' => {
                    'DetectorModelName' => 'detectorModelName'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::ListDetectors - Arguments for method ListDetectors on L<Paws::IoTEventsData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDetectors on the
L<AWS IoT Events Data|Paws::IoTEventsData> service. Use the attributes of this class
as arguments to method ListDetectors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDetectors.

=head1 SYNOPSIS

    my $data.iotevents = Paws->service('IoTEventsData');
    my $ListDetectorsResponse = $data . iotevents->ListDetectors(
      DetectorModelName => 'MyDetectorModelName',
      MaxResults        => 1,                       # OPTIONAL
      NextToken         => 'MyNextToken',           # OPTIONAL
      StateName         => 'MyStateName',           # OPTIONAL
    );

    # Results:
    my $DetectorSummaries = $ListDetectorsResponse->DetectorSummaries;
    my $NextToken         = $ListDetectorsResponse->NextToken;

    # Returns a L<Paws::IoTEventsData::ListDetectorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.iotevents/ListDetectors>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorModelName => Str

The name of the detector model whose detectors (instances) are listed.



=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

The token for the next set of results.



=head2 StateName => Str

A filter that limits results to those detectors (instances) in the
given state.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDetectors in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

