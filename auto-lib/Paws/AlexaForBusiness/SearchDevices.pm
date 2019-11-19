# Generated from json/callargs_class.tt

package Paws::AlexaForBusiness::SearchDevices;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_Sort AlexaForBusiness_Filter/;
  has Filters => (is => 'ro', isa => ArrayRef[AlexaForBusiness_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has SortCriteria => (is => 'ro', isa => ArrayRef[AlexaForBusiness_Sort], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SearchDevices');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AlexaForBusiness::SearchDevicesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SortCriteria' => {
                                   'class' => 'Paws::AlexaForBusiness::Sort',
                                   'type' => 'ArrayRef[AlexaForBusiness_Sort]'
                                 },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Filters' => {
                              'class' => 'Paws::AlexaForBusiness::Filter',
                              'type' => 'ArrayRef[AlexaForBusiness_Filter]'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchDevices - Arguments for method SearchDevices on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchDevices on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method SearchDevices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchDevices.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $SearchDevicesResponse = $a4b->SearchDevices(
      Filters => [
        {
          Key    => 'MyFilterKey',    # min: 1, max: 500
          Values => [
            'MyFilterValue', ...      # min: 1, max: 500
          ],                          # max: 50

        },
        ...
      ],                              # OPTIONAL
      MaxResults   => 1,              # OPTIONAL
      NextToken    => 'MyNextToken',  # OPTIONAL
      SortCriteria => [
        {
          Key   => 'MySortKey',       # min: 1, max: 500
          Value => 'ASC',             # values: ASC, DESC

        },
        ...
      ],                              # OPTIONAL
    );

    # Results:
    my $Devices    = $SearchDevicesResponse->Devices;
    my $NextToken  = $SearchDevicesResponse->NextToken;
    my $TotalCount = $SearchDevicesResponse->TotalCount;

    # Returns a L<Paws::AlexaForBusiness::SearchDevicesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/SearchDevices>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[AlexaForBusiness_Filter]

The filters to use to list a specified set of devices. Supported filter
keys are DeviceName, DeviceStatus, DeviceStatusDetailCode, RoomName,
DeviceType, DeviceSerialNumber, UnassociatedOnly, ConnectionStatus
(ONLINE and OFFLINE), NetworkProfileName, NetworkProfileArn, Feature,
and FailureCode.



=head2 MaxResults => Int

The maximum number of results to include in the response. If more
results exist than the specified C<MaxResults> value, a token is
included in the response so that the remaining results can be
retrieved.



=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by C<MaxResults>.



=head2 SortCriteria => ArrayRef[AlexaForBusiness_Sort]

The sort order to use in listing the specified set of devices.
Supported sort keys are DeviceName, DeviceStatus, RoomName, DeviceType,
DeviceSerialNumber, ConnectionStatus, NetworkProfileName,
NetworkProfileArn, Feature, and FailureCode.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchDevices in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

