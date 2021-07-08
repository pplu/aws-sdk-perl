
package Paws::Amplify::GenerateAccessLogs;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName', required => 1);
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateAccessLogs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps/{appId}/accesslogs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::GenerateAccessLogsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GenerateAccessLogs - Arguments for method GenerateAccessLogs on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateAccessLogs on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method GenerateAccessLogs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateAccessLogs.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $GenerateAccessLogsResult = $amplify->GenerateAccessLogs(
      AppId      => 'MyAppId',
      DomainName => 'MyDomainName',
      EndTime    => '1970-01-01T01:00:00',    # OPTIONAL
      StartTime  => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $LogUrl = $GenerateAccessLogsResult->LogUrl;

    # Returns a L<Paws::Amplify::GenerateAccessLogsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/GenerateAccessLogs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID for an Amplify app.



=head2 B<REQUIRED> DomainName => Str

The name of the domain.



=head2 EndTime => Str

The time at which the logs should end. The time range specified is
inclusive of the end time.



=head2 StartTime => Str

The time at which the logs should start. The time range specified is
inclusive of the start time.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateAccessLogs in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

