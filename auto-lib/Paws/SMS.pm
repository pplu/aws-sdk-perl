package Paws::SMS;
  use Moose;
  sub service { 'sms' }
  sub version { '2016-10-24' }
  sub target_prefix { 'AWSServerMigrationService_V2016_10_24' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateReplicationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::CreateReplicationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::DeleteReplicationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServerCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::DeleteServerCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::DisassociateConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::GetConnectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReplicationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::GetReplicationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReplicationRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::GetReplicationRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::GetServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportServerCatalog {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::ImportServerCatalog', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartOnDemandReplicationRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::StartOnDemandReplicationRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReplicationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SMS::UpdateReplicationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllConnectors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetConnectors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetConnectors(@_, nextToken => $next_result->nextToken);
        push @{ $result->connectorList }, @{ $next_result->connectorList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'connectorList') foreach (@{ $result->connectorList });
        $result = $self->GetConnectors(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'connectorList') foreach (@{ $result->connectorList });
    }

    return undef
  }
  sub GetAllReplicationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetReplicationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetReplicationJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->replicationJobList }, @{ $next_result->replicationJobList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'replicationJobList') foreach (@{ $result->replicationJobList });
        $result = $self->GetReplicationJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'replicationJobList') foreach (@{ $result->replicationJobList });
    }

    return undef
  }
  sub GetAllReplicationRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetReplicationRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetReplicationRuns(@_, nextToken => $next_result->nextToken);
        push @{ $result->replicationRunList }, @{ $next_result->replicationRunList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'replicationRunList') foreach (@{ $result->replicationRunList });
        $result = $self->GetReplicationRuns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'replicationRunList') foreach (@{ $result->replicationRunList });
    }

    return undef
  }
  sub GetAllServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetServers(@_, nextToken => $next_result->nextToken);
        push @{ $result->serverList }, @{ $next_result->serverList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'serverList') foreach (@{ $result->serverList });
        $result = $self->GetServers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'serverList') foreach (@{ $result->serverList });
    }

    return undef
  }


  sub operations { qw/CreateReplicationJob DeleteReplicationJob DeleteServerCatalog DisassociateConnector GetConnectors GetReplicationJobs GetReplicationRuns GetServers ImportServerCatalog StartOnDemandReplicationRun UpdateReplicationJob / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS - Perl Interface to AWS AWS Server Migration Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SMS');
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

Amazon Server Migration Service automates the process of migrating
servers to EC2.

=head1 METHODS

=head2 CreateReplicationJob(Frequency => Int, SeedReplicationTime => Str, ServerId => Str, [Description => Str, LicenseType => Str, RoleName => Str])

Each argument is described in detail in: L<Paws::SMS::CreateReplicationJob>

Returns: a L<Paws::SMS::CreateReplicationJobResponse> instance

  The CreateReplicationJob API is used to create a ReplicationJob to
replicate a server on AWS. Call this API to first create a
ReplicationJob, which will then schedule periodic ReplicationRuns to
replicate your server to AWS. Each ReplicationRun will result in the
creation of an AWS AMI.


=head2 DeleteReplicationJob(ReplicationJobId => Str)

Each argument is described in detail in: L<Paws::SMS::DeleteReplicationJob>

Returns: a L<Paws::SMS::DeleteReplicationJobResponse> instance

  The DeleteReplicationJob API is used to delete a ReplicationJob,
resulting in no further ReplicationRuns. This will delete the contents
of the S3 bucket used to store SMS artifacts, but will not delete any
AMIs created by the SMS service.


=head2 DeleteServerCatalog()

Each argument is described in detail in: L<Paws::SMS::DeleteServerCatalog>

Returns: a L<Paws::SMS::DeleteServerCatalogResponse> instance

  The DeleteServerCatalog API clears all servers from your server
catalog. This means that these servers will no longer be accessible to
the Server Migration Service.


=head2 DisassociateConnector(ConnectorId => Str)

Each argument is described in detail in: L<Paws::SMS::DisassociateConnector>

Returns: a L<Paws::SMS::DisassociateConnectorResponse> instance

  The DisassociateConnector API will disassociate a connector from the
Server Migration Service, rendering it unavailable to support
replication jobs.


=head2 GetConnectors([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SMS::GetConnectors>

Returns: a L<Paws::SMS::GetConnectorsResponse> instance

  The GetConnectors API returns a list of connectors that are registered
with the Server Migration Service.


=head2 GetReplicationJobs([MaxResults => Int, NextToken => Str, ReplicationJobId => Str])

Each argument is described in detail in: L<Paws::SMS::GetReplicationJobs>

Returns: a L<Paws::SMS::GetReplicationJobsResponse> instance

  The GetReplicationJobs API will return all of your ReplicationJobs and
their details. This API returns a paginated list, that may be
consecutively called with nextToken to retrieve all ReplicationJobs.


=head2 GetReplicationRuns(ReplicationJobId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SMS::GetReplicationRuns>

Returns: a L<Paws::SMS::GetReplicationRunsResponse> instance

  The GetReplicationRuns API will return all ReplicationRuns for a given
ReplicationJob. This API returns a paginated list, that may be
consecutively called with nextToken to retrieve all ReplicationRuns for
a ReplicationJob.


=head2 GetServers([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SMS::GetServers>

Returns: a L<Paws::SMS::GetServersResponse> instance

  The GetServers API returns a list of all servers in your server
catalog. For this call to succeed, you must previously have called
ImportServerCatalog.


=head2 ImportServerCatalog()

Each argument is described in detail in: L<Paws::SMS::ImportServerCatalog>

Returns: a L<Paws::SMS::ImportServerCatalogResponse> instance

  The ImportServerCatalog API is used to gather the complete list of
on-premises servers on your premises. This API call requires connectors
to be installed and monitoring all servers you would like imported.
This API call returns immediately, but may take some time to retrieve
all of the servers.


=head2 StartOnDemandReplicationRun(ReplicationJobId => Str, [Description => Str])

Each argument is described in detail in: L<Paws::SMS::StartOnDemandReplicationRun>

Returns: a L<Paws::SMS::StartOnDemandReplicationRunResponse> instance

  The StartOnDemandReplicationRun API is used to start a ReplicationRun
on demand (in addition to those that are scheduled based on your
frequency). This ReplicationRun will start immediately.
StartOnDemandReplicationRun is subject to limits on how many on demand
ReplicationRuns you may call per 24-hour period.


=head2 UpdateReplicationJob(ReplicationJobId => Str, [Description => Str, Frequency => Int, LicenseType => Str, NextReplicationRunStartTime => Str, RoleName => Str])

Each argument is described in detail in: L<Paws::SMS::UpdateReplicationJob>

Returns: a L<Paws::SMS::UpdateReplicationJobResponse> instance

  The UpdateReplicationJob API is used to change the settings of your
existing ReplicationJob created using CreateReplicationJob. Calling
this API will affect the next scheduled ReplicationRun.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllConnectors(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllConnectors([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - connectorList, passing the object as the first parameter, and the string 'connectorList' as the second parameter 

If not, it will return a a L<Paws::SMS::GetConnectorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllReplicationJobs(sub { },[MaxResults => Int, NextToken => Str, ReplicationJobId => Str])

=head2 GetAllReplicationJobs([MaxResults => Int, NextToken => Str, ReplicationJobId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - replicationJobList, passing the object as the first parameter, and the string 'replicationJobList' as the second parameter 

If not, it will return a a L<Paws::SMS::GetReplicationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllReplicationRuns(sub { },ReplicationJobId => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllReplicationRuns(ReplicationJobId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - replicationRunList, passing the object as the first parameter, and the string 'replicationRunList' as the second parameter 

If not, it will return a a L<Paws::SMS::GetReplicationRunsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllServers(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllServers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - serverList, passing the object as the first parameter, and the string 'serverList' as the second parameter 

If not, it will return a a L<Paws::SMS::GetServersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

