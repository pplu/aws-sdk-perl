package Paws::MWAA;
  use Moose;
  sub service { 'airflow' }
  sub signing_name { 'airflow' }
  sub version { '2020-07-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateCliToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MWAA::CreateCliToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MWAA::CreateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWebLoginToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MWAA::CreateWebLoginToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MWAA::DeleteEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MWAA::GetEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MWAA::ListEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MWAA::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MWAA::PublishMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MWAA::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MWAA::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MWAA::UpdateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllEnvironments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEnvironments(@_, NextToken => $next_result->NextToken);
        push @{ $result->Environments }, @{ $next_result->Environments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Environments') foreach (@{ $result->Environments });
        $result = $self->ListEnvironments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Environments') foreach (@{ $result->Environments });
    }

    return undef
  }


  sub operations { qw/CreateCliToken CreateEnvironment CreateWebLoginToken DeleteEnvironment GetEnvironment ListEnvironments ListTagsForResource PublishMetrics TagResource UntagResource UpdateEnvironment / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA - Perl Interface to AWS AmazonMWAA

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MWAA');
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

Amazon Managed Workflows for Apache Airflow

This section contains the Amazon Managed Workflows for Apache Airflow
(MWAA) API reference documentation. For more information, see What Is
Amazon MWAA?
(https://docs.aws.amazon.com/mwaa/latest/userguide/what-is-mwaa.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/airflow-2020-07-01>


=head1 METHODS

=head2 CreateCliToken

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::MWAA::CreateCliToken>

Returns: a L<Paws::MWAA::CreateCliTokenResponse> instance

Create a CLI token to use Airflow CLI.


=head2 CreateEnvironment

=over

=item DagS3Path => Str

=item ExecutionRoleArn => Str

=item Name => Str

=item NetworkConfiguration => L<Paws::MWAA::NetworkConfiguration>

=item SourceBucketArn => Str

=item [AirflowConfigurationOptions => L<Paws::MWAA::SyntheticCreateEnvironmentInputAirflowConfigurationOptions>]

=item [AirflowVersion => Str]

=item [EnvironmentClass => Str]

=item [KmsKey => Str]

=item [LoggingConfiguration => L<Paws::MWAA::LoggingConfigurationInput>]

=item [MaxWorkers => Int]

=item [MinWorkers => Int]

=item [PluginsS3ObjectVersion => Str]

=item [PluginsS3Path => Str]

=item [RequirementsS3ObjectVersion => Str]

=item [RequirementsS3Path => Str]

=item [Tags => L<Paws::MWAA::TagMap>]

=item [WebserverAccessMode => Str]

=item [WeeklyMaintenanceWindowStart => Str]


=back

Each argument is described in detail in: L<Paws::MWAA::CreateEnvironment>

Returns: a L<Paws::MWAA::CreateEnvironmentOutput> instance

JSON blob that describes the environment to create.


=head2 CreateWebLoginToken

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::MWAA::CreateWebLoginToken>

Returns: a L<Paws::MWAA::CreateWebLoginTokenResponse> instance

Create a JWT token to be used to login to Airflow Web UI with claims
based Authentication.


=head2 DeleteEnvironment

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::MWAA::DeleteEnvironment>

Returns: a L<Paws::MWAA::DeleteEnvironmentOutput> instance

Delete an existing environment.


=head2 GetEnvironment

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::MWAA::GetEnvironment>

Returns: a L<Paws::MWAA::GetEnvironmentOutput> instance

Get details of an existing environment.


=head2 ListEnvironments

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MWAA::ListEnvironments>

Returns: a L<Paws::MWAA::ListEnvironmentsOutput> instance

List Amazon MWAA Environments.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MWAA::ListTagsForResource>

Returns: a L<Paws::MWAA::ListTagsForResourceOutput> instance

List the tags for MWAA environments.


=head2 PublishMetrics

=over

=item EnvironmentName => Str

=item MetricData => ArrayRef[L<Paws::MWAA::MetricDatum>]


=back

Each argument is described in detail in: L<Paws::MWAA::PublishMetrics>

Returns: a L<Paws::MWAA::PublishMetricsOutput> instance

An operation for publishing metrics from the customers to the Ops
plane.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::MWAA::TagMap>


=back

Each argument is described in detail in: L<Paws::MWAA::TagResource>

Returns: a L<Paws::MWAA::TagResourceOutput> instance

Add tag to the MWAA environments.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MWAA::UntagResource>

Returns: a L<Paws::MWAA::UntagResourceOutput> instance

Remove a tag from the MWAA environments.


=head2 UpdateEnvironment

=over

=item Name => Str

=item [AirflowConfigurationOptions => L<Paws::MWAA::SyntheticUpdateEnvironmentInputAirflowConfigurationOptions>]

=item [AirflowVersion => Str]

=item [DagS3Path => Str]

=item [EnvironmentClass => Str]

=item [ExecutionRoleArn => Str]

=item [LoggingConfiguration => L<Paws::MWAA::LoggingConfigurationInput>]

=item [MaxWorkers => Int]

=item [MinWorkers => Int]

=item [NetworkConfiguration => L<Paws::MWAA::UpdateNetworkConfigurationInput>]

=item [PluginsS3ObjectVersion => Str]

=item [PluginsS3Path => Str]

=item [RequirementsS3ObjectVersion => Str]

=item [RequirementsS3Path => Str]

=item [SourceBucketArn => Str]

=item [WebserverAccessMode => Str]

=item [WeeklyMaintenanceWindowStart => Str]


=back

Each argument is described in detail in: L<Paws::MWAA::UpdateEnvironment>

Returns: a L<Paws::MWAA::UpdateEnvironmentOutput> instance

Update an MWAA environment.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllEnvironments(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllEnvironments([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Environments, passing the object as the first parameter, and the string 'Environments' as the second parameter 

If not, it will return a a L<Paws::MWAA::ListEnvironmentsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

