package Paws::MQ;
  use Moose;
  sub service { 'mq' }
  sub signing_name { 'mq' }
  sub version { '2017-11-27' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateBroker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::CreateBroker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::CreateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::CreateTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBroker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::DeleteBroker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBroker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::DescribeBroker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::DescribeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurationRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::DescribeConfigurationRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::DescribeUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBrokers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::ListBrokers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurationRevisions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::ListConfigurationRevisions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::ListConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootBroker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::RebootBroker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBroker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::UpdateBroker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::UpdateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllBrokers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBrokers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBrokers(@_, NextToken => $next_result->NextToken);
        push @{ $result->BrokerSummaries }, @{ $next_result->BrokerSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'BrokerSummaries') foreach (@{ $result->BrokerSummaries });
        $result = $self->ListBrokers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'BrokerSummaries') foreach (@{ $result->BrokerSummaries });
    }

    return undef
  }


  sub operations { qw/CreateBroker CreateConfiguration CreateTags CreateUser DeleteBroker DeleteTags DeleteUser DescribeBroker DescribeConfiguration DescribeConfigurationRevision DescribeUser ListBrokers ListConfigurationRevisions ListConfigurations ListTags ListUsers RebootBroker UpdateBroker UpdateConfiguration UpdateUser / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ - Perl Interface to AWS AmazonMQ

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MQ');
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

Amazon MQ is a managed message broker service for Apache ActiveMQ that
makes it easy to set up and operate message brokers in the cloud. A
message broker allows software applications and components to
communicate using various programming languages, operating systems, and
formal messaging protocols.

For the AWS API documentation, see L<https://docs.aws.amazon.com/amazon-mq/>


=head1 METHODS

=head2 CreateBroker

=over

=item [AutoMinorVersionUpgrade => Bool]

=item [BrokerName => Str]

=item [Configuration => L<Paws::MQ::ConfigurationId>]

=item [CreatorRequestId => Str]

=item [DeploymentMode => Str]

=item [EngineType => Str]

=item [EngineVersion => Str]

=item [HostInstanceType => Str]

=item [Logs => L<Paws::MQ::Logs>]

=item [MaintenanceWindowStartTime => L<Paws::MQ::WeeklyStartTime>]

=item [PubliclyAccessible => Bool]

=item [SecurityGroups => ArrayRef[Str|Undef]]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::MQ::__mapOf__string>]

=item [Users => ArrayRef[L<Paws::MQ::User>]]


=back

Each argument is described in detail in: L<Paws::MQ::CreateBroker>

Returns: a L<Paws::MQ::CreateBrokerResponse> instance

Creates a broker. Note: This API is asynchronous.


=head2 CreateConfiguration

=over

=item [EngineType => Str]

=item [EngineVersion => Str]

=item [Name => Str]

=item [Tags => L<Paws::MQ::__mapOf__string>]


=back

Each argument is described in detail in: L<Paws::MQ::CreateConfiguration>

Returns: a L<Paws::MQ::CreateConfigurationResponse> instance

Creates a new configuration for the specified configuration name.
Amazon MQ uses the default configuration (the engine type and version).


=head2 CreateTags

=over

=item ResourceArn => Str

=item [Tags => L<Paws::MQ::__mapOf__string>]


=back

Each argument is described in detail in: L<Paws::MQ::CreateTags>

Returns: nothing

Add a tag to a resource.


=head2 CreateUser

=over

=item BrokerId => Str

=item Username => Str

=item [ConsoleAccess => Bool]

=item [Groups => ArrayRef[Str|Undef]]

=item [Password => Str]


=back

Each argument is described in detail in: L<Paws::MQ::CreateUser>

Returns: a L<Paws::MQ::CreateUserResponse> instance

Creates an ActiveMQ user.


=head2 DeleteBroker

=over

=item BrokerId => Str


=back

Each argument is described in detail in: L<Paws::MQ::DeleteBroker>

Returns: a L<Paws::MQ::DeleteBrokerResponse> instance

Deletes a broker. Note: This API is asynchronous.


