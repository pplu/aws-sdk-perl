
package Paws::IoTAnalytics::SampleChannelData;
  use Moose;
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelName', required => 1);
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endTime');
  has MaxMessages => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxMessages');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startTime');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SampleChannelData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelName}/sample');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTAnalytics::SampleChannelDataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::SampleChannelData - Arguments for method SampleChannelData on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SampleChannelData on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method SampleChannelData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SampleChannelData.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    my $SampleChannelDataResponse = $iotanalytics->SampleChannelData(
      ChannelName => 'MyChannelName',
      EndTime     => '1970-01-01T01:00:00',    # OPTIONAL
      MaxMessages => 1,                        # OPTIONAL
      StartTime   => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $Payloads = $SampleChannelDataResponse->Payloads;

    # Returns a L<Paws::IoTAnalytics::SampleChannelDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/SampleChannelData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelName => Str

The name of the channel whose message samples are retrieved.



=head2 EndTime => Str

The end of the time window from which sample messages are retrieved.



=head2 MaxMessages => Int

The number of sample messages to be retrieved. The limit is 10, the
default is also 10.



=head2 StartTime => Str

The start of the time window from which sample messages are retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SampleChannelData in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

