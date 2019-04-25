package Paws::DMS;
  use Moose;
  sub service { 'dms' }
  sub signing_name { 'dms' }
  sub version { '2016-01-01' }
  sub target_prefix { 'AmazonDMSv20160101' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddTagsToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::AddTagsToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateReplicationInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateReplicationSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::CreateReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteReplicationInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteReplicationSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DeleteReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeAccountAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpointTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEndpointTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventCategories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEventCategories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventSubscriptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeEventSubscriptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOrderableReplicationInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeOrderableReplicationInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRefreshSchemasStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeRefreshSchemasStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationInstanceTaskLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationInstanceTaskLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationSubnetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationSubnetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationTaskAssessmentResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationTaskAssessmentResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeReplicationTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTableStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::DescribeTableStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ImportCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyEventSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyEventSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyReplicationInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyReplicationInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyReplicationSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyReplicationSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ModifyReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootReplicationInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::RebootReplicationInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RefreshSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::RefreshSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReloadTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::ReloadTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::RemoveTagsFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StartReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartReplicationTaskAssessment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StartReplicationTaskAssessment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopReplicationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::StopReplicationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DMS::TestConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllCertificates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCertificates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeCertificates(@_, Marker => $next_result->Marker);
        push @{ $result->Certificates }, @{ $next_result->Certificates };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Certificates') foreach (@{ $result->Certificates });
        $result = $self->DescribeCertificates(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Certificates') foreach (@{ $result->Certificates });
    }

    return undef
  }
  sub DescribeAllConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeConnections(@_, Marker => $next_result->Marker);
        push @{ $result->Connections }, @{ $next_result->Connections };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Connections') foreach (@{ $result->Connections });
        $result = $self->DescribeConnections(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Connections') foreach (@{ $result->Connections });
    }

    return undef
  }
  sub DescribeAllEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeEndpoints(@_, Marker => $next_result->Marker);
        push @{ $result->Endpoints }, @{ $next_result->Endpoints };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
        $result = $self->DescribeEndpoints(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
    }

    return undef
  }
  sub DescribeAllEndpointTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEndpointTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeEndpointTypes(@_, Marker => $next_result->Marker);
        push @{ $result->SupportedEndpointTypes }, @{ $next_result->SupportedEndpointTypes };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'SupportedEndpointTypes') foreach (@{ $result->SupportedEndpointTypes });
        $result = $self->DescribeEndpointTypes(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'SupportedEndpointTypes') foreach (@{ $result->SupportedEndpointTypes });
    }

    return undef
  }
  sub DescribeAllEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeEvents(@_, Marker => $next_result->Marker);
        push @{ $result->Events }, @{ $next_result->Events };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Events') foreach (@{ $result->Events });
        $result = $self->DescribeEvents(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Events') foreach (@{ $result->Events });
    }

    return undef
  }
  sub DescribeAllEventSubscriptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEventSubscriptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeEventSubscriptions(@_, Marker => $next_result->Marker);
        push @{ $result->EventSubscriptionsList }, @{ $next_result->EventSubscriptionsList };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'EventSubscriptionsList') foreach (@{ $result->EventSubscriptionsList });
        $result = $self->DescribeEventSubscriptions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'EventSubscriptionsList') foreach (@{ $result->EventSubscriptionsList });
    }

    return undef
  }
  sub DescribeAllOrderableReplicationInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeOrderableReplicationInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeOrderableReplicationInstances(@_, Marker => $next_result->Marker);
        push @{ $result->OrderableReplicationInstances }, @{ $next_result->OrderableReplicationInstances };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'OrderableReplicationInstances') foreach (@{ $result->OrderableReplicationInstances });
        $result = $self->DescribeOrderableReplicationInstances(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'OrderableReplicationInstances') foreach (@{ $result->OrderableReplicationInstances });
    }

    return undef
  }
  sub DescribeAllReplicationInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReplicationInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeReplicationInstances(@_, Marker => $next_result->Marker);
        push @{ $result->ReplicationInstances }, @{ $next_result->ReplicationInstances };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReplicationInstances') foreach (@{ $result->ReplicationInstances });
        $result = $self->DescribeReplicationInstances(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReplicationInstances') foreach (@{ $result->ReplicationInstances });
    }

    return undef
  }
  sub DescribeAllReplicationSubnetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReplicationSubnetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeReplicationSubnetGroups(@_, Marker => $next_result->Marker);
        push @{ $result->ReplicationSubnetGroups }, @{ $next_result->ReplicationSubnetGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReplicationSubnetGroups') foreach (@{ $result->ReplicationSubnetGroups });
        $result = $self->DescribeReplicationSubnetGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReplicationSubnetGroups') foreach (@{ $result->ReplicationSubnetGroups });
    }

    return undef
  }
  sub DescribeAllReplicationTaskAssessmentResults {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReplicationTaskAssessmentResults(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeReplicationTaskAssessmentResults(@_, Marker => $next_result->Marker);
        push @{ $result->ReplicationTaskAssessmentResults }, @{ $next_result->ReplicationTaskAssessmentResults };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReplicationTaskAssessmentResults') foreach (@{ $result->ReplicationTaskAssessmentResults });
        $result = $self->DescribeReplicationTaskAssessmentResults(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReplicationTaskAssessmentResults') foreach (@{ $result->ReplicationTaskAssessmentResults });
    }

    return undef
  }
  sub DescribeAllReplicationTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReplicationTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeReplicationTasks(@_, Marker => $next_result->Marker);
        push @{ $result->ReplicationTasks }, @{ $next_result->ReplicationTasks };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'ReplicationTasks') foreach (@{ $result->ReplicationTasks });
        $result = $self->DescribeReplicationTasks(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'ReplicationTasks') foreach (@{ $result->ReplicationTasks });
    }

    return undef
  }
  sub DescribeAllSchemas {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSchemas(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeSchemas(@_, Marker => $next_result->Marker);
        push @{ $result->Schemas }, @{ $next_result->Schemas };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
        $result = $self->DescribeSchemas(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
    }

    return undef
  }
  sub DescribeAllTableStatistics {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTableStatistics(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeTableStatistics(@_, Marker => $next_result->Marker);
        push @{ $result->TableStatistics }, @{ $next_result->TableStatistics };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'TableStatistics') foreach (@{ $result->TableStatistics });
        $result = $self->DescribeTableStatistics(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'TableStatistics') foreach (@{ $result->TableStatistics });
    }

    return undef
  }


  sub operations { qw/AddTagsToResource CreateEndpoint CreateEventSubscription CreateReplicationInstance CreateReplicationSubnetGroup CreateReplicationTask DeleteCertificate DeleteEndpoint DeleteEventSubscription DeleteReplicationInstance DeleteReplicationSubnetGroup DeleteReplicationTask DescribeAccountAttributes DescribeCertificates DescribeConnections DescribeEndpoints DescribeEndpointTypes DescribeEventCategories DescribeEvents DescribeEventSubscriptions DescribeOrderableReplicationInstances DescribeRefreshSchemasStatus DescribeReplicationInstances DescribeReplicationInstanceTaskLogs DescribeReplicationSubnetGroups DescribeReplicationTaskAssessmentResults DescribeReplicationTasks DescribeSchemas DescribeTableStatistics ImportCertificate ListTagsForResource ModifyEndpoint ModifyEventSubscription ModifyReplicationInstance ModifyReplicationSubnetGroup ModifyReplicationTask RebootReplicationInstance RefreshSchemas ReloadTables RemoveTagsFromResource StartReplicationTask StartReplicationTaskAssessment StopReplicationTask TestConnection / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS - Perl Interface to AWS AWS Database Migration Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DMS');
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

AWS Database Migration Service

AWS Database Migration Service (AWS DMS) can migrate your data to and
from the most widely used commercial and open-source databases such as
Oracle, PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB,
Amazon Aurora, MySQL, and SAP Adaptive Server Enterprise (ASE). The
service supports homogeneous migrations such as Oracle to Oracle, as
well as heterogeneous migrations between different database platforms,
such as Oracle to MySQL or SQL Server to PostgreSQL.

For more information about AWS DMS, see What Is AWS Database Migration
Service? (http://docs.aws.amazon.com/dms/latest/userguide/Welcome.html)
in the I<AWS Database Migration User Guide.>

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01>


=head1 METHODS

=head2 AddTagsToResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::DMS::Tag>]


=back

Each argument is described in detail in: L<Paws::DMS::AddTagsToResource>

Returns: a L<Paws::DMS::AddTagsToResourceResponse> instance

Adds metadata tags to an AWS DMS resource, including replication
instance, endpoint, security group, and migration task. These tags can
also be used with cost allocation reporting to track cost associated
with DMS resources, or used in a Condition statement in an IAM policy
for DMS.


=head2 CreateEndpoint

=over

=item EndpointIdentifier => Str

=item EndpointType => Str

=item EngineName => Str

=item [CertificateArn => Str]

=item [DatabaseName => Str]

=item [DmsTransferSettings => L<Paws::DMS::DmsTransferSettings>]

=item [DynamoDbSettings => L<Paws::DMS::DynamoDbSettings>]

=item [ElasticsearchSettings => L<Paws::DMS::ElasticsearchSettings>]

=item [ExternalTableDefinition => Str]

=item [ExtraConnectionAttributes => Str]

=item [KinesisSettings => L<Paws::DMS::KinesisSettings>]

=item [KmsKeyId => Str]

=item [MongoDbSettings => L<Paws::DMS::MongoDbSettings>]

=item [Password => Str]

=item [Port => Int]

=item [S3Settings => L<Paws::DMS::S3Settings>]

=item [ServerName => Str]

=item [ServiceAccessRoleArn => Str]

=item [SslMode => Str]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::DMS::CreateEndpoint>

Returns: a L<Paws::DMS::CreateEndpointResponse> instance

Creates an endpoint using the provided settings.


=head2 CreateEventSubscription

=over

=item SnsTopicArn => Str

=item SubscriptionName => Str

=item [Enabled => Bool]

=item [EventCategories => ArrayRef[Str|Undef]]

=item [SourceIds => ArrayRef[Str|Undef]]

=item [SourceType => Str]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::DMS::CreateEventSubscription>

Returns: a L<Paws::DMS::CreateEventSubscriptionResponse> instance

Creates an AWS DMS event notification subscription.

You can specify the type of source (C<SourceType>) you want to be
notified of, provide a list of AWS DMS source IDs (C<SourceIds>) that
triggers the events, and provide a list of event categories
(C<EventCategories>) for events you want to be notified of. If you
specify both the C<SourceType> and C<SourceIds>, such as C<SourceType =
replication-instance> and C<SourceIdentifier = my-replinstance>, you
will be notified of all the replication instance events for the
specified source. If you specify a C<SourceType> but don't specify a
C<SourceIdentifier>, you receive notice of the events for that source
type for all your AWS DMS sources. If you don't specify either
C<SourceType> nor C<SourceIdentifier>, you will be notified of events
generated from all AWS DMS sources belonging to your customer account.

For more information about AWS DMS events, see Working with Events and
Notifications
(http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) in
the I<AWS Database Migration Service User Guide.>


=head2 CreateReplicationInstance

=over

=item ReplicationInstanceClass => Str

=item ReplicationInstanceIdentifier => Str

=item [AllocatedStorage => Int]

=item [AutoMinorVersionUpgrade => Bool]

=item [AvailabilityZone => Str]

=item [DnsNameServers => Str]

=item [EngineVersion => Str]

=item [KmsKeyId => Str]

=item [MultiAZ => Bool]

=item [PreferredMaintenanceWindow => Str]

=item [PubliclyAccessible => Bool]

=item [ReplicationSubnetGroupIdentifier => Str]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DMS::CreateReplicationInstance>

Returns: a L<Paws::DMS::CreateReplicationInstanceResponse> instance

Creates the replication instance using the specified parameters.


=head2 CreateReplicationSubnetGroup

=over

=item ReplicationSubnetGroupDescription => Str

=item ReplicationSubnetGroupIdentifier => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::DMS::CreateReplicationSubnetGroup>

Returns: a L<Paws::DMS::CreateReplicationSubnetGroupResponse> instance

Creates a replication subnet group given a list of the subnet IDs in a
VPC.


=head2 CreateReplicationTask

=over

=item MigrationType => Str

=item ReplicationInstanceArn => Str

=item ReplicationTaskIdentifier => Str

=item SourceEndpointArn => Str

=item TableMappings => Str

=item TargetEndpointArn => Str

=item [CdcStartPosition => Str]

=item [CdcStartTime => Str]

=item [CdcStopPosition => Str]

=item [ReplicationTaskSettings => Str]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::DMS::CreateReplicationTask>

Returns: a L<Paws::DMS::CreateReplicationTaskResponse> instance

Creates a replication task using the specified parameters.


=head2 DeleteCertificate

=over

=item CertificateArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteCertificate>

Returns: a L<Paws::DMS::DeleteCertificateResponse> instance

Deletes the specified certificate.


=head2 DeleteEndpoint

=over

=item EndpointArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteEndpoint>

Returns: a L<Paws::DMS::DeleteEndpointResponse> instance

Deletes the specified endpoint.

All tasks associated with the endpoint must be deleted before you can
delete the endpoint.


=head2 DeleteEventSubscription

=over

=item SubscriptionName => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteEventSubscription>

Returns: a L<Paws::DMS::DeleteEventSubscriptionResponse> instance

Deletes an AWS DMS event subscription.


=head2 DeleteReplicationInstance

=over

=item ReplicationInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteReplicationInstance>

Returns: a L<Paws::DMS::DeleteReplicationInstanceResponse> instance

Deletes the specified replication instance.

You must delete any migration tasks that are associated with the
replication instance before you can delete it.


=head2 DeleteReplicationSubnetGroup

=over

=item ReplicationSubnetGroupIdentifier => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteReplicationSubnetGroup>

Returns: a L<Paws::DMS::DeleteReplicationSubnetGroupResponse> instance

Deletes a subnet group.


=head2 DeleteReplicationTask

=over

=item ReplicationTaskArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::DeleteReplicationTask>

Returns: a L<Paws::DMS::DeleteReplicationTaskResponse> instance

Deletes the specified replication task.


=head2 DescribeAccountAttributes






Each argument is described in detail in: L<Paws::DMS::DescribeAccountAttributes>

Returns: a L<Paws::DMS::DescribeAccountAttributesResponse> instance

Lists all of the AWS DMS attributes for a customer account. The
attributes include AWS DMS quotas for the account, such as the number
of replication instances allowed. The description for a quota includes
the quota name, current usage toward that quota, and the quota's
maximum value.

This command does not take any parameters.


=head2 DescribeCertificates

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeCertificates>

Returns: a L<Paws::DMS::DescribeCertificatesResponse> instance

Provides a description of the certificate.


=head2 DescribeConnections

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeConnections>

Returns: a L<Paws::DMS::DescribeConnectionsResponse> instance

Describes the status of the connections that have been made between the
replication instance and an endpoint. Connections are created when you
test an endpoint.


=head2 DescribeEndpoints

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeEndpoints>

Returns: a L<Paws::DMS::DescribeEndpointsResponse> instance

Returns information about the endpoints for your account in the current
region.


=head2 DescribeEndpointTypes

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeEndpointTypes>

Returns: a L<Paws::DMS::DescribeEndpointTypesResponse> instance

Returns information about the type of endpoints available.


=head2 DescribeEventCategories

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [SourceType => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeEventCategories>

Returns: a L<Paws::DMS::DescribeEventCategoriesResponse> instance

Lists categories for all event source types, or, if specified, for a
specified source type. You can see a list of the event categories and
source types in Working with Events and Notifications
(http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) in
the I<AWS Database Migration Service User Guide.>


=head2 DescribeEvents

=over

=item [Duration => Int]

=item [EndTime => Str]

=item [EventCategories => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SourceIdentifier => Str]

=item [SourceType => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeEvents>

Returns: a L<Paws::DMS::DescribeEventsResponse> instance

Lists events for a given source identifier and source type. You can
also specify a start and end time. For more information on AWS DMS
events, see Working with Events and Notifications
(http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html) in
the I<AWS Database Migration User Guide.>


=head2 DescribeEventSubscriptions

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]

=item [SubscriptionName => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeEventSubscriptions>

Returns: a L<Paws::DMS::DescribeEventSubscriptionsResponse> instance

Lists all the event subscriptions for a customer account. The
description of a subscription includes C<SubscriptionName>,
C<SNSTopicARN>, C<CustomerID>, C<SourceType>, C<SourceID>,
C<CreationTime>, and C<Status>.

If you specify C<SubscriptionName>, this action lists the description
for that subscription.


=head2 DescribeOrderableReplicationInstances

=over

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeOrderableReplicationInstances>

Returns: a L<Paws::DMS::DescribeOrderableReplicationInstancesResponse> instance

Returns information about the replication instance types that can be
created in the specified region.


=head2 DescribeRefreshSchemasStatus

=over

=item EndpointArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::DescribeRefreshSchemasStatus>

Returns: a L<Paws::DMS::DescribeRefreshSchemasStatusResponse> instance

Returns the status of the RefreshSchemas operation.


=head2 DescribeReplicationInstances

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationInstances>

Returns: a L<Paws::DMS::DescribeReplicationInstancesResponse> instance

Returns information about replication instances for your account in the
current region.


=head2 DescribeReplicationInstanceTaskLogs

=over

=item ReplicationInstanceArn => Str

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationInstanceTaskLogs>

Returns: a L<Paws::DMS::DescribeReplicationInstanceTaskLogsResponse> instance

Returns information about the task logs for the specified task.


=head2 DescribeReplicationSubnetGroups

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationSubnetGroups>

Returns: a L<Paws::DMS::DescribeReplicationSubnetGroupsResponse> instance

Returns information about the replication subnet groups.


=head2 DescribeReplicationTaskAssessmentResults

=over

=item [Marker => Str]

=item [MaxRecords => Int]

=item [ReplicationTaskArn => Str]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationTaskAssessmentResults>

Returns: a L<Paws::DMS::DescribeReplicationTaskAssessmentResultsResponse> instance

Returns the task assessment results from Amazon S3. This action always
returns the latest results.


=head2 DescribeReplicationTasks

=over

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeReplicationTasks>

Returns: a L<Paws::DMS::DescribeReplicationTasksResponse> instance

Returns information about replication tasks for your account in the
current region.


=head2 DescribeSchemas

=over

=item EndpointArn => Str

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeSchemas>

Returns: a L<Paws::DMS::DescribeSchemasResponse> instance

Returns information about the schema for the specified endpoint.


=head2 DescribeTableStatistics

=over

=item ReplicationTaskArn => Str

=item [Filters => ArrayRef[L<Paws::DMS::Filter>]]

=item [Marker => Str]

=item [MaxRecords => Int]


=back

Each argument is described in detail in: L<Paws::DMS::DescribeTableStatistics>

Returns: a L<Paws::DMS::DescribeTableStatisticsResponse> instance

Returns table statistics on the database migration task, including
table name, rows inserted, rows updated, and rows deleted.

Note that the "last updated" column the DMS console only indicates the
time that AWS DMS last updated the table statistics record for a table.
It does not indicate the time of the last update to the table.


=head2 ImportCertificate

=over

=item CertificateIdentifier => Str

=item [CertificatePem => Str]

=item [CertificateWallet => Str]

=item [Tags => ArrayRef[L<Paws::DMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::DMS::ImportCertificate>

Returns: a L<Paws::DMS::ImportCertificateResponse> instance

Uploads the specified certificate.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::ListTagsForResource>

Returns: a L<Paws::DMS::ListTagsForResourceResponse> instance

Lists all tags for an AWS DMS resource.


=head2 ModifyEndpoint

=over

=item EndpointArn => Str

=item [CertificateArn => Str]

=item [DatabaseName => Str]

=item [DmsTransferSettings => L<Paws::DMS::DmsTransferSettings>]

=item [DynamoDbSettings => L<Paws::DMS::DynamoDbSettings>]

=item [ElasticsearchSettings => L<Paws::DMS::ElasticsearchSettings>]

=item [EndpointIdentifier => Str]

=item [EndpointType => Str]

=item [EngineName => Str]

=item [ExternalTableDefinition => Str]

=item [ExtraConnectionAttributes => Str]

=item [KinesisSettings => L<Paws::DMS::KinesisSettings>]

=item [MongoDbSettings => L<Paws::DMS::MongoDbSettings>]

=item [Password => Str]

=item [Port => Int]

=item [S3Settings => L<Paws::DMS::S3Settings>]

=item [ServerName => Str]

=item [ServiceAccessRoleArn => Str]

=item [SslMode => Str]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::DMS::ModifyEndpoint>

Returns: a L<Paws::DMS::ModifyEndpointResponse> instance

Modifies the specified endpoint.


=head2 ModifyEventSubscription

=over

=item SubscriptionName => Str

=item [Enabled => Bool]

=item [EventCategories => ArrayRef[Str|Undef]]

=item [SnsTopicArn => Str]

=item [SourceType => Str]


=back

Each argument is described in detail in: L<Paws::DMS::ModifyEventSubscription>

Returns: a L<Paws::DMS::ModifyEventSubscriptionResponse> instance

Modifies an existing AWS DMS event notification subscription.


=head2 ModifyReplicationInstance

=over

=item ReplicationInstanceArn => Str

=item [AllocatedStorage => Int]

=item [AllowMajorVersionUpgrade => Bool]

=item [ApplyImmediately => Bool]

=item [AutoMinorVersionUpgrade => Bool]

=item [EngineVersion => Str]

=item [MultiAZ => Bool]

=item [PreferredMaintenanceWindow => Str]

=item [ReplicationInstanceClass => Str]

=item [ReplicationInstanceIdentifier => Str]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DMS::ModifyReplicationInstance>

Returns: a L<Paws::DMS::ModifyReplicationInstanceResponse> instance

Modifies the replication instance to apply new settings. You can change
one or more parameters by specifying these parameters and the new
values in the request.

Some settings are applied during the maintenance window.


=head2 ModifyReplicationSubnetGroup

=over

=item ReplicationSubnetGroupIdentifier => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [ReplicationSubnetGroupDescription => Str]


=back

Each argument is described in detail in: L<Paws::DMS::ModifyReplicationSubnetGroup>

Returns: a L<Paws::DMS::ModifyReplicationSubnetGroupResponse> instance

Modifies the settings for the specified replication subnet group.


=head2 ModifyReplicationTask

=over

=item ReplicationTaskArn => Str

=item [CdcStartPosition => Str]

=item [CdcStartTime => Str]

=item [CdcStopPosition => Str]

=item [MigrationType => Str]

=item [ReplicationTaskIdentifier => Str]

=item [ReplicationTaskSettings => Str]

=item [TableMappings => Str]


=back

Each argument is described in detail in: L<Paws::DMS::ModifyReplicationTask>

Returns: a L<Paws::DMS::ModifyReplicationTaskResponse> instance

Modifies the specified replication task.

You can't modify the task endpoints. The task must be stopped before
you can modify it.

For more information about AWS DMS tasks, see Working with Migration
Tasks (http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html)
in the I<AWS Database Migration Service User Guide>.


=head2 RebootReplicationInstance

=over

=item ReplicationInstanceArn => Str

=item [ForceFailover => Bool]


=back

Each argument is described in detail in: L<Paws::DMS::RebootReplicationInstance>

Returns: a L<Paws::DMS::RebootReplicationInstanceResponse> instance

Reboots a replication instance. Rebooting results in a momentary
outage, until the replication instance becomes available again.


=head2 RefreshSchemas

=over

=item EndpointArn => Str

=item ReplicationInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::RefreshSchemas>

Returns: a L<Paws::DMS::RefreshSchemasResponse> instance

Populates the schema for the specified endpoint. This is an
asynchronous operation and can take several minutes. You can check the
status of this operation by calling the DescribeRefreshSchemasStatus
operation.


=head2 ReloadTables

=over

=item ReplicationTaskArn => Str

=item TablesToReload => ArrayRef[L<Paws::DMS::TableToReload>]

=item [ReloadOption => Str]


=back

Each argument is described in detail in: L<Paws::DMS::ReloadTables>

Returns: a L<Paws::DMS::ReloadTablesResponse> instance

Reloads the target database table with the source data.


=head2 RemoveTagsFromResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DMS::RemoveTagsFromResource>

Returns: a L<Paws::DMS::RemoveTagsFromResourceResponse> instance

Removes metadata tags from a DMS resource.


=head2 StartReplicationTask

=over

=item ReplicationTaskArn => Str

=item StartReplicationTaskType => Str

=item [CdcStartPosition => Str]

=item [CdcStartTime => Str]

=item [CdcStopPosition => Str]


=back

Each argument is described in detail in: L<Paws::DMS::StartReplicationTask>

Returns: a L<Paws::DMS::StartReplicationTaskResponse> instance

Starts the replication task.

For more information about AWS DMS tasks, see Working with Migration
Tasks (http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html)
in the I<AWS Database Migration Service User Guide.>


=head2 StartReplicationTaskAssessment

=over

=item ReplicationTaskArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::StartReplicationTaskAssessment>

Returns: a L<Paws::DMS::StartReplicationTaskAssessmentResponse> instance

Starts the replication task assessment for unsupported data types in
the source database.


=head2 StopReplicationTask

=over

=item ReplicationTaskArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::StopReplicationTask>

Returns: a L<Paws::DMS::StopReplicationTaskResponse> instance

Stops the replication task.


=head2 TestConnection

=over

=item EndpointArn => Str

=item ReplicationInstanceArn => Str


=back

Each argument is described in detail in: L<Paws::DMS::TestConnection>

Returns: a L<Paws::DMS::TestConnectionResponse> instance

Tests the connection between the replication instance and the endpoint.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllCertificates(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllCertificates([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Certificates, passing the object as the first parameter, and the string 'Certificates' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeCertificatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllConnections(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllConnections([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Connections, passing the object as the first parameter, and the string 'Connections' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeConnectionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEndpoints(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllEndpoints([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Endpoints, passing the object as the first parameter, and the string 'Endpoints' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeEndpointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEndpointTypes(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllEndpointTypes([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SupportedEndpointTypes, passing the object as the first parameter, and the string 'SupportedEndpointTypes' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeEndpointTypesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEvents(sub { },[Duration => Int, EndTime => Str, EventCategories => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])

=head2 DescribeAllEvents([Duration => Int, EndTime => Str, EventCategories => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int, SourceIdentifier => Str, SourceType => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEventSubscriptions(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int, SubscriptionName => Str])

=head2 DescribeAllEventSubscriptions([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int, SubscriptionName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EventSubscriptionsList, passing the object as the first parameter, and the string 'EventSubscriptionsList' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeEventSubscriptionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllOrderableReplicationInstances(sub { },[Marker => Str, MaxRecords => Int])

=head2 DescribeAllOrderableReplicationInstances([Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OrderableReplicationInstances, passing the object as the first parameter, and the string 'OrderableReplicationInstances' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeOrderableReplicationInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReplicationInstances(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllReplicationInstances([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReplicationInstances, passing the object as the first parameter, and the string 'ReplicationInstances' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeReplicationInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReplicationSubnetGroups(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllReplicationSubnetGroups([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReplicationSubnetGroups, passing the object as the first parameter, and the string 'ReplicationSubnetGroups' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeReplicationSubnetGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReplicationTaskAssessmentResults(sub { },[Marker => Str, MaxRecords => Int, ReplicationTaskArn => Str])

=head2 DescribeAllReplicationTaskAssessmentResults([Marker => Str, MaxRecords => Int, ReplicationTaskArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReplicationTaskAssessmentResults, passing the object as the first parameter, and the string 'ReplicationTaskAssessmentResults' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeReplicationTaskAssessmentResultsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReplicationTasks(sub { },[Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllReplicationTasks([Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReplicationTasks, passing the object as the first parameter, and the string 'ReplicationTasks' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeReplicationTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSchemas(sub { },EndpointArn => Str, [Marker => Str, MaxRecords => Int])

=head2 DescribeAllSchemas(EndpointArn => Str, [Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Schemas, passing the object as the first parameter, and the string 'Schemas' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeSchemasResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTableStatistics(sub { },ReplicationTaskArn => Str, [Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])

=head2 DescribeAllTableStatistics(ReplicationTaskArn => Str, [Filters => ArrayRef[L<Paws::DMS::Filter>], Marker => Str, MaxRecords => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TableStatistics, passing the object as the first parameter, and the string 'TableStatistics' as the second parameter 

If not, it will return a a L<Paws::DMS::DescribeTableStatisticsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

