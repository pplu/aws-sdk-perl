package Paws::IoTDeviceAdvisor;
  use Moose;
  sub service { 'api.iotdeviceadvisor' }
  sub signing_name { 'iotdeviceadvisor' }
  sub version { '2020-09-18' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateSuiteDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTDeviceAdvisor::CreateSuiteDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSuiteDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTDeviceAdvisor::DeleteSuiteDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSuiteDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTDeviceAdvisor::GetSuiteDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSuiteRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTDeviceAdvisor::GetSuiteRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSuiteRunReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTDeviceAdvisor::GetSuiteRunReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSuiteDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTDeviceAdvisor::ListSuiteDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSuiteRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTDeviceAdvisor::ListSuiteRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTDeviceAdvisor::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSuiteRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTDeviceAdvisor::StartSuiteRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopSuiteRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTDeviceAdvisor::StopSuiteRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTDeviceAdvisor::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTDeviceAdvisor::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSuiteDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTDeviceAdvisor::UpdateSuiteDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateSuiteDefinition DeleteSuiteDefinition GetSuiteDefinition GetSuiteRun GetSuiteRunReport ListSuiteDefinitions ListSuiteRuns ListTagsForResource StartSuiteRun StopSuiteRun TagResource UntagResource UpdateSuiteDefinition / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor - Perl Interface to AWS AWS IoT Core Device Advisor

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTDeviceAdvisor');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS IoT Core Device Advisor is a cloud-based, fully managed test
capability for validating IoT devices during device software
development. Device Advisor provides pre-built tests that you can use
to validate IoT devices for reliable and secure connectivity with AWS
IoT Core before deploying devices to production. By using Device
Advisor, you can confirm that your devices can connect to AWS IoT Core,
follow security best practices and, if applicable, receive software
updates from IoT Device Management. You can also download signed
qualification reports to submit to the AWS Partner Network to get your
device qualified for the AWS Partner Device Catalog without the need to
send your device in and wait for it to be tested.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotdeviceadvisor-2020-09-18>


=head1 METHODS

=head2 CreateSuiteDefinition

=over

=item [SuiteDefinitionConfiguration => L<Paws::IoTDeviceAdvisor::SuiteDefinitionConfiguration>]

=item [Tags => L<Paws::IoTDeviceAdvisor::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTDeviceAdvisor::CreateSuiteDefinition>

Returns: a L<Paws::IoTDeviceAdvisor::CreateSuiteDefinitionResponse> instance

Creates a Device Advisor test suite.


=head2 DeleteSuiteDefinition

=over

=item SuiteDefinitionId => Str


=back

Each argument is described in detail in: L<Paws::IoTDeviceAdvisor::DeleteSuiteDefinition>

Returns: a L<Paws::IoTDeviceAdvisor::DeleteSuiteDefinitionResponse> instance

Deletes a Device Advisor test suite.


=head2 GetSuiteDefinition

=over

=item SuiteDefinitionId => Str

=item [SuiteDefinitionVersion => Str]


=back

Each argument is described in detail in: L<Paws::IoTDeviceAdvisor::GetSuiteDefinition>

Returns: a L<Paws::IoTDeviceAdvisor::GetSuiteDefinitionResponse> instance

Gets information about a Device Advisor test suite.


=head2 GetSuiteRun

=over

=item SuiteDefinitionId => Str

=item SuiteRunId => Str


=back

Each argument is described in detail in: L<Paws::IoTDeviceAdvisor::GetSuiteRun>

Returns: a L<Paws::IoTDeviceAdvisor::GetSuiteRunResponse> instance

Gets information about a Device Advisor test suite run.


=head2 GetSuiteRunReport

=over

=item SuiteDefinitionId => Str

=item SuiteRunId => Str


=back

Each argument is described in detail in: L<Paws::IoTDeviceAdvisor::GetSuiteRunReport>

Returns: a L<Paws::IoTDeviceAdvisor::GetSuiteRunReportResponse> instance

Gets a report download link for a successful Device Advisor qualifying
test suite run.


=head2 ListSuiteDefinitions

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTDeviceAdvisor::ListSuiteDefinitions>

Returns: a L<Paws::IoTDeviceAdvisor::ListSuiteDefinitionsResponse> instance

Lists the Device Advisor test suites you have created.


=head2 ListSuiteRuns

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SuiteDefinitionId => Str]

=item [SuiteDefinitionVersion => Str]


=back

Each argument is described in detail in: L<Paws::IoTDeviceAdvisor::ListSuiteRuns>

Returns: a L<Paws::IoTDeviceAdvisor::ListSuiteRunsResponse> instance

Lists the runs of the specified Device Advisor test suite. You can list
all runs of the test suite, or the runs of a specific version of the
test suite.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::IoTDeviceAdvisor::ListTagsForResource>

Returns: a L<Paws::IoTDeviceAdvisor::ListTagsForResourceResponse> instance

Lists the tags attached to an IoT Device Advisor resource.


=head2 StartSuiteRun

=over

=item SuiteDefinitionId => Str

=item [SuiteDefinitionVersion => Str]

=item [SuiteRunConfiguration => L<Paws::IoTDeviceAdvisor::SuiteRunConfiguration>]

=item [Tags => L<Paws::IoTDeviceAdvisor::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTDeviceAdvisor::StartSuiteRun>

Returns: a L<Paws::IoTDeviceAdvisor::StartSuiteRunResponse> instance

Starts a Device Advisor test suite run.


=head2 StopSuiteRun

=over

=item SuiteDefinitionId => Str

=item SuiteRunId => Str


=back

Each argument is described in detail in: L<Paws::IoTDeviceAdvisor::StopSuiteRun>

Returns: a L<Paws::IoTDeviceAdvisor::StopSuiteRunResponse> instance

Stops a Device Advisor test suite run that is currently running.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::IoTDeviceAdvisor::TagMap>


=back

Each argument is described in detail in: L<Paws::IoTDeviceAdvisor::TagResource>

Returns: a L<Paws::IoTDeviceAdvisor::TagResourceResponse> instance

Adds to and modifies existing tags of an IoT Device Advisor resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IoTDeviceAdvisor::UntagResource>

Returns: a L<Paws::IoTDeviceAdvisor::UntagResourceResponse> instance

Removes tags from an IoT Device Advisor resource.


=head2 UpdateSuiteDefinition

=over

=item SuiteDefinitionId => Str

=item [SuiteDefinitionConfiguration => L<Paws::IoTDeviceAdvisor::SuiteDefinitionConfiguration>]


=back

Each argument is described in detail in: L<Paws::IoTDeviceAdvisor::UpdateSuiteDefinition>

Returns: a L<Paws::IoTDeviceAdvisor::UpdateSuiteDefinitionResponse> instance

Updates a Device Advisor test suite.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