=head2 DeleteTags

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MQ::DeleteTags>

Returns: nothing

Remove a tag from a resource.


=head2 DeleteUser

=over

=item BrokerId => Str

=item Username => Str


=back

Each argument is described in detail in: L<Paws::MQ::DeleteUser>

Returns: a L<Paws::MQ::DeleteUserResponse> instance

Deletes an ActiveMQ user.


=head2 DescribeBroker

=over

=item BrokerId => Str


=back

Each argument is described in detail in: L<Paws::MQ::DescribeBroker>

Returns: a L<Paws::MQ::DescribeBrokerResponse> instance

Returns information about the specified broker.


=head2 DescribeConfiguration

=over

=item ConfigurationId => Str


=back

Each argument is described in detail in: L<Paws::MQ::DescribeConfiguration>

Returns: a L<Paws::MQ::DescribeConfigurationResponse> instance

Returns information about the specified configuration.


=head2 DescribeConfigurationRevision

=over

=item ConfigurationId => Str

=item ConfigurationRevision => Str


=back

Each argument is described in detail in: L<Paws::MQ::DescribeConfigurationRevision>

Returns: a L<Paws::MQ::DescribeConfigurationRevisionResponse> instance

Returns the specified configuration revision for the specified
configuration.


=head2 DescribeUser

=over

=item BrokerId => Str

=item Username => Str


=back

Each argument is described in detail in: L<Paws::MQ::DescribeUser>

Returns: a L<Paws::MQ::DescribeUserResponse> instance

Returns information about an ActiveMQ user.


=head2 ListBrokers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MQ::ListBrokers>

Returns: a L<Paws::MQ::ListBrokersResponse> instance

Returns a list of all brokers.


=head2 ListConfigurationRevisions

=over

=item ConfigurationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MQ::ListConfigurationRevisions>

Returns: a L<Paws::MQ::ListConfigurationRevisionsResponse> instance

Returns a list of all revisions for the specified configuration.


=head2 ListConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MQ::ListConfigurations>

Returns: a L<Paws::MQ::ListConfigurationsResponse> instance

Returns a list of all configurations.


=head2 ListTags

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MQ::ListTags>

Returns: a L<Paws::MQ::ListTagsResponse> instance

Lists tags for a resource.


=head2 ListUsers

=over

=item BrokerId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MQ::ListUsers>

Returns: a L<Paws::MQ::ListUsersResponse> instance

Returns a list of all ActiveMQ users.


=head2 RebootBroker

=over

=item BrokerId => Str


=back

Each argument is described in detail in: L<Paws::MQ::RebootBroker>

Returns: a L<Paws::MQ::RebootBrokerResponse> instance

Reboots a broker. Note: This API is asynchronous.


=head2 UpdateBroker

=over

=item BrokerId => Str

=item [AutoMinorVersionUpgrade => Bool]

=item [Configuration => L<Paws::MQ::ConfigurationId>]

=item [EngineVersion => Str]

=item [Logs => L<Paws::MQ::Logs>]


=back

Each argument is described in detail in: L<Paws::MQ::UpdateBroker>

Returns: a L<Paws::MQ::UpdateBrokerResponse> instance

Adds a pending configuration change to a broker.


=head2 UpdateConfiguration

=over

=item ConfigurationId => Str

=item [Data => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::MQ::UpdateConfiguration>

Returns: a L<Paws::MQ::UpdateConfigurationResponse> instance

Updates the specified configuration.


=head2 UpdateUser

=over

=item BrokerId => Str

=item Username => Str

=item [ConsoleAccess => Bool]

=item [Groups => ArrayRef[Str|Undef]]

=item [Password => Str]


=back

Each argument is described in detail in: L<Paws::MQ::UpdateUser>

Returns: a L<Paws::MQ::UpdateUserResponse> instance

Updates the information for an ActiveMQ user.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBrokers(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllBrokers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - BrokerSummaries, passing the object as the first parameter, and the string 'BrokerSummaries' as the second parameter 

If not, it will return a a L<Paws::MQ::ListBrokersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

