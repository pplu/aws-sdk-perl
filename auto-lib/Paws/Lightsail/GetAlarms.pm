
package Paws::Lightsail::GetAlarms;
  use Moose;
  has AlarmName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alarmName' );
  has MonitoredResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'monitoredResourceName' );
  has PageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pageToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAlarms');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetAlarmsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetAlarms - Arguments for method GetAlarms on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAlarms on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetAlarms.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAlarms.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetAlarmsResult = $lightsail->GetAlarms(
      AlarmName             => 'MyResourceName',    # OPTIONAL
      MonitoredResourceName => 'MyResourceName',    # OPTIONAL
      PageToken             => 'Mystring',          # OPTIONAL
    );

    # Results:
    my $Alarms        = $GetAlarmsResult->Alarms;
    my $NextPageToken = $GetAlarmsResult->NextPageToken;

    # Returns a L<Paws::Lightsail::GetAlarmsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetAlarms>

=head1 ATTRIBUTES


=head2 AlarmName => Str

The name of the alarm.

Specify an alarm name to return information about a specific alarm.



=head2 MonitoredResourceName => Str

The name of the Lightsail resource being monitored by the alarm.

Specify a monitored resource name to return information about all
alarms for a specific resource.



=head2 PageToken => Str

The token to advance to the next page of results from your request.

To get a page token, perform an initial C<GetAlarms> request. If your
results are paginated, the response will return a next page token that
you can specify as the page token in a subsequent request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAlarms in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

