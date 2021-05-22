package Paws::Robomaker;
  use Moose;
  sub service { 'robomaker' }
  sub signing_name { 'robomaker' }
  sub version { '2018-06-29' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchDeleteWorlds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::BatchDeleteWorlds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDescribeSimulationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::BatchDescribeSimulationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelDeploymentJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CancelDeploymentJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelSimulationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CancelSimulationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelSimulationJobBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CancelSimulationJobBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelWorldExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CancelWorldExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelWorldGenerationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CancelWorldGenerationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeploymentJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CreateDeploymentJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CreateFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRobot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CreateRobot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRobotApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CreateRobotApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRobotApplicationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CreateRobotApplicationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSimulationApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CreateSimulationApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSimulationApplicationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CreateSimulationApplicationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSimulationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CreateSimulationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorldExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CreateWorldExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorldGenerationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CreateWorldGenerationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorldTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::CreateWorldTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DeleteFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRobot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DeleteRobot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRobotApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DeleteRobotApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSimulationApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DeleteSimulationApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorldTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DeleteWorldTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterRobot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DeregisterRobot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeploymentJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DescribeDeploymentJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DescribeFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRobot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DescribeRobot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRobotApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DescribeRobotApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSimulationApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DescribeSimulationApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSimulationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DescribeSimulationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSimulationJobBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DescribeSimulationJobBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorld {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DescribeWorld', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorldExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DescribeWorldExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorldGenerationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DescribeWorldGenerationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorldTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::DescribeWorldTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorldTemplateBody {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::GetWorldTemplateBody', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeploymentJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::ListDeploymentJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::ListFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRobotApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::ListRobotApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRobots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::ListRobots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSimulationApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::ListSimulationApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSimulationJobBatches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::ListSimulationJobBatches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSimulationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::ListSimulationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorldExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::ListWorldExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorldGenerationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::ListWorldGenerationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorlds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::ListWorlds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorldTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::ListWorldTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterRobot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::RegisterRobot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestartSimulationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::RestartSimulationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSimulationJobBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::StartSimulationJobBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SyncDeploymentJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::SyncDeploymentJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRobotApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::UpdateRobotApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSimulationApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::UpdateSimulationApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorldTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Robomaker::UpdateWorldTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDeploymentJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeploymentJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDeploymentJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->deploymentJobs }, @{ $next_result->deploymentJobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'deploymentJobs') foreach (@{ $result->deploymentJobs });
        $result = $self->ListDeploymentJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'deploymentJobs') foreach (@{ $result->deploymentJobs });
    }

    return undef
  }
  sub ListAllFleets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFleets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFleets(@_, nextToken => $next_result->nextToken);
        push @{ $result->fleetDetails }, @{ $next_result->fleetDetails };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'fleetDetails') foreach (@{ $result->fleetDetails });
        $result = $self->ListFleets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'fleetDetails') foreach (@{ $result->fleetDetails });
    }

    return undef
  }
  sub ListAllRobotApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRobotApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRobotApplications(@_, nextToken => $next_result->nextToken);
        push @{ $result->robotApplicationSummaries }, @{ $next_result->robotApplicationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'robotApplicationSummaries') foreach (@{ $result->robotApplicationSummaries });
        $result = $self->ListRobotApplications(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'robotApplicationSummaries') foreach (@{ $result->robotApplicationSummaries });
    }

    return undef
  }
  sub ListAllRobots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRobots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRobots(@_, nextToken => $next_result->nextToken);
        push @{ $result->robots }, @{ $next_result->robots };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'robots') foreach (@{ $result->robots });
        $result = $self->ListRobots(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'robots') foreach (@{ $result->robots });
    }

    return undef
  }
  sub ListAllSimulationApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSimulationApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSimulationApplications(@_, nextToken => $next_result->nextToken);
        push @{ $result->simulationApplicationSummaries }, @{ $next_result->simulationApplicationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'simulationApplicationSummaries') foreach (@{ $result->simulationApplicationSummaries });
        $result = $self->ListSimulationApplications(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'simulationApplicationSummaries') foreach (@{ $result->simulationApplicationSummaries });
    }

    return undef
  }
  sub ListAllSimulationJobBatches {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSimulationJobBatches(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSimulationJobBatches(@_, nextToken => $next_result->nextToken);
        push @{ $result->simulationJobBatchSummaries }, @{ $next_result->simulationJobBatchSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'simulationJobBatchSummaries') foreach (@{ $result->simulationJobBatchSummaries });
        $result = $self->ListSimulationJobBatches(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'simulationJobBatchSummaries') foreach (@{ $result->simulationJobBatchSummaries });
    }

    return undef
  }
  sub ListAllSimulationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSimulationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSimulationJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->simulationJobSummaries }, @{ $next_result->simulationJobSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'simulationJobSummaries') foreach (@{ $result->simulationJobSummaries });
        $result = $self->ListSimulationJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'simulationJobSummaries') foreach (@{ $result->simulationJobSummaries });
    }

    return undef
  }
  sub ListAllWorldExportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorldExportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorldExportJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->worldExportJobSummaries }, @{ $next_result->worldExportJobSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'worldExportJobSummaries') foreach (@{ $result->worldExportJobSummaries });
        $result = $self->ListWorldExportJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'worldExportJobSummaries') foreach (@{ $result->worldExportJobSummaries });
    }

    return undef
  }
  sub ListAllWorldGenerationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorldGenerationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorldGenerationJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->worldGenerationJobSummaries }, @{ $next_result->worldGenerationJobSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'worldGenerationJobSummaries') foreach (@{ $result->worldGenerationJobSummaries });
        $result = $self->ListWorldGenerationJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'worldGenerationJobSummaries') foreach (@{ $result->worldGenerationJobSummaries });
    }

    return undef
  }
  sub ListAllWorlds {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorlds(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorlds(@_, nextToken => $next_result->nextToken);
        push @{ $result->worldSummaries }, @{ $next_result->worldSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'worldSummaries') foreach (@{ $result->worldSummaries });
        $result = $self->ListWorlds(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'worldSummaries') foreach (@{ $result->worldSummaries });
    }

    return undef
  }
  sub ListAllWorldTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorldTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorldTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->templateSummaries }, @{ $next_result->templateSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'templateSummaries') foreach (@{ $result->templateSummaries });
        $result = $self->ListWorldTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'templateSummaries') foreach (@{ $result->templateSummaries });
    }

    return undef
  }


  sub operations { qw/BatchDeleteWorlds BatchDescribeSimulationJob CancelDeploymentJob CancelSimulationJob CancelSimulationJobBatch CancelWorldExportJob CancelWorldGenerationJob CreateDeploymentJob CreateFleet CreateRobot CreateRobotApplication CreateRobotApplicationVersion CreateSimulationApplication CreateSimulationApplicationVersion CreateSimulationJob CreateWorldExportJob CreateWorldGenerationJob CreateWorldTemplate DeleteFleet DeleteRobot DeleteRobotApplication DeleteSimulationApplication DeleteWorldTemplate DeregisterRobot DescribeDeploymentJob DescribeFleet DescribeRobot DescribeRobotApplication DescribeSimulationApplication DescribeSimulationJob DescribeSimulationJobBatch DescribeWorld DescribeWorldExportJob DescribeWorldGenerationJob DescribeWorldTemplate GetWorldTemplateBody ListDeploymentJobs ListFleets ListRobotApplications ListRobots ListSimulationApplications ListSimulationJobBatches ListSimulationJobs ListTagsForResource ListWorldExportJobs ListWorldGenerationJobs ListWorlds ListWorldTemplates RegisterRobot RestartSimulationJob StartSimulationJobBatch SyncDeploymentJob TagResource UntagResource UpdateRobotApplication UpdateSimulationApplication UpdateWorldTemplate / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker - Perl Interface to AWS AWS RoboMaker

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Robomaker');
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

This section provides documentation for the AWS RoboMaker API
operations.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29>


=head1 METHODS

=head2 BatchDeleteWorlds

=over

=item Worlds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Robomaker::BatchDeleteWorlds>

Returns: a L<Paws::Robomaker::BatchDeleteWorldsResponse> instance

Deletes one or more worlds in a batch operation.


=head2 BatchDescribeSimulationJob

=over

=item Jobs => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Robomaker::BatchDescribeSimulationJob>

Returns: a L<Paws::Robomaker::BatchDescribeSimulationJobResponse> instance

Describes one or more simulation jobs.


=head2 CancelDeploymentJob

=over

=item Job => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::CancelDeploymentJob>

Returns: a L<Paws::Robomaker::CancelDeploymentJobResponse> instance

Cancels the specified deployment job.


=head2 CancelSimulationJob

=over

=item Job => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::CancelSimulationJob>

Returns: a L<Paws::Robomaker::CancelSimulationJobResponse> instance

Cancels the specified simulation job.


=head2 CancelSimulationJobBatch

=over

=item Batch => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::CancelSimulationJobBatch>

Returns: a L<Paws::Robomaker::CancelSimulationJobBatchResponse> instance

Cancels a simulation job batch. When you cancel a simulation job batch,
you are also cancelling all of the active simulation jobs created as
part of the batch.


=head2 CancelWorldExportJob

=over

=item Job => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::CancelWorldExportJob>

Returns: a L<Paws::Robomaker::CancelWorldExportJobResponse> instance

Cancels the specified export job.


=head2 CancelWorldGenerationJob

=over

=item Job => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::CancelWorldGenerationJob>

Returns: a L<Paws::Robomaker::CancelWorldGenerationJobResponse> instance

Cancels the specified world generator job.


=head2 CreateDeploymentJob

=over

=item ClientRequestToken => Str

=item DeploymentApplicationConfigs => ArrayRef[L<Paws::Robomaker::DeploymentApplicationConfig>]

=item Fleet => Str

=item [DeploymentConfig => L<Paws::Robomaker::DeploymentConfig>]

=item [Tags => L<Paws::Robomaker::TagMap>]


=back

Each argument is described in detail in: L<Paws::Robomaker::CreateDeploymentJob>

Returns: a L<Paws::Robomaker::CreateDeploymentJobResponse> instance

Deploys a specific version of a robot application to robots in a fleet.

The robot application must have a numbered C<applicationVersion> for
consistency reasons. To create a new version, use
C<CreateRobotApplicationVersion> or see Creating a Robot Application
Version
(https://docs.aws.amazon.com/robomaker/latest/dg/create-robot-application-version.html).

After 90 days, deployment jobs expire and will be deleted. They will no
longer be accessible.


=head2 CreateFleet

=over

=item Name => Str

=item [Tags => L<Paws::Robomaker::TagMap>]


=back

Each argument is described in detail in: L<Paws::Robomaker::CreateFleet>

Returns: a L<Paws::Robomaker::CreateFleetResponse> instance

Creates a fleet, a logical group of robots running the same robot
application.


=head2 CreateRobot

=over

=item Architecture => Str

=item GreengrassGroupId => Str

=item Name => Str

=item [Tags => L<Paws::Robomaker::TagMap>]


=back

Each argument is described in detail in: L<Paws::Robomaker::CreateRobot>

Returns: a L<Paws::Robomaker::CreateRobotResponse> instance

Creates a robot.


=head2 CreateRobotApplication

=over

=item Name => Str

=item RobotSoftwareSuite => L<Paws::Robomaker::RobotSoftwareSuite>

=item Sources => ArrayRef[L<Paws::Robomaker::SourceConfig>]

=item [Tags => L<Paws::Robomaker::TagMap>]


=back

Each argument is described in detail in: L<Paws::Robomaker::CreateRobotApplication>

Returns: a L<Paws::Robomaker::CreateRobotApplicationResponse> instance

Creates a robot application.


=head2 CreateRobotApplicationVersion

=over

=item Application => Str

=item [CurrentRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::CreateRobotApplicationVersion>

Returns: a L<Paws::Robomaker::CreateRobotApplicationVersionResponse> instance

Creates a version of a robot application.


=head2 CreateSimulationApplication

=over

=item Name => Str

=item RobotSoftwareSuite => L<Paws::Robomaker::RobotSoftwareSuite>

=item SimulationSoftwareSuite => L<Paws::Robomaker::SimulationSoftwareSuite>

=item Sources => ArrayRef[L<Paws::Robomaker::SourceConfig>]

=item [RenderingEngine => L<Paws::Robomaker::RenderingEngine>]

=item [Tags => L<Paws::Robomaker::TagMap>]


=back

Each argument is described in detail in: L<Paws::Robomaker::CreateSimulationApplication>

Returns: a L<Paws::Robomaker::CreateSimulationApplicationResponse> instance

Creates a simulation application.


=head2 CreateSimulationApplicationVersion

=over

=item Application => Str

=item [CurrentRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::CreateSimulationApplicationVersion>

Returns: a L<Paws::Robomaker::CreateSimulationApplicationVersionResponse> instance

Creates a simulation application with a specific revision id.


=head2 CreateSimulationJob

=over

=item IamRole => Str

=item MaxJobDurationInSeconds => Int

=item [ClientRequestToken => Str]

=item [Compute => L<Paws::Robomaker::Compute>]

=item [DataSources => ArrayRef[L<Paws::Robomaker::DataSourceConfig>]]

=item [FailureBehavior => Str]

=item [LoggingConfig => L<Paws::Robomaker::LoggingConfig>]

=item [OutputLocation => L<Paws::Robomaker::OutputLocation>]

=item [RobotApplications => ArrayRef[L<Paws::Robomaker::RobotApplicationConfig>]]

=item [SimulationApplications => ArrayRef[L<Paws::Robomaker::SimulationApplicationConfig>]]

=item [Tags => L<Paws::Robomaker::TagMap>]

=item [VpcConfig => L<Paws::Robomaker::VPCConfig>]


=back

Each argument is described in detail in: L<Paws::Robomaker::CreateSimulationJob>

Returns: a L<Paws::Robomaker::CreateSimulationJobResponse> instance

Creates a simulation job.

After 90 days, simulation jobs expire and will be deleted. They will no
longer be accessible.


=head2 CreateWorldExportJob

=over

=item IamRole => Str

=item OutputLocation => L<Paws::Robomaker::OutputLocation>

=item Worlds => ArrayRef[Str|Undef]

=item [ClientRequestToken => Str]

=item [Tags => L<Paws::Robomaker::TagMap>]


=back

Each argument is described in detail in: L<Paws::Robomaker::CreateWorldExportJob>

Returns: a L<Paws::Robomaker::CreateWorldExportJobResponse> instance

Creates a world export job.


=head2 CreateWorldGenerationJob

=over

=item Template => Str

=item WorldCount => L<Paws::Robomaker::WorldCount>

=item [ClientRequestToken => Str]

=item [Tags => L<Paws::Robomaker::TagMap>]

=item [WorldTags => L<Paws::Robomaker::TagMap>]


=back

Each argument is described in detail in: L<Paws::Robomaker::CreateWorldGenerationJob>

Returns: a L<Paws::Robomaker::CreateWorldGenerationJobResponse> instance

Creates worlds using the specified template.


=head2 CreateWorldTemplate

=over

=item [ClientRequestToken => Str]

=item [Name => Str]

=item [Tags => L<Paws::Robomaker::TagMap>]

=item [TemplateBody => Str]

=item [TemplateLocation => L<Paws::Robomaker::TemplateLocation>]


=back

Each argument is described in detail in: L<Paws::Robomaker::CreateWorldTemplate>

Returns: a L<Paws::Robomaker::CreateWorldTemplateResponse> instance

Creates a world template.


=head2 DeleteFleet

=over

=item Fleet => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::DeleteFleet>

Returns: a L<Paws::Robomaker::DeleteFleetResponse> instance

Deletes a fleet.


=head2 DeleteRobot

=over

=item Robot => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::DeleteRobot>

Returns: a L<Paws::Robomaker::DeleteRobotResponse> instance

Deletes a robot.


=head2 DeleteRobotApplication

=over

=item Application => Str

=item [ApplicationVersion => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::DeleteRobotApplication>

Returns: a L<Paws::Robomaker::DeleteRobotApplicationResponse> instance

Deletes a robot application.


=head2 DeleteSimulationApplication

=over

=item Application => Str

=item [ApplicationVersion => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::DeleteSimulationApplication>

Returns: a L<Paws::Robomaker::DeleteSimulationApplicationResponse> instance

Deletes a simulation application.


=head2 DeleteWorldTemplate

=over

=item Template => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::DeleteWorldTemplate>

Returns: a L<Paws::Robomaker::DeleteWorldTemplateResponse> instance

Deletes a world template.


=head2 DeregisterRobot

=over

=item Fleet => Str

=item Robot => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::DeregisterRobot>

Returns: a L<Paws::Robomaker::DeregisterRobotResponse> instance

Deregisters a robot.


=head2 DescribeDeploymentJob

=over

=item Job => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::DescribeDeploymentJob>

Returns: a L<Paws::Robomaker::DescribeDeploymentJobResponse> instance

Describes a deployment job.


=head2 DescribeFleet

=over

=item Fleet => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::DescribeFleet>

Returns: a L<Paws::Robomaker::DescribeFleetResponse> instance

Describes a fleet.


=head2 DescribeRobot

=over

=item Robot => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::DescribeRobot>

Returns: a L<Paws::Robomaker::DescribeRobotResponse> instance

Describes a robot.


=head2 DescribeRobotApplication

=over

=item Application => Str

=item [ApplicationVersion => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::DescribeRobotApplication>

Returns: a L<Paws::Robomaker::DescribeRobotApplicationResponse> instance

Describes a robot application.


=head2 DescribeSimulationApplication

=over

=item Application => Str

=item [ApplicationVersion => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::DescribeSimulationApplication>

Returns: a L<Paws::Robomaker::DescribeSimulationApplicationResponse> instance

Describes a simulation application.


=head2 DescribeSimulationJob

=over

=item Job => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::DescribeSimulationJob>

Returns: a L<Paws::Robomaker::DescribeSimulationJobResponse> instance

Describes a simulation job.


=head2 DescribeSimulationJobBatch

=over

=item Batch => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::DescribeSimulationJobBatch>

Returns: a L<Paws::Robomaker::DescribeSimulationJobBatchResponse> instance

Describes a simulation job batch.


=head2 DescribeWorld

=over

=item World => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::DescribeWorld>

Returns: a L<Paws::Robomaker::DescribeWorldResponse> instance

Describes a world.


=head2 DescribeWorldExportJob

=over

=item Job => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::DescribeWorldExportJob>

Returns: a L<Paws::Robomaker::DescribeWorldExportJobResponse> instance

Describes a world export job.


=head2 DescribeWorldGenerationJob

=over

=item Job => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::DescribeWorldGenerationJob>

Returns: a L<Paws::Robomaker::DescribeWorldGenerationJobResponse> instance

Describes a world generation job.


=head2 DescribeWorldTemplate

=over

=item Template => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::DescribeWorldTemplate>

Returns: a L<Paws::Robomaker::DescribeWorldTemplateResponse> instance

Describes a world template.


=head2 GetWorldTemplateBody

=over

=item [GenerationJob => Str]

=item [Template => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::GetWorldTemplateBody>

Returns: a L<Paws::Robomaker::GetWorldTemplateBodyResponse> instance

Gets the world template body.


=head2 ListDeploymentJobs

=over

=item [Filters => ArrayRef[L<Paws::Robomaker::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::ListDeploymentJobs>

Returns: a L<Paws::Robomaker::ListDeploymentJobsResponse> instance

Returns a list of deployment jobs for a fleet. You can optionally
provide filters to retrieve specific deployment jobs.


=head2 ListFleets

=over

=item [Filters => ArrayRef[L<Paws::Robomaker::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::ListFleets>

Returns: a L<Paws::Robomaker::ListFleetsResponse> instance

Returns a list of fleets. You can optionally provide filters to
retrieve specific fleets.


=head2 ListRobotApplications

=over

=item [Filters => ArrayRef[L<Paws::Robomaker::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VersionQualifier => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::ListRobotApplications>

Returns: a L<Paws::Robomaker::ListRobotApplicationsResponse> instance

Returns a list of robot application. You can optionally provide filters
to retrieve specific robot applications.


=head2 ListRobots

=over

=item [Filters => ArrayRef[L<Paws::Robomaker::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::ListRobots>

Returns: a L<Paws::Robomaker::ListRobotsResponse> instance

Returns a list of robots. You can optionally provide filters to
retrieve specific robots.


=head2 ListSimulationApplications

=over

=item [Filters => ArrayRef[L<Paws::Robomaker::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VersionQualifier => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::ListSimulationApplications>

Returns: a L<Paws::Robomaker::ListSimulationApplicationsResponse> instance

Returns a list of simulation applications. You can optionally provide
filters to retrieve specific simulation applications.


=head2 ListSimulationJobBatches

=over

=item [Filters => ArrayRef[L<Paws::Robomaker::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::ListSimulationJobBatches>

Returns: a L<Paws::Robomaker::ListSimulationJobBatchesResponse> instance

Returns a list simulation job batches. You can optionally provide
filters to retrieve specific simulation batch jobs.


=head2 ListSimulationJobs

=over

=item [Filters => ArrayRef[L<Paws::Robomaker::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::ListSimulationJobs>

Returns: a L<Paws::Robomaker::ListSimulationJobsResponse> instance

Returns a list of simulation jobs. You can optionally provide filters
to retrieve specific simulation jobs.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::ListTagsForResource>

Returns: a L<Paws::Robomaker::ListTagsForResourceResponse> instance

Lists all tags on a AWS RoboMaker resource.


=head2 ListWorldExportJobs

=over

=item [Filters => ArrayRef[L<Paws::Robomaker::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::ListWorldExportJobs>

Returns: a L<Paws::Robomaker::ListWorldExportJobsResponse> instance

Lists world export jobs.


=head2 ListWorldGenerationJobs

=over

=item [Filters => ArrayRef[L<Paws::Robomaker::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::ListWorldGenerationJobs>

Returns: a L<Paws::Robomaker::ListWorldGenerationJobsResponse> instance

Lists world generator jobs.


=head2 ListWorlds

=over

=item [Filters => ArrayRef[L<Paws::Robomaker::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::ListWorlds>

Returns: a L<Paws::Robomaker::ListWorldsResponse> instance

Lists worlds.


=head2 ListWorldTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::ListWorldTemplates>

Returns: a L<Paws::Robomaker::ListWorldTemplatesResponse> instance

Lists world templates.


=head2 RegisterRobot

=over

=item Fleet => Str

=item Robot => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::RegisterRobot>

Returns: a L<Paws::Robomaker::RegisterRobotResponse> instance

Registers a robot with a fleet.


=head2 RestartSimulationJob

=over

=item Job => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::RestartSimulationJob>

Returns: a L<Paws::Robomaker::RestartSimulationJobResponse> instance

Restarts a running simulation job.


=head2 StartSimulationJobBatch

=over

=item CreateSimulationJobRequests => ArrayRef[L<Paws::Robomaker::SimulationJobRequest>]

=item [BatchPolicy => L<Paws::Robomaker::BatchPolicy>]

=item [ClientRequestToken => Str]

=item [Tags => L<Paws::Robomaker::TagMap>]


=back

Each argument is described in detail in: L<Paws::Robomaker::StartSimulationJobBatch>

Returns: a L<Paws::Robomaker::StartSimulationJobBatchResponse> instance

Starts a new simulation job batch. The batch is defined using one or
more C<SimulationJobRequest> objects.


=head2 SyncDeploymentJob

=over

=item ClientRequestToken => Str

=item Fleet => Str


=back

Each argument is described in detail in: L<Paws::Robomaker::SyncDeploymentJob>

Returns: a L<Paws::Robomaker::SyncDeploymentJobResponse> instance

Syncrhonizes robots in a fleet to the latest deployment. This is
helpful if robots were added after a deployment.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Robomaker::TagMap>


=back

Each argument is described in detail in: L<Paws::Robomaker::TagResource>

Returns: a L<Paws::Robomaker::TagResourceResponse> instance

Adds or edits tags for a AWS RoboMaker resource.

Each tag consists of a tag key and a tag value. Tag keys and tag values
are both required, but tag values can be empty strings.

For information about the rules that apply to tag keys and tag values,
see User-Defined Tag Restrictions
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
in the I<AWS Billing and Cost Management User Guide>.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Robomaker::UntagResource>

Returns: a L<Paws::Robomaker::UntagResourceResponse> instance

Removes the specified tags from the specified AWS RoboMaker resource.

To remove a tag, specify the tag key. To change the tag value of an
existing tag key, use C<TagResource>
(https://docs.aws.amazon.com/robomaker/latest/dg/API_TagResource.html).


=head2 UpdateRobotApplication

=over

=item Application => Str

=item RobotSoftwareSuite => L<Paws::Robomaker::RobotSoftwareSuite>

=item Sources => ArrayRef[L<Paws::Robomaker::SourceConfig>]

=item [CurrentRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Robomaker::UpdateRobotApplication>

Returns: a L<Paws::Robomaker::UpdateRobotApplicationResponse> instance

Updates a robot application.


=head2 UpdateSimulationApplication

=over

=item Application => Str

=item RobotSoftwareSuite => L<Paws::Robomaker::RobotSoftwareSuite>

=item SimulationSoftwareSuite => L<Paws::Robomaker::SimulationSoftwareSuite>

=item Sources => ArrayRef[L<Paws::Robomaker::SourceConfig>]

=item [CurrentRevisionId => Str]

=item [RenderingEngine => L<Paws::Robomaker::RenderingEngine>]


=back

Each argument is described in detail in: L<Paws::Robomaker::UpdateSimulationApplication>

Returns: a L<Paws::Robomaker::UpdateSimulationApplicationResponse> instance

Updates a simulation application.


=head2 UpdateWorldTemplate

=over

=item Template => Str

=item [Name => Str]

=item [TemplateBody => Str]

=item [TemplateLocation => L<Paws::Robomaker::TemplateLocation>]


=back

Each argument is described in detail in: L<Paws::Robomaker::UpdateWorldTemplate>

Returns: a L<Paws::Robomaker::UpdateWorldTemplateResponse> instance

Updates a world template.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDeploymentJobs(sub { },[Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllDeploymentJobs([Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - deploymentJobs, passing the object as the first parameter, and the string 'deploymentJobs' as the second parameter 

If not, it will return a a L<Paws::Robomaker::ListDeploymentJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFleets(sub { },[Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllFleets([Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - fleetDetails, passing the object as the first parameter, and the string 'fleetDetails' as the second parameter 

If not, it will return a a L<Paws::Robomaker::ListFleetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRobotApplications(sub { },[Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str, VersionQualifier => Str])

=head2 ListAllRobotApplications([Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str, VersionQualifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - robotApplicationSummaries, passing the object as the first parameter, and the string 'robotApplicationSummaries' as the second parameter 

If not, it will return a a L<Paws::Robomaker::ListRobotApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRobots(sub { },[Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllRobots([Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - robots, passing the object as the first parameter, and the string 'robots' as the second parameter 

If not, it will return a a L<Paws::Robomaker::ListRobotsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSimulationApplications(sub { },[Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str, VersionQualifier => Str])

=head2 ListAllSimulationApplications([Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str, VersionQualifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - simulationApplicationSummaries, passing the object as the first parameter, and the string 'simulationApplicationSummaries' as the second parameter 

If not, it will return a a L<Paws::Robomaker::ListSimulationApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSimulationJobBatches(sub { },[Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllSimulationJobBatches([Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - simulationJobBatchSummaries, passing the object as the first parameter, and the string 'simulationJobBatchSummaries' as the second parameter 

If not, it will return a a L<Paws::Robomaker::ListSimulationJobBatchesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSimulationJobs(sub { },[Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllSimulationJobs([Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - simulationJobSummaries, passing the object as the first parameter, and the string 'simulationJobSummaries' as the second parameter 

If not, it will return a a L<Paws::Robomaker::ListSimulationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorldExportJobs(sub { },[Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllWorldExportJobs([Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - worldExportJobSummaries, passing the object as the first parameter, and the string 'worldExportJobSummaries' as the second parameter 

If not, it will return a a L<Paws::Robomaker::ListWorldExportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorldGenerationJobs(sub { },[Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllWorldGenerationJobs([Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - worldGenerationJobSummaries, passing the object as the first parameter, and the string 'worldGenerationJobSummaries' as the second parameter 

If not, it will return a a L<Paws::Robomaker::ListWorldGenerationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorlds(sub { },[Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllWorlds([Filters => ArrayRef[L<Paws::Robomaker::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - worldSummaries, passing the object as the first parameter, and the string 'worldSummaries' as the second parameter 

If not, it will return a a L<Paws::Robomaker::ListWorldsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorldTemplates(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllWorldTemplates([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - templateSummaries, passing the object as the first parameter, and the string 'templateSummaries' as the second parameter 

If not, it will return a a L<Paws::Robomaker::ListWorldTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

