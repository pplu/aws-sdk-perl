package Paws::GameLift;
  use Moose;
  sub service { 'gamelift' }
  sub signing_name { 'gamelift' }
  sub version { '2015-10-01' }
  sub target_prefix { 'GameLift' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AcceptMatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::AcceptMatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGameSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateGameSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGameSessionQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateGameSessionQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMatchmakingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateMatchmakingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMatchmakingRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateMatchmakingRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePlayerSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreatePlayerSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePlayerSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreatePlayerSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcPeeringAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateVpcPeeringAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::CreateVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGameSessionQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteGameSessionQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMatchmakingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteMatchmakingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMatchmakingRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteMatchmakingRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteScalingPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcPeeringAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteVpcPeeringAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DeleteVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEC2InstanceLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeEC2InstanceLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetCapacity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetCapacity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetPortSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetPortSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetUtilization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeFleetUtilization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGameSessionDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeGameSessionDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGameSessionPlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeGameSessionPlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGameSessionQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeGameSessionQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGameSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeGameSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMatchmaking {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeMatchmaking', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMatchmakingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeMatchmakingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMatchmakingRuleSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeMatchmakingRuleSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePlayerSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribePlayerSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRuntimeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeRuntimeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScalingPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeScalingPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcPeeringAuthorizations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeVpcPeeringAuthorizations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcPeeringConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::DescribeVpcPeeringConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGameSessionLogUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::GetGameSessionLogUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstanceAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::GetInstanceAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuilds {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListBuilds', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ListFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::PutScalingPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RequestUploadCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::RequestUploadCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResolveAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ResolveAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchGameSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::SearchGameSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFleetActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::StartFleetActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartGameSessionPlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::StartGameSessionPlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMatchBackfill {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::StartMatchBackfill', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMatchmaking {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::StartMatchmaking', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopFleetActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::StopFleetActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopGameSessionPlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::StopGameSessionPlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopMatchmaking {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::StopMatchmaking', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBuild {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateBuild', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFleetAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateFleetAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFleetCapacity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateFleetCapacity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFleetPortSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateFleetPortSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGameSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateGameSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGameSessionQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateGameSessionQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMatchmakingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateMatchmakingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRuntimeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::UpdateRuntimeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidateMatchmakingRuleSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GameLift::ValidateMatchmakingRuleSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllFleetAttributes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFleetAttributes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFleetAttributes(@_, NextToken => $next_result->NextToken);
        push @{ $result->FleetAttributes }, @{ $next_result->FleetAttributes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FleetAttributes') foreach (@{ $result->FleetAttributes });
        $result = $self->DescribeFleetAttributes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FleetAttributes') foreach (@{ $result->FleetAttributes });
    }

    return undef
  }
  sub DescribeAllFleetCapacity {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFleetCapacity(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFleetCapacity(@_, NextToken => $next_result->NextToken);
        push @{ $result->FleetCapacity }, @{ $next_result->FleetCapacity };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FleetCapacity') foreach (@{ $result->FleetCapacity });
        $result = $self->DescribeFleetCapacity(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FleetCapacity') foreach (@{ $result->FleetCapacity });
    }

    return undef
  }
  sub DescribeAllFleetEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFleetEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFleetEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->Events }, @{ $next_result->Events };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Events') foreach (@{ $result->Events });
        $result = $self->DescribeFleetEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Events') foreach (@{ $result->Events });
    }

    return undef
  }
  sub DescribeAllFleetUtilization {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFleetUtilization(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFleetUtilization(@_, NextToken => $next_result->NextToken);
        push @{ $result->FleetUtilization }, @{ $next_result->FleetUtilization };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FleetUtilization') foreach (@{ $result->FleetUtilization });
        $result = $self->DescribeFleetUtilization(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FleetUtilization') foreach (@{ $result->FleetUtilization });
    }

    return undef
  }
  sub DescribeAllGameSessionDetails {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeGameSessionDetails(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeGameSessionDetails(@_, NextToken => $next_result->NextToken);
        push @{ $result->GameSessionDetails }, @{ $next_result->GameSessionDetails };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GameSessionDetails') foreach (@{ $result->GameSessionDetails });
        $result = $self->DescribeGameSessionDetails(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GameSessionDetails') foreach (@{ $result->GameSessionDetails });
    }

    return undef
  }
  sub DescribeAllGameSessionQueues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeGameSessionQueues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeGameSessionQueues(@_, NextToken => $next_result->NextToken);
        push @{ $result->GameSessionQueues }, @{ $next_result->GameSessionQueues };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GameSessionQueues') foreach (@{ $result->GameSessionQueues });
        $result = $self->DescribeGameSessionQueues(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GameSessionQueues') foreach (@{ $result->GameSessionQueues });
    }

    return undef
  }
  sub DescribeAllGameSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeGameSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeGameSessions(@_, NextToken => $next_result->NextToken);
        push @{ $result->GameSessions }, @{ $next_result->GameSessions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GameSessions') foreach (@{ $result->GameSessions });
        $result = $self->DescribeGameSessions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GameSessions') foreach (@{ $result->GameSessions });
    }

    return undef
  }
  sub DescribeAllInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->Instances }, @{ $next_result->Instances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Instances') foreach (@{ $result->Instances });
        $result = $self->DescribeInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Instances') foreach (@{ $result->Instances });
    }

    return undef
  }
  sub DescribeAllMatchmakingConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeMatchmakingConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeMatchmakingConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Configurations }, @{ $next_result->Configurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Configurations') foreach (@{ $result->Configurations });
        $result = $self->DescribeMatchmakingConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Configurations') foreach (@{ $result->Configurations });
    }

    return undef
  }
  sub DescribeAllMatchmakingRuleSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeMatchmakingRuleSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeMatchmakingRuleSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->RuleSets }, @{ $next_result->RuleSets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RuleSets') foreach (@{ $result->RuleSets });
        $result = $self->DescribeMatchmakingRuleSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RuleSets') foreach (@{ $result->RuleSets });
    }

    return undef
  }
  sub DescribeAllPlayerSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribePlayerSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribePlayerSessions(@_, NextToken => $next_result->NextToken);
        push @{ $result->PlayerSessions }, @{ $next_result->PlayerSessions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PlayerSessions') foreach (@{ $result->PlayerSessions });
        $result = $self->DescribePlayerSessions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PlayerSessions') foreach (@{ $result->PlayerSessions });
    }

    return undef
  }
  sub DescribeAllScalingPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeScalingPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeScalingPolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->ScalingPolicies }, @{ $next_result->ScalingPolicies };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ScalingPolicies') foreach (@{ $result->ScalingPolicies });
        $result = $self->DescribeScalingPolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ScalingPolicies') foreach (@{ $result->ScalingPolicies });
    }

    return undef
  }
  sub ListAllAliases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAliases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAliases(@_, NextToken => $next_result->NextToken);
        push @{ $result->Aliases }, @{ $next_result->Aliases };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
        $result = $self->ListAliases(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
    }

    return undef
  }
  sub ListAllBuilds {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBuilds(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBuilds(@_, NextToken => $next_result->NextToken);
        push @{ $result->Builds }, @{ $next_result->Builds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Builds') foreach (@{ $result->Builds });
        $result = $self->ListBuilds(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Builds') foreach (@{ $result->Builds });
    }

    return undef
  }
  sub ListAllFleets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFleets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFleets(@_, NextToken => $next_result->NextToken);
        push @{ $result->FleetIds }, @{ $next_result->FleetIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FleetIds') foreach (@{ $result->FleetIds });
        $result = $self->ListFleets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FleetIds') foreach (@{ $result->FleetIds });
    }

    return undef
  }
  sub SearchAllGameSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchGameSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchGameSessions(@_, NextToken => $next_result->NextToken);
        push @{ $result->GameSessions }, @{ $next_result->GameSessions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GameSessions') foreach (@{ $result->GameSessions });
        $result = $self->SearchGameSessions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GameSessions') foreach (@{ $result->GameSessions });
    }

    return undef
  }


  sub operations { qw/AcceptMatch CreateAlias CreateBuild CreateFleet CreateGameSession CreateGameSessionQueue CreateMatchmakingConfiguration CreateMatchmakingRuleSet CreatePlayerSession CreatePlayerSessions CreateVpcPeeringAuthorization CreateVpcPeeringConnection DeleteAlias DeleteBuild DeleteFleet DeleteGameSessionQueue DeleteMatchmakingConfiguration DeleteMatchmakingRuleSet DeleteScalingPolicy DeleteVpcPeeringAuthorization DeleteVpcPeeringConnection DescribeAlias DescribeBuild DescribeEC2InstanceLimits DescribeFleetAttributes DescribeFleetCapacity DescribeFleetEvents DescribeFleetPortSettings DescribeFleetUtilization DescribeGameSessionDetails DescribeGameSessionPlacement DescribeGameSessionQueues DescribeGameSessions DescribeInstances DescribeMatchmaking DescribeMatchmakingConfigurations DescribeMatchmakingRuleSets DescribePlayerSessions DescribeRuntimeConfiguration DescribeScalingPolicies DescribeVpcPeeringAuthorizations DescribeVpcPeeringConnections GetGameSessionLogUrl GetInstanceAccess ListAliases ListBuilds ListFleets PutScalingPolicy RequestUploadCredentials ResolveAlias SearchGameSessions StartFleetActions StartGameSessionPlacement StartMatchBackfill StartMatchmaking StopFleetActions StopGameSessionPlacement StopMatchmaking UpdateAlias UpdateBuild UpdateFleetAttributes UpdateFleetCapacity UpdateFleetPortSettings UpdateGameSession UpdateGameSessionQueue UpdateMatchmakingConfiguration UpdateRuntimeConfiguration ValidateMatchmakingRuleSet / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift - Perl Interface to AWS Amazon GameLift

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('GameLift');
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

Amazon GameLift Service

Amazon GameLift is a managed service for developers who need a
scalable, dedicated server solution for their multiplayer games. Use
Amazon GameLift for these tasks: (1) set up computing resources and
deploy your game servers, (2) run game sessions and get players into
games, (3) automatically scale your resources to meet player demand and
manage costs, and (4) track in-depth metrics on game server performance
and player usage.

The Amazon GameLift service API includes two important function sets:

=over

=item *

B<Manage game sessions and player access> -- Retrieve information on
available game sessions; create new game sessions; send player requests
to join a game session.

=item *

B<Configure and manage game server resources> -- Manage builds, fleets,
queues, and aliases; set auto-scaling policies; retrieve logs and
metrics.

=back

This reference guide describes the low-level service API for Amazon
GameLift. You can use the API functionality with these tools:

=over

=item *

The Amazon Web Services software development kit (AWS SDK
(http://aws.amazon.com/tools/#sdk)) is available in multiple languages
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-supported.html#gamelift-supported-clients)
including C++ and C#. Use the SDK to access the API programmatically
from an application, such as a game client.

=item *

The AWS command-line interface
(https://docs.aws.amazon.com/cli/latest/userguide/) (CLI) tool is
primarily useful for handling administrative actions, such as setting
up and managing Amazon GameLift settings and resources. You can use the
AWS CLI to manage all of your AWS services.

=item *

The AWS Management Console
(https://console.aws.amazon.com/gamelift/home) for Amazon GameLift
provides a web interface to manage your Amazon GameLift settings and
resources. The console includes a dashboard for tracking key resources,
including builds and fleets, and displays usage and performance metrics
for your games as customizable graphs.

=item *

Amazon GameLift Local is a tool for testing your game's integration
with Amazon GameLift before deploying it on the service. This tools
supports a subset of key API actions, which can be called from either
the AWS CLI or programmatically. See Testing an Integration
(https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-testing-local.html).

=back

B<Learn more>

=over

=item *

Developer Guide
(https://docs.aws.amazon.com/gamelift/latest/developerguide/) -- Read
about Amazon GameLift features and how to use them.

=item *

Tutorials (https://gamedev.amazon.com/forums/tutorials) -- Get started
fast with walkthroughs and sample projects.

=item *

GameDev Blog (https://gamedev.amazon.com/blogs/gamedev/) -- Stay up to
date with new features and techniques.

=item *

GameDev Forums
(https://gamedev.amazon.com/forums/spaces/123/gamelift-discussion.html)
-- Connect with the GameDev community.

=item *

Release notes (https://aws.amazon.com/releasenotes/Amazon-GameLift/)
and document history
(https://docs.aws.amazon.com/gamelift/latest/developerguide/doc-history.html)
-- Stay current with updates to the Amazon GameLift service, SDKs, and
documentation.

=back

B<API SUMMARY>

This list offers a functional overview of the Amazon GameLift service
API.

B<Managing Games and Players>

Use these actions to start new game sessions, find existing game
sessions, track game session status and other information, and enable
player access to game sessions.

=over

=item *

B<Discover existing game sessions>

=over

=item *

SearchGameSessions -- Retrieve all available game sessions or search
for game sessions that match a set of criteria.

=back

=item *

B<Start new game sessions>

=over

=item *

Start new games with Queues to find the best available hosting
resources across multiple regions, minimize player latency, and balance
game session activity for efficiency and cost effectiveness.

=over

=item *

StartGameSessionPlacement -- Request a new game session placement and
add one or more players to it.

=item *

DescribeGameSessionPlacement -- Get details on a placement request,
including status.

=item *

StopGameSessionPlacement -- Cancel a placement request.

=back

=item *

CreateGameSession -- Start a new game session on a specific fleet.
I<Available in Amazon GameLift Local.>

=back

=item *

B<Match players to game sessions with FlexMatch matchmaking>

=over

=item *

StartMatchmaking -- Request matchmaking for one players or a group who
want to play together.

=item *

StartMatchBackfill - Request additional player matches to fill empty
slots in an existing game session.

=item *

DescribeMatchmaking -- Get details on a matchmaking request, including
status.

=item *

AcceptMatch -- Register that a player accepts a proposed match, for
matches that require player acceptance.

=item *

StopMatchmaking -- Cancel a matchmaking request.

=back

=item *

B<Manage game session data>

=over

=item *

DescribeGameSessions -- Retrieve metadata for one or more game
sessions, including length of time active and current player count.
I<Available in Amazon GameLift Local.>

=item *

DescribeGameSessionDetails -- Retrieve metadata and the game session
protection setting for one or more game sessions.

=item *

UpdateGameSession -- Change game session settings, such as maximum
player count and join policy.

=item *

GetGameSessionLogUrl -- Get the location of saved logs for a game
session.

=back

=item *

B<Manage player sessions>

=over

=item *

CreatePlayerSession -- Send a request for a player to join a game
session. I<Available in Amazon GameLift Local.>

=item *

CreatePlayerSessions -- Send a request for multiple players to join a
game session. I<Available in Amazon GameLift Local.>

=item *

DescribePlayerSessions -- Get details on player activity, including
status, playing time, and player data. I<Available in Amazon GameLift
Local.>

=back

=back

B<Setting Up and Managing Game Servers>

When setting up Amazon GameLift resources for your game, you first
create a game build
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)
and upload it to Amazon GameLift. You can then use these actions to
configure and manage a fleet of resources to run your game servers,
scale capacity to meet player demand, access performance and
utilization metrics, and more.

=over

=item *

B<Manage game builds>

=over

=item *

CreateBuild -- Create a new build using files stored in an Amazon S3
bucket. To create a build and upload files from a local path, use the
AWS CLI command C<upload-build>.

=item *

ListBuilds -- Get a list of all builds uploaded to a Amazon GameLift
region.

=item *

DescribeBuild -- Retrieve information associated with a build.

=item *

UpdateBuild -- Change build metadata, including build name and version.

=item *

DeleteBuild -- Remove a build from Amazon GameLift.

=back

=item *

B<Manage fleets>

=over

=item *

CreateFleet -- Configure and activate a new fleet to run a build's game
servers.

=item *

ListFleets -- Get a list of all fleet IDs in a Amazon GameLift region
(all statuses).

=item *

DeleteFleet -- Terminate a fleet that is no longer running game servers
or hosting players.

=item *

View / update fleet configurations.

=over

=item *

DescribeFleetAttributes / UpdateFleetAttributes -- View or change a
fleet's metadata and settings for game session protection and resource
creation limits.

=item *

DescribeFleetPortSettings / UpdateFleetPortSettings -- View or change
the inbound permissions (IP address and port setting ranges) allowed
for a fleet.

=item *

DescribeRuntimeConfiguration / UpdateRuntimeConfiguration -- View or
change what server processes (and how many) to run on each instance in
a fleet.

=back

=back

=item *

B<Control fleet capacity>

=over

=item *

DescribeEC2InstanceLimits -- Retrieve maximum number of instances
allowed for the current AWS account and the current usage level.

=item *

DescribeFleetCapacity / UpdateFleetCapacity -- Retrieve the capacity
settings and the current number of instances in a fleet; adjust fleet
capacity settings to scale up or down.

=item *

Autoscale -- Manage auto-scaling rules and apply them to a fleet.

=over

=item *

PutScalingPolicy -- Create a new auto-scaling policy, or update an
existing one.

=item *

DescribeScalingPolicies -- Retrieve an existing auto-scaling policy.

=item *

DeleteScalingPolicy -- Delete an auto-scaling policy and stop it from
affecting a fleet's capacity.

=item *

StartFleetActions -- Restart a fleet's auto-scaling policies.

=item *

StopFleetActions -- Suspend a fleet's auto-scaling policies.

=back

=back

=item *

B<Manage game session queues>

=over

=item *

CreateGameSessionQueue -- Create a queue for processing requests for
new game sessions.

=item *

DescribeGameSessionQueues -- Retrieve game session queues defined in a
Amazon GameLift region.

=item *

UpdateGameSessionQueue -- Change the configuration of a game session
queue.

=item *

DeleteGameSessionQueue -- Remove a game session queue from the region.

=back

=item *

B<Manage FlexMatch resources>

=over

=item *

CreateMatchmakingConfiguration -- Create a matchmaking configuration
with instructions for building a player group and placing in a new game
session.

=item *

DescribeMatchmakingConfigurations -- Retrieve matchmaking
configurations defined a Amazon GameLift region.

=item *

UpdateMatchmakingConfiguration -- Change settings for matchmaking
configuration. queue.

=item *

DeleteMatchmakingConfiguration -- Remove a matchmaking configuration
from the region.

=item *

CreateMatchmakingRuleSet -- Create a set of rules to use when searching
for player matches.

=item *

DescribeMatchmakingRuleSets -- Retrieve matchmaking rule sets defined
in a Amazon GameLift region.

=item *

ValidateMatchmakingRuleSet -- Verify syntax for a set of matchmaking
rules.

=item *

DeleteMatchmakingRuleSet -- Remove a matchmaking rule set from the
region.

=back

=item *

B<Access fleet activity statistics>

=over

=item *

DescribeFleetUtilization -- Get current data on the number of server
processes, game sessions, and players currently active on a fleet.

=item *

DescribeFleetEvents -- Get a fleet's logged events for a specified time
span.

=item *

DescribeGameSessions -- Retrieve metadata associated with one or more
game sessions, including length of time active and current player
count.

=back

=item *

B<Remotely access an instance>

=over

=item *

DescribeInstances -- Get information on each instance in a fleet,
including instance ID, IP address, and status.

=item *

GetInstanceAccess -- Request access credentials needed to remotely
connect to a specified instance in a fleet.

=back

=item *

B<Manage fleet aliases>

=over

=item *

CreateAlias -- Define a new alias and optionally assign it to a fleet.

=item *

ListAliases -- Get all fleet aliases defined in a Amazon GameLift
region.

=item *

DescribeAlias -- Retrieve information on an existing alias.

=item *

UpdateAlias -- Change settings for a alias, such as redirecting it from
one fleet to another.

=item *

DeleteAlias -- Remove an alias from the region.

=item *

ResolveAlias -- Get the fleet ID that a specified alias points to.

=back

=item *

B<Manage VPC peering connections for fleets>

=over

=item *

CreateVpcPeeringAuthorization -- Authorize a peering connection to one
of your VPCs.

=item *

DescribeVpcPeeringAuthorizations -- Retrieve valid peering connection
authorizations.

=item *

DeleteVpcPeeringAuthorization -- Delete a peering connection
authorization.

=item *

CreateVpcPeeringConnection -- Establish a peering connection between
the VPC for a Amazon GameLift fleet and one of your VPCs.

=item *

DescribeVpcPeeringConnections -- Retrieve information on active or
pending VPC peering connections with a Amazon GameLift fleet.

=item *

DeleteVpcPeeringConnection -- Delete a VPC peering connection with a
Amazon GameLift fleet.

=back

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01>


=head1 METHODS

=head2 AcceptMatch

=over

=item AcceptanceType => Str

=item PlayerIds => ArrayRef[Str|Undef]

=item TicketId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::AcceptMatch>

Returns: a L<Paws::GameLift::AcceptMatchOutput> instance

Registers a player's acceptance or rejection of a proposed FlexMatch
match. A matchmaking configuration may require player acceptance; if
so, then matches built with that configuration cannot be completed
unless all players accept the proposed match within a specified time
limit.

When FlexMatch builds a match, all the matchmaking tickets involved in
the proposed match are placed into status C<REQUIRES_ACCEPTANCE>. This
is a trigger for your game to get acceptance from all players in the
ticket. Acceptances are only valid for tickets when they are in this
status; all other acceptances result in an error.

To register acceptance, specify the ticket ID, a response, and one or
more players. Once all players have registered acceptance, the
matchmaking tickets advance to status C<PLACING>, where a new game
session is created for the match.

If any player rejects the match, or if acceptances are not received
before a specified timeout, the proposed match is dropped. The
matchmaking tickets are then handled in one of two ways: For tickets
where all players accepted the match, the ticket status is returned to
C<SEARCHING> to find a new match. For tickets where one or more players
failed to accept the match, the ticket status is set to C<FAILED>, and
processing is terminated. A new matchmaking request for these players
can be submitted as needed.

=over

=item *

StartMatchmaking

=item *

DescribeMatchmaking

=item *

StopMatchmaking

=item *

AcceptMatch

=item *

StartMatchBackfill

=back



=head2 CreateAlias

=over

=item Name => Str

=item RoutingStrategy => L<Paws::GameLift::RoutingStrategy>

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateAlias>

Returns: a L<Paws::GameLift::CreateAliasOutput> instance

Creates an alias for a fleet. In most situations, you can use an alias
ID in place of a fleet ID. By using a fleet alias instead of a specific
fleet ID, you can switch gameplay and players to a new fleet without
changing your game client or other game components. For example, for
games in production, using an alias allows you to seamlessly redirect
your player base to a new game server update.

Amazon GameLift supports two types of routing strategies for aliases:
simple and terminal. A simple alias points to an active fleet. A
terminal alias is used to display messaging or link to a URL instead of
routing players to an active fleet. For example, you might use a
terminal alias when a game version is no longer supported and you want
to direct players to an upgrade site.

To create a fleet alias, specify an alias name, routing strategy, and
optional description. Each simple alias can point to only one fleet,
but a fleet can have multiple aliases. If successful, a new alias
record is returned, including an alias ID, which you can reference when
creating a game session. You can reassign an alias to another fleet by
calling C<UpdateAlias>.

=over

=item *

CreateAlias

=item *

ListAliases

=item *

DescribeAlias

=item *

UpdateAlias

=item *

DeleteAlias

=item *

ResolveAlias

=back



=head2 CreateBuild

=over

=item [Name => Str]

=item [OperatingSystem => Str]

=item [StorageLocation => L<Paws::GameLift::S3Location>]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateBuild>

Returns: a L<Paws::GameLift::CreateBuildOutput> instance

Creates a new Amazon GameLift build record for your game server binary
files and points to the location of your game server build files in an
Amazon Simple Storage Service (Amazon S3) location.

Game server binaries must be combined into a C<.zip> file for use with
Amazon GameLift. See Uploading Your Game
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)
for more information.

To create new builds quickly and easily, use the AWS CLI command B<
upload-build
(https://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html)
>. This helper command uploads your build and creates a new build
record in one step, and automatically handles the necessary
permissions. See Upload Build Files to Amazon GameLift
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html)
for more help.

The C<CreateBuild> operation should be used only when you need to
manually upload your build files, as in the following scenarios:

=over

=item *

Store a build file in an Amazon S3 bucket under your own AWS account.
To use this option, you must first give Amazon GameLift access to that
Amazon S3 bucket. See Create a Build with Files in Amazon S3
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build)
for detailed help. To create a new build record using files in your
Amazon S3 bucket, call C<CreateBuild> and specify a build name,
operating system, and the storage location of your game build.

=item *

Upload a build file directly to Amazon GameLift's Amazon S3 account. To
use this option, you first call C<CreateBuild> with a build name and
operating system. This action creates a new build record and returns an
Amazon S3 storage location (bucket and key only) and temporary access
credentials. Use the credentials to manually upload your build file to
the storage location (see the Amazon S3 topic Uploading Objects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html)).
You can upload files to a location only once.

=back

If successful, this operation creates a new build record with a unique
build ID and places it in C<INITIALIZED> status. You can use
DescribeBuild to check the status of your build. A build must be in
C<READY> status before it can be used to create fleets.

=over

=item *

CreateBuild

=item *

ListBuilds

=item *

DescribeBuild

=item *

UpdateBuild

=item *

DeleteBuild

=back



=head2 CreateFleet

=over

=item BuildId => Str

=item EC2InstanceType => Str

=item Name => Str

=item [Description => Str]

=item [EC2InboundPermissions => ArrayRef[L<Paws::GameLift::IpPermission>]]

=item [FleetType => Str]

=item [LogPaths => ArrayRef[Str|Undef]]

=item [MetricGroups => ArrayRef[Str|Undef]]

=item [NewGameSessionProtectionPolicy => Str]

=item [PeerVpcAwsAccountId => Str]

=item [PeerVpcId => Str]

=item [ResourceCreationLimitPolicy => L<Paws::GameLift::ResourceCreationLimitPolicy>]

=item [RuntimeConfiguration => L<Paws::GameLift::RuntimeConfiguration>]

=item [ServerLaunchParameters => Str]

=item [ServerLaunchPath => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateFleet>

Returns: a L<Paws::GameLift::CreateFleetOutput> instance

Creates a new fleet to run your game servers. A fleet is a set of
Amazon Elastic Compute Cloud (Amazon EC2) instances, each of which can
run multiple server processes to host game sessions. You set up a fleet
to use instances with certain hardware specifications (see Amazon EC2
Instance Types (http://aws.amazon.com/ec2/instance-types/)), and deploy
your game build to the fleet.

To create a new fleet, you must provide the following: (1) a fleet
name, (2) an EC2 instance type, (3) the build ID for your game build,
and (4) a run-time configuration, which specifies the server processes
to run on each instance in the fleet. If fleet type is not set, the new
fleet will use on-demand instances by default.

If the C<CreateFleet> call is successful, Amazon GameLift performs the
following tasks. You can track the process of a fleet by checking the
fleet status or by monitoring fleet creation events:

=over

=item *

Creates a fleet record. Status: C<NEW>.

=item *

Begins writing events to the fleet event log, which can be accessed in
the Amazon GameLift console.

Sets the fleet's target capacity to 1 (desired instances), which
triggers Amazon GameLift to start one new EC2 instance.

=item *

Downloads the game build to the new instance and installs it. Statuses:
C<DOWNLOADING>, C<VALIDATING>, C<BUILDING>.

=item *

Starts launching server processes on the instance. If the fleet is
configured to run multiple server processes per instance, Amazon
GameLift staggers each launch by a few seconds. Status: C<ACTIVATING>.

=item *

Sets the fleet's status to C<ACTIVE> as soon as one server process is
ready to host a game session.

=back

B<Learn more>

See Amazon GameLift Developer Guide topics in Working with Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

B<Related operations>

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 CreateGameSession

=over

=item MaximumPlayerSessionCount => Int

=item [AliasId => Str]

=item [CreatorId => Str]

=item [FleetId => Str]

=item [GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]]

=item [GameSessionData => Str]

=item [GameSessionId => Str]

=item [IdempotencyToken => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateGameSession>

Returns: a L<Paws::GameLift::CreateGameSessionOutput> instance

Creates a multiplayer game session for players. This action creates a
game session record and assigns an available server process in the
specified fleet to host the game session. A fleet must have an
C<ACTIVE> status before a game session can be created in it.

To create a game session, specify either fleet ID or alias ID and
indicate a maximum number of players to allow in the game session. You
can also provide a name and game-specific properties for this game
session. If successful, a GameSession object is returned containing the
game session properties and other settings you specified.

B<Idempotency tokens.> You can add a token that uniquely identifies
game session requests. This is useful for ensuring that game session
requests are idempotent. Multiple requests with the same idempotency
token are processed only once; subsequent requests return the original
result. All response values are the same with the exception of game
session status, which may change.

B<Resource creation limits.> If you are creating a game session on a
fleet with a resource creation limit policy in force, then you must
specify a creator ID. Without this ID, Amazon GameLift has no way to
evaluate the policy for this new game session request.

B<Player acceptance policy.> By default, newly created game sessions
are open to new players. You can restrict new player access by using
UpdateGameSession to change the game session's player session creation
policy.

B<Game session logs.> Logs are retained for all active game sessions
for 14 days. To access the logs, call GetGameSessionLogUrl to download
the log files.

I<Available in Amazon GameLift Local.>

=over

=item *

CreateGameSession

=item *

DescribeGameSessions

=item *

DescribeGameSessionDetails

=item *

SearchGameSessions

=item *

UpdateGameSession

=item *

GetGameSessionLogUrl

=item *

Game session placements

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back

=back



=head2 CreateGameSessionQueue

=over

=item Name => Str

=item [Destinations => ArrayRef[L<Paws::GameLift::GameSessionQueueDestination>]]

=item [PlayerLatencyPolicies => ArrayRef[L<Paws::GameLift::PlayerLatencyPolicy>]]

=item [TimeoutInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateGameSessionQueue>

Returns: a L<Paws::GameLift::CreateGameSessionQueueOutput> instance

Establishes a new queue for processing requests to place new game
sessions. A queue identifies where new game sessions can be hosted --
by specifying a list of destinations (fleets or aliases) -- and how
long requests can wait in the queue before timing out. You can set up a
queue to try to place game sessions on fleets in multiple regions. To
add placement requests to a queue, call StartGameSessionPlacement and
reference the queue name.

B<Destination order.> When processing a request for a game session,
Amazon GameLift tries each destination in order until it finds one with
available resources to host the new game session. A queue's default
order is determined by how destinations are listed. The default order
is overridden when a game session placement request provides player
latency information. Player latency information enables Amazon GameLift
to prioritize destinations where players report the lowest average
latency, as a result placing the new game session where the majority of
players will have the best possible gameplay experience.

B<Player latency policies.> For placement requests containing player
latency information, use player latency policies to protect individual
players from very high latencies. With a latency cap, even when a
destination can deliver a low latency for most players, the game is not
placed where any individual player is reporting latency higher than a
policy's maximum. A queue can have multiple latency policies, which are
enforced consecutively starting with the policy with the lowest latency
cap. Use multiple policies to gradually relax latency controls; for
example, you might set a policy with a low latency cap for the first 60
seconds, a second policy with a higher cap for the next 60 seconds,
etc.

To create a new queue, provide a name, timeout value, a list of
destinations and, if desired, a set of latency policies. If successful,
a new queue object is returned.

=over

=item *

CreateGameSessionQueue

=item *

DescribeGameSessionQueues

=item *

UpdateGameSessionQueue

=item *

DeleteGameSessionQueue

=back



=head2 CreateMatchmakingConfiguration

=over

=item AcceptanceRequired => Bool

=item GameSessionQueueArns => ArrayRef[Str|Undef]

=item Name => Str

=item RequestTimeoutSeconds => Int

=item RuleSetName => Str

=item [AcceptanceTimeoutSeconds => Int]

=item [AdditionalPlayerCount => Int]

=item [CustomEventData => Str]

=item [Description => Str]

=item [GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]]

=item [GameSessionData => Str]

=item [NotificationTarget => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::CreateMatchmakingConfiguration>

Returns: a L<Paws::GameLift::CreateMatchmakingConfigurationOutput> instance

Defines a new matchmaking configuration for use with FlexMatch. A
matchmaking configuration sets out guidelines for matching players and
getting the matches into games. You can set up multiple matchmaking
configurations to handle the scenarios needed for your game. Each
matchmaking ticket (StartMatchmaking or StartMatchBackfill) specifies a
configuration for the match and provides player attributes to support
the configuration being used.

To create a matchmaking configuration, at a minimum you must specify
the following: configuration name; a rule set that governs how to
evaluate players and find acceptable matches; a game session queue to
use when placing a new game session for the match; and the maximum time
allowed for a matchmaking attempt.

B<Player acceptance> -- In each configuration, you have the option to
require that all players accept participation in a proposed match. To
enable this feature, set I<AcceptanceRequired> to true and specify a
time limit for player acceptance. Players have the option to accept or
reject a proposed match, and a match does not move ahead to game
session placement unless all matched players accept.

B<Matchmaking status notification> -- There are two ways to track the
progress of matchmaking tickets: (1) polling ticket status with
DescribeMatchmaking; or (2) receiving notifications with Amazon Simple
Notification Service (SNS). To use notifications, you first need to set
up an SNS topic to receive the notifications, and provide the topic ARN
in the matchmaking configuration (see Setting up Notifications for
Matchmaking
(https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html)).
Since notifications promise only "best effort" delivery, we recommend
calling C<DescribeMatchmaking> if no notifications are received within
30 seconds.

=over

=item *

CreateMatchmakingConfiguration

=item *

DescribeMatchmakingConfigurations

=item *

UpdateMatchmakingConfiguration

=item *

DeleteMatchmakingConfiguration

=item *

CreateMatchmakingRuleSet

=item *

DescribeMatchmakingRuleSets

=item *

ValidateMatchmakingRuleSet

=item *

DeleteMatchmakingRuleSet

=back



=head2 CreateMatchmakingRuleSet

=over

=item Name => Str

=item RuleSetBody => Str


=back

Each argument is described in detail in: L<Paws::GameLift::CreateMatchmakingRuleSet>

Returns: a L<Paws::GameLift::CreateMatchmakingRuleSetOutput> instance

Creates a new rule set for FlexMatch matchmaking. A rule set describes
the type of match to create, such as the number and size of teams, and
sets the parameters for acceptable player matches, such as minimum
skill level or character type. A rule set is used by a
MatchmakingConfiguration.

To create a matchmaking rule set, provide unique rule set name and the
rule set body in JSON format. Rule sets must be defined in the same
region as the matchmaking configuration they will be used with.

Since matchmaking rule sets cannot be edited, it is a good idea to
check the rule set syntax using ValidateMatchmakingRuleSet before
creating a new rule set.

B<Learn more>

=over

=item *

Build a Rule Set
(https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html)

=item *

Design a Matchmaker
(https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html)

=item *

Matchmaking with FlexMatch
(https://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html)

=back

B<Related operations>

=over

=item *

CreateMatchmakingConfiguration

=item *

DescribeMatchmakingConfigurations

=item *

UpdateMatchmakingConfiguration

=item *

DeleteMatchmakingConfiguration

=item *

CreateMatchmakingRuleSet

=item *

DescribeMatchmakingRuleSets

=item *

ValidateMatchmakingRuleSet

=item *

DeleteMatchmakingRuleSet

=back



=head2 CreatePlayerSession

=over

=item GameSessionId => Str

=item PlayerId => Str

=item [PlayerData => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::CreatePlayerSession>

Returns: a L<Paws::GameLift::CreatePlayerSessionOutput> instance

Adds a player to a game session and creates a player session record.
Before a player can be added, a game session must have an C<ACTIVE>
status, have a creation policy of C<ALLOW_ALL>, and have an open player
slot. To add a group of players to a game session, use
CreatePlayerSessions.

To create a player session, specify a game session ID, player ID, and
optionally a string of player data. If successful, the player is added
to the game session and a new PlayerSession object is returned. Player
sessions cannot be updated.

I<Available in Amazon GameLift Local.>

=over

=item *

CreatePlayerSession

=item *

CreatePlayerSessions

=item *

DescribePlayerSessions

=item *

Game session placements

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back

=back



=head2 CreatePlayerSessions

=over

=item GameSessionId => Str

=item PlayerIds => ArrayRef[Str|Undef]

=item [PlayerDataMap => L<Paws::GameLift::PlayerDataMap>]


=back

Each argument is described in detail in: L<Paws::GameLift::CreatePlayerSessions>

Returns: a L<Paws::GameLift::CreatePlayerSessionsOutput> instance

Adds a group of players to a game session. This action is useful with a
team matching feature. Before players can be added, a game session must
have an C<ACTIVE> status, have a creation policy of C<ALLOW_ALL>, and
have an open player slot. To add a single player to a game session, use
CreatePlayerSession.

To create player sessions, specify a game session ID, a list of player
IDs, and optionally a set of player data strings. If successful, the
players are added to the game session and a set of new PlayerSession
objects is returned. Player sessions cannot be updated.

I<Available in Amazon GameLift Local.>

=over

=item *

CreatePlayerSession

=item *

CreatePlayerSessions

=item *

DescribePlayerSessions

=item *

Game session placements

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back

=back



=head2 CreateVpcPeeringAuthorization

=over

=item GameLiftAwsAccountId => Str

=item PeerVpcId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::CreateVpcPeeringAuthorization>

Returns: a L<Paws::GameLift::CreateVpcPeeringAuthorizationOutput> instance

Requests authorization to create or delete a peer connection between
the VPC for your Amazon GameLift fleet and a virtual private cloud
(VPC) in your AWS account. VPC peering enables the game servers on your
fleet to communicate directly with other AWS resources. Once you've
received authorization, call CreateVpcPeeringConnection to establish
the peering connection. For more information, see VPC Peering with
Amazon GameLift Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).

You can peer with VPCs that are owned by any AWS account you have
access to, including the account that you use to manage your Amazon
GameLift fleets. You cannot peer with VPCs that are in different
regions.

To request authorization to create a connection, call this operation
from the AWS account with the VPC that you want to peer to your Amazon
GameLift fleet. For example, to enable your game servers to retrieve
data from a DynamoDB table, use the account that manages that DynamoDB
resource. Identify the following values: (1) The ID of the VPC that you
want to peer with, and (2) the ID of the AWS account that you use to
manage Amazon GameLift. If successful, VPC peering is authorized for
the specified VPC.

To request authorization to delete a connection, call this operation
from the AWS account with the VPC that is peered with your Amazon
GameLift fleet. Identify the following values: (1) VPC ID that you want
to delete the peering connection for, and (2) ID of the AWS account
that you use to manage Amazon GameLift.

The authorization remains valid for 24 hours unless it is canceled by a
call to DeleteVpcPeeringAuthorization. You must create or delete the
peering connection while the authorization is valid.

=over

=item *

CreateVpcPeeringAuthorization

=item *

DescribeVpcPeeringAuthorizations

=item *

DeleteVpcPeeringAuthorization

=item *

CreateVpcPeeringConnection

=item *

DescribeVpcPeeringConnections

=item *

DeleteVpcPeeringConnection

=back



=head2 CreateVpcPeeringConnection

=over

=item FleetId => Str

=item PeerVpcAwsAccountId => Str

=item PeerVpcId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::CreateVpcPeeringConnection>

Returns: a L<Paws::GameLift::CreateVpcPeeringConnectionOutput> instance

Establishes a VPC peering connection between a virtual private cloud
(VPC) in an AWS account with the VPC for your Amazon GameLift fleet.
VPC peering enables the game servers on your fleet to communicate
directly with other AWS resources. You can peer with VPCs in any AWS
account that you have access to, including the account that you use to
manage your Amazon GameLift fleets. You cannot peer with VPCs that are
in different regions. For more information, see VPC Peering with Amazon
GameLift Fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).

Before calling this operation to establish the peering connection, you
first need to call CreateVpcPeeringAuthorization and identify the VPC
you want to peer with. Once the authorization for the specified VPC is
issued, you have 24 hours to establish the connection. These two
operations handle all tasks necessary to peer the two VPCs, including
acceptance, updating routing tables, etc.

To establish the connection, call this operation from the AWS account
that is used to manage the Amazon GameLift fleets. Identify the
following values: (1) The ID of the fleet you want to be enable a VPC
peering connection for; (2) The AWS account with the VPC that you want
to peer with; and (3) The ID of the VPC you want to peer with. This
operation is asynchronous. If successful, a VpcPeeringConnection
request is created. You can use continuous polling to track the
request's status using DescribeVpcPeeringConnections, or by monitoring
fleet events for success or failure using DescribeFleetEvents.

=over

=item *

CreateVpcPeeringAuthorization

=item *

DescribeVpcPeeringAuthorizations

=item *

DeleteVpcPeeringAuthorization

=item *

CreateVpcPeeringConnection

=item *

DescribeVpcPeeringConnections

=item *

DeleteVpcPeeringConnection

=back



=head2 DeleteAlias

=over

=item AliasId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteAlias>

Returns: nothing

Deletes an alias. This action removes all record of the alias. Game
clients attempting to access a server process using the deleted alias
receive an error. To delete an alias, specify the alias ID to be
deleted.

=over

=item *

CreateAlias

=item *

ListAliases

=item *

DescribeAlias

=item *

UpdateAlias

=item *

DeleteAlias

=item *

ResolveAlias

=back



=head2 DeleteBuild

=over

=item BuildId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteBuild>

Returns: nothing

Deletes a build. This action permanently deletes the build record and
any uploaded build files.

To delete a build, specify its ID. Deleting a build does not affect the
status of any active fleets using the build, but you can no longer
create new fleets with the deleted build.

=over

=item *

CreateBuild

=item *

ListBuilds

=item *

DescribeBuild

=item *

UpdateBuild

=item *

DeleteBuild

=back



=head2 DeleteFleet

=over

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteFleet>

Returns: nothing

Deletes everything related to a fleet. Before deleting a fleet, you
must set the fleet's desired capacity to zero. See UpdateFleetCapacity.

This action removes the fleet's resources and the fleet record. Once a
fleet is deleted, you can no longer use that fleet.

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 DeleteGameSessionQueue

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteGameSessionQueue>

Returns: a L<Paws::GameLift::DeleteGameSessionQueueOutput> instance

Deletes a game session queue. This action means that any
StartGameSessionPlacement requests that reference this queue will fail.
To delete a queue, specify the queue name.

=over

=item *

CreateGameSessionQueue

=item *

DescribeGameSessionQueues

=item *

UpdateGameSessionQueue

=item *

DeleteGameSessionQueue

=back



=head2 DeleteMatchmakingConfiguration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteMatchmakingConfiguration>

Returns: a L<Paws::GameLift::DeleteMatchmakingConfigurationOutput> instance

Permanently removes a FlexMatch matchmaking configuration. To delete,
specify the configuration name. A matchmaking configuration cannot be
deleted if it is being used in any active matchmaking tickets.

=over

=item *

CreateMatchmakingConfiguration

=item *

DescribeMatchmakingConfigurations

=item *

UpdateMatchmakingConfiguration

=item *

DeleteMatchmakingConfiguration

=item *

CreateMatchmakingRuleSet

=item *

DescribeMatchmakingRuleSets

=item *

ValidateMatchmakingRuleSet

=item *

DeleteMatchmakingRuleSet

=back



=head2 DeleteMatchmakingRuleSet

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteMatchmakingRuleSet>

Returns: a L<Paws::GameLift::DeleteMatchmakingRuleSetOutput> instance

Deletes an existing matchmaking rule set. To delete the rule set,
provide the rule set name. Rule sets cannot be deleted if they are
currently being used by a matchmaking configuration.

B<Learn more>

=over

=item *

Build a Rule Set
(https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html)

=back

B<Related operations>

=over

=item *

CreateMatchmakingConfiguration

=item *

DescribeMatchmakingConfigurations

=item *

UpdateMatchmakingConfiguration

=item *

DeleteMatchmakingConfiguration

=item *

CreateMatchmakingRuleSet

=item *

DescribeMatchmakingRuleSets

=item *

ValidateMatchmakingRuleSet

=item *

DeleteMatchmakingRuleSet

=back



=head2 DeleteScalingPolicy

=over

=item FleetId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteScalingPolicy>

Returns: nothing

Deletes a fleet scaling policy. This action means that the policy is no
longer in force and removes all record of it. To delete a scaling
policy, specify both the scaling policy name and the fleet ID it is
associated with.

To temporarily suspend scaling policies, call StopFleetActions. This
operation suspends all policies for the fleet.

=over

=item *

DescribeFleetCapacity

=item *

UpdateFleetCapacity

=item *

DescribeEC2InstanceLimits

=item *

Manage scaling policies:

=over

=item *

PutScalingPolicy (auto-scaling)

=item *

DescribeScalingPolicies (auto-scaling)

=item *

DeleteScalingPolicy (auto-scaling)

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 DeleteVpcPeeringAuthorization

=over

=item GameLiftAwsAccountId => Str

=item PeerVpcId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteVpcPeeringAuthorization>

Returns: a L<Paws::GameLift::DeleteVpcPeeringAuthorizationOutput> instance

Cancels a pending VPC peering authorization for the specified VPC. If
the authorization has already been used to create a peering connection,
call DeleteVpcPeeringConnection to remove the connection.

=over

=item *

CreateVpcPeeringAuthorization

=item *

DescribeVpcPeeringAuthorizations

=item *

DeleteVpcPeeringAuthorization

=item *

CreateVpcPeeringConnection

=item *

DescribeVpcPeeringConnections

=item *

DeleteVpcPeeringConnection

=back



=head2 DeleteVpcPeeringConnection

=over

=item FleetId => Str

=item VpcPeeringConnectionId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DeleteVpcPeeringConnection>

Returns: a L<Paws::GameLift::DeleteVpcPeeringConnectionOutput> instance

Removes a VPC peering connection. To delete the connection, you must
have a valid authorization for the VPC peering connection that you want
to delete. You can check for an authorization by calling
DescribeVpcPeeringAuthorizations or request a new one using
CreateVpcPeeringAuthorization.

Once a valid authorization exists, call this operation from the AWS
account that is used to manage the Amazon GameLift fleets. Identify the
connection to delete by the connection ID and fleet ID. If successful,
the connection is removed.

=over

=item *

CreateVpcPeeringAuthorization

=item *

DescribeVpcPeeringAuthorizations

=item *

DeleteVpcPeeringAuthorization

=item *

CreateVpcPeeringConnection

=item *

DescribeVpcPeeringConnections

=item *

DeleteVpcPeeringConnection

=back



=head2 DescribeAlias

=over

=item AliasId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeAlias>

Returns: a L<Paws::GameLift::DescribeAliasOutput> instance

Retrieves properties for an alias. This operation returns all alias
metadata and settings. To get an alias's target fleet ID only, use
C<ResolveAlias>.

To get alias properties, specify the alias ID. If successful, the
requested alias record is returned.

=over

=item *

CreateAlias

=item *

ListAliases

=item *

DescribeAlias

=item *

UpdateAlias

=item *

DeleteAlias

=item *

ResolveAlias

=back



=head2 DescribeBuild

=over

=item BuildId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeBuild>

Returns: a L<Paws::GameLift::DescribeBuildOutput> instance

Retrieves properties for a build. To request a build record, specify a
build ID. If successful, an object containing the build properties is
returned.

=over

=item *

CreateBuild

=item *

ListBuilds

=item *

DescribeBuild

=item *

UpdateBuild

=item *

DeleteBuild

=back



=head2 DescribeEC2InstanceLimits

=over

=item [EC2InstanceType => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeEC2InstanceLimits>

Returns: a L<Paws::GameLift::DescribeEC2InstanceLimitsOutput> instance

Retrieves the following information for the specified EC2 instance
type:

=over

=item *

maximum number of instances allowed per AWS account (service limit)

=item *

current usage level for the AWS account

=back

Service limits vary depending on region. Available regions for Amazon
GameLift can be found in the AWS Management Console for Amazon GameLift
(see the drop-down list in the upper right corner).

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 DescribeFleetAttributes

=over

=item [FleetIds => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetAttributes>

Returns: a L<Paws::GameLift::DescribeFleetAttributesOutput> instance

Retrieves fleet properties, including metadata, status, and
configuration, for one or more fleets. You can request attributes for
all fleets, or specify a list of one or more fleet IDs. When requesting
multiple fleets, use the pagination parameters to retrieve results as a
set of sequential pages. If successful, a FleetAttributes object is
returned for each requested fleet ID. When specifying a list of fleet
IDs, attribute objects are returned only for fleets that currently
exist.

Some API actions may limit the number of fleet IDs allowed in one
request. If a request exceeds this limit, the request fails and the
error message includes the maximum allowed.

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 DescribeFleetCapacity

=over

=item [FleetIds => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetCapacity>

Returns: a L<Paws::GameLift::DescribeFleetCapacityOutput> instance

Retrieves the current status of fleet capacity for one or more fleets.
This information includes the number of instances that have been
requested for the fleet and the number currently active. You can
request capacity for all fleets, or specify a list of one or more fleet
IDs. When requesting multiple fleets, use the pagination parameters to
retrieve results as a set of sequential pages. If successful, a
FleetCapacity object is returned for each requested fleet ID. When
specifying a list of fleet IDs, attribute objects are returned only for
fleets that currently exist.

Some API actions may limit the number of fleet IDs allowed in one
request. If a request exceeds this limit, the request fails and the
error message includes the maximum allowed.

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 DescribeFleetEvents

=over

=item FleetId => Str

=item [EndTime => Str]

=item [Limit => Int]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetEvents>

Returns: a L<Paws::GameLift::DescribeFleetEventsOutput> instance

Retrieves entries from the specified fleet's event log. You can specify
a time range to limit the result set. Use the pagination parameters to
retrieve results as a set of sequential pages. If successful, a
collection of event log entries matching the request are returned.

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 DescribeFleetPortSettings

=over

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetPortSettings>

Returns: a L<Paws::GameLift::DescribeFleetPortSettingsOutput> instance

Retrieves the inbound connection permissions for a fleet. Connection
permissions include a range of IP addresses and port settings that
incoming traffic can use to access server processes in the fleet. To
get a fleet's inbound connection permissions, specify a fleet ID. If
successful, a collection of IpPermission objects is returned for the
requested fleet ID. If the requested fleet has been deleted, the result
set is empty.

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 DescribeFleetUtilization

=over

=item [FleetIds => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeFleetUtilization>

Returns: a L<Paws::GameLift::DescribeFleetUtilizationOutput> instance

Retrieves utilization statistics for one or more fleets. You can
request utilization data for all fleets, or specify a list of one or
more fleet IDs. When requesting multiple fleets, use the pagination
parameters to retrieve results as a set of sequential pages. If
successful, a FleetUtilization object is returned for each requested
fleet ID. When specifying a list of fleet IDs, utilization objects are
returned only for fleets that currently exist.

Some API actions may limit the number of fleet IDs allowed in one
request. If a request exceeds this limit, the request fails and the
error message includes the maximum allowed.

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 DescribeGameSessionDetails

=over

=item [AliasId => Str]

=item [FleetId => Str]

=item [GameSessionId => Str]

=item [Limit => Int]

=item [NextToken => Str]

=item [StatusFilter => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeGameSessionDetails>

Returns: a L<Paws::GameLift::DescribeGameSessionDetailsOutput> instance

Retrieves properties, including the protection policy in force, for one
or more game sessions. This action can be used in several ways: (1)
provide a C<GameSessionId> or C<GameSessionArn> to request details for
a specific game session; (2) provide either a C<FleetId> or an
C<AliasId> to request properties for all game sessions running on a
fleet.

To get game session record(s), specify just one of the following: game
session ID, fleet ID, or alias ID. You can filter this request by game
session status. Use the pagination parameters to retrieve results as a
set of sequential pages. If successful, a GameSessionDetail object is
returned for each session matching the request.

=over

=item *

CreateGameSession

=item *

DescribeGameSessions

=item *

DescribeGameSessionDetails

=item *

SearchGameSessions

=item *

UpdateGameSession

=item *

GetGameSessionLogUrl

=item *

Game session placements

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back

=back



=head2 DescribeGameSessionPlacement

=over

=item PlacementId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeGameSessionPlacement>

Returns: a L<Paws::GameLift::DescribeGameSessionPlacementOutput> instance

Retrieves properties and current status of a game session placement
request. To get game session placement details, specify the placement
ID. If successful, a GameSessionPlacement object is returned.

=over

=item *

CreateGameSession

=item *

DescribeGameSessions

=item *

DescribeGameSessionDetails

=item *

SearchGameSessions

=item *

UpdateGameSession

=item *

GetGameSessionLogUrl

=item *

Game session placements

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back

=back



=head2 DescribeGameSessionQueues

=over

=item [Limit => Int]

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeGameSessionQueues>

Returns: a L<Paws::GameLift::DescribeGameSessionQueuesOutput> instance

Retrieves the properties for one or more game session queues. When
requesting multiple queues, use the pagination parameters to retrieve
results as a set of sequential pages. If successful, a GameSessionQueue
object is returned for each requested queue. When specifying a list of
queues, objects are returned only for queues that currently exist in
the region.

=over

=item *

CreateGameSessionQueue

=item *

DescribeGameSessionQueues

=item *

UpdateGameSessionQueue

=item *

DeleteGameSessionQueue

=back



=head2 DescribeGameSessions

=over

=item [AliasId => Str]

=item [FleetId => Str]

=item [GameSessionId => Str]

=item [Limit => Int]

=item [NextToken => Str]

=item [StatusFilter => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeGameSessions>

Returns: a L<Paws::GameLift::DescribeGameSessionsOutput> instance

Retrieves a set of one or more game sessions. Request a specific game
session or request all game sessions on a fleet. Alternatively, use
SearchGameSessions to request a set of active game sessions that are
filtered by certain criteria. To retrieve protection policy settings
for game sessions, use DescribeGameSessionDetails.

To get game sessions, specify one of the following: game session ID,
fleet ID, or alias ID. You can filter this request by game session
status. Use the pagination parameters to retrieve results as a set of
sequential pages. If successful, a GameSession object is returned for
each game session matching the request.

I<Available in Amazon GameLift Local.>

=over

=item *

CreateGameSession

=item *

DescribeGameSessions

=item *

DescribeGameSessionDetails

=item *

SearchGameSessions

=item *

UpdateGameSession

=item *

GetGameSessionLogUrl

=item *

Game session placements

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back

=back



=head2 DescribeInstances

=over

=item FleetId => Str

=item [InstanceId => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeInstances>

Returns: a L<Paws::GameLift::DescribeInstancesOutput> instance

Retrieves information about a fleet's instances, including instance
IDs. Use this action to get details on all instances in the fleet or
get details on one specific instance.

To get a specific instance, specify fleet ID and instance ID. To get
all instances in a fleet, specify a fleet ID only. Use the pagination
parameters to retrieve results as a set of sequential pages. If
successful, an Instance object is returned for each result.


=head2 DescribeMatchmaking

=over

=item TicketIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeMatchmaking>

Returns: a L<Paws::GameLift::DescribeMatchmakingOutput> instance

Retrieves one or more matchmaking tickets. Use this operation to
retrieve ticket information, including status and--once a successful
match is made--acquire connection information for the resulting new
game session.

You can use this operation to track the progress of matchmaking
requests (through polling) as an alternative to using event
notifications. See more details on tracking matchmaking requests
through polling or notifications in StartMatchmaking.

To request matchmaking tickets, provide a list of up to 10 ticket IDs.
If the request is successful, a ticket object is returned for each
requested ID that currently exists.

=over

=item *

StartMatchmaking

=item *

DescribeMatchmaking

=item *

StopMatchmaking

=item *

AcceptMatch

=item *

StartMatchBackfill

=back



=head2 DescribeMatchmakingConfigurations

=over

=item [Limit => Int]

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]

=item [RuleSetName => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeMatchmakingConfigurations>

Returns: a L<Paws::GameLift::DescribeMatchmakingConfigurationsOutput> instance

Retrieves the details of FlexMatch matchmaking configurations. with
this operation, you have the following options: (1) retrieve all
existing configurations, (2) provide the names of one or more
configurations to retrieve, or (3) retrieve all configurations that use
a specified rule set name. When requesting multiple items, use the
pagination parameters to retrieve results as a set of sequential pages.
If successful, a configuration is returned for each requested name.
When specifying a list of names, only configurations that currently
exist are returned.

=over

=item *

CreateMatchmakingConfiguration

=item *

DescribeMatchmakingConfigurations

=item *

UpdateMatchmakingConfiguration

=item *

DeleteMatchmakingConfiguration

=item *

CreateMatchmakingRuleSet

=item *

DescribeMatchmakingRuleSets

=item *

ValidateMatchmakingRuleSet

=item *

DeleteMatchmakingRuleSet

=back



=head2 DescribeMatchmakingRuleSets

=over

=item [Limit => Int]

=item [Names => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeMatchmakingRuleSets>

Returns: a L<Paws::GameLift::DescribeMatchmakingRuleSetsOutput> instance

Retrieves the details for FlexMatch matchmaking rule sets. You can
request all existing rule sets for the region, or provide a list of one
or more rule set names. When requesting multiple items, use the
pagination parameters to retrieve results as a set of sequential pages.
If successful, a rule set is returned for each requested name.

B<Learn more>

=over

=item *

Build a Rule Set
(https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html)

=back

B<Related operations>

=over

=item *

CreateMatchmakingConfiguration

=item *

DescribeMatchmakingConfigurations

=item *

UpdateMatchmakingConfiguration

=item *

DeleteMatchmakingConfiguration

=item *

CreateMatchmakingRuleSet

=item *

DescribeMatchmakingRuleSets

=item *

ValidateMatchmakingRuleSet

=item *

DeleteMatchmakingRuleSet

=back



=head2 DescribePlayerSessions

=over

=item [GameSessionId => Str]

=item [Limit => Int]

=item [NextToken => Str]

=item [PlayerId => Str]

=item [PlayerSessionId => Str]

=item [PlayerSessionStatusFilter => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribePlayerSessions>

Returns: a L<Paws::GameLift::DescribePlayerSessionsOutput> instance

Retrieves properties for one or more player sessions. This action can
be used in several ways: (1) provide a C<PlayerSessionId> to request
properties for a specific player session; (2) provide a
C<GameSessionId> to request properties for all player sessions in the
specified game session; (3) provide a C<PlayerId> to request properties
for all player sessions of a specified player.

To get game session record(s), specify only one of the following: a
player session ID, a game session ID, or a player ID. You can filter
this request by player session status. Use the pagination parameters to
retrieve results as a set of sequential pages. If successful, a
PlayerSession object is returned for each session matching the request.

I<Available in Amazon GameLift Local.>

=over

=item *

CreatePlayerSession

=item *

CreatePlayerSessions

=item *

DescribePlayerSessions

=item *

Game session placements

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back

=back



=head2 DescribeRuntimeConfiguration

=over

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeRuntimeConfiguration>

Returns: a L<Paws::GameLift::DescribeRuntimeConfigurationOutput> instance

Retrieves the current run-time configuration for the specified fleet.
The run-time configuration tells Amazon GameLift how to launch server
processes on instances in the fleet.

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 DescribeScalingPolicies

=over

=item FleetId => Str

=item [Limit => Int]

=item [NextToken => Str]

=item [StatusFilter => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeScalingPolicies>

Returns: a L<Paws::GameLift::DescribeScalingPoliciesOutput> instance

Retrieves all scaling policies applied to a fleet.

To get a fleet's scaling policies, specify the fleet ID. You can filter
this request by policy status, such as to retrieve only active scaling
policies. Use the pagination parameters to retrieve results as a set of
sequential pages. If successful, set of ScalingPolicy objects is
returned for the fleet.

A fleet may have all of its scaling policies suspended
(StopFleetActions). This action does not affect the status of the
scaling policies, which remains ACTIVE. To see whether a fleet's
scaling policies are in force or suspended, call
DescribeFleetAttributes and check the stopped actions.

=over

=item *

DescribeFleetCapacity

=item *

UpdateFleetCapacity

=item *

DescribeEC2InstanceLimits

=item *

Manage scaling policies:

=over

=item *

PutScalingPolicy (auto-scaling)

=item *

DescribeScalingPolicies (auto-scaling)

=item *

DeleteScalingPolicy (auto-scaling)

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 DescribeVpcPeeringAuthorizations






Each argument is described in detail in: L<Paws::GameLift::DescribeVpcPeeringAuthorizations>

Returns: a L<Paws::GameLift::DescribeVpcPeeringAuthorizationsOutput> instance

Retrieves valid VPC peering authorizations that are pending for the AWS
account. This operation returns all VPC peering authorizations and
requests for peering. This includes those initiated and received by
this account.

=over

=item *

CreateVpcPeeringAuthorization

=item *

DescribeVpcPeeringAuthorizations

=item *

DeleteVpcPeeringAuthorization

=item *

CreateVpcPeeringConnection

=item *

DescribeVpcPeeringConnections

=item *

DeleteVpcPeeringConnection

=back



=head2 DescribeVpcPeeringConnections

=over

=item [FleetId => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::DescribeVpcPeeringConnections>

Returns: a L<Paws::GameLift::DescribeVpcPeeringConnectionsOutput> instance

Retrieves information on VPC peering connections. Use this operation to
get peering information for all fleets or for one specific fleet ID.

To retrieve connection information, call this operation from the AWS
account that is used to manage the Amazon GameLift fleets. Specify a
fleet ID or leave the parameter empty to retrieve all connection
records. If successful, the retrieved information includes both active
and pending connections. Active connections identify the IpV4 CIDR
block that the VPC uses to connect.

=over

=item *

CreateVpcPeeringAuthorization

=item *

DescribeVpcPeeringAuthorizations

=item *

DeleteVpcPeeringAuthorization

=item *

CreateVpcPeeringConnection

=item *

DescribeVpcPeeringConnections

=item *

DeleteVpcPeeringConnection

=back



=head2 GetGameSessionLogUrl

=over

=item GameSessionId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::GetGameSessionLogUrl>

Returns: a L<Paws::GameLift::GetGameSessionLogUrlOutput> instance

Retrieves the location of stored game session logs for a specified game
session. When a game session is terminated, Amazon GameLift
automatically stores the logs in Amazon S3 and retains them for 14
days. Use this URL to download the logs.

See the AWS Service Limits
(https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift)
page for maximum log file sizes. Log files that exceed this limit are
not saved.

=over

=item *

CreateGameSession

=item *

DescribeGameSessions

=item *

DescribeGameSessionDetails

=item *

SearchGameSessions

=item *

UpdateGameSession

=item *

GetGameSessionLogUrl

=item *

Game session placements

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back

=back



=head2 GetInstanceAccess

=over

=item FleetId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::GetInstanceAccess>

Returns: a L<Paws::GameLift::GetInstanceAccessOutput> instance

Requests remote access to a fleet instance. Remote access is useful for
debugging, gathering benchmarking data, or watching activity in real
time.

Access requires credentials that match the operating system of the
instance. For a Windows instance, Amazon GameLift returns a user name
and password as strings for use with a Windows Remote Desktop client.
For a Linux instance, Amazon GameLift returns a user name and RSA
private key, also as strings, for use with an SSH client. The private
key must be saved in the proper format to a C<.pem> file before using.
If you're making this request using the AWS CLI, saving the secret can
be handled as part of the GetInstanceAccess request. (See the example
later in this topic). For more information on remote access, see
Remotely Accessing an Instance
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html).

To request access to a specific instance, specify the IDs of both the
instance and the fleet it belongs to. You can retrieve a fleet's
instance IDs by calling DescribeInstances. If successful, an
InstanceAccess object is returned containing the instance's IP address
and a set of credentials.


=head2 ListAliases

=over

=item [Limit => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [RoutingStrategyType => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ListAliases>

Returns: a L<Paws::GameLift::ListAliasesOutput> instance

Retrieves all aliases for this AWS account. You can filter the result
set by alias name and/or routing strategy type. Use the pagination
parameters to retrieve results in sequential pages.

Returned aliases are not listed in any particular order.

=over

=item *

CreateAlias

=item *

ListAliases

=item *

DescribeAlias

=item *

UpdateAlias

=item *

DeleteAlias

=item *

ResolveAlias

=back



=head2 ListBuilds

=over

=item [Limit => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ListBuilds>

Returns: a L<Paws::GameLift::ListBuildsOutput> instance

Retrieves build records for all builds associated with the AWS account
in use. You can limit results to builds that are in a specific status
by using the C<Status> parameter. Use the pagination parameters to
retrieve results in a set of sequential pages.

Build records are not listed in any particular order.

=over

=item *

CreateBuild

=item *

ListBuilds

=item *

DescribeBuild

=item *

UpdateBuild

=item *

DeleteBuild

=back



=head2 ListFleets

=over

=item [BuildId => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::ListFleets>

Returns: a L<Paws::GameLift::ListFleetsOutput> instance

Retrieves a collection of fleet records for this AWS account. You can
filter the result set by build ID. Use the pagination parameters to
retrieve results in sequential pages.

Fleet records are not listed in any particular order.

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 PutScalingPolicy

=over

=item FleetId => Str

=item MetricName => Str

=item Name => Str

=item [ComparisonOperator => Str]

=item [EvaluationPeriods => Int]

=item [PolicyType => Str]

=item [ScalingAdjustment => Int]

=item [ScalingAdjustmentType => Str]

=item [TargetConfiguration => L<Paws::GameLift::TargetConfiguration>]

=item [Threshold => Num]


=back

Each argument is described in detail in: L<Paws::GameLift::PutScalingPolicy>

Returns: a L<Paws::GameLift::PutScalingPolicyOutput> instance

Creates or updates a scaling policy for a fleet. Scaling policies are
used to automatically scale a fleet's hosting capacity to meet player
demand. An active scaling policy instructs Amazon GameLift to track a
fleet metric and automatically change the fleet's capacity when a
certain threshold is reached. There are two types of scaling policies:
target-based and rule-based. Use a target-based policy to quickly and
efficiently manage fleet scaling; this option is the most commonly
used. Use rule-based policies when you need to exert fine-grained
control over auto-scaling.

Fleets can have multiple scaling policies of each type in force at the
same time; you can have one target-based policy, one or multiple
rule-based scaling policies, or both. We recommend caution, however,
because multiple auto-scaling policies can have unintended
consequences.

You can temporarily suspend all scaling policies for a fleet by calling
StopFleetActions with the fleet action AUTO_SCALING. To resume scaling
policies, call StartFleetActions with the same fleet action. To stop
just one scaling policy--or to permanently remove it, you must delete
the policy with DeleteScalingPolicy.

Learn more about how to work with auto-scaling in Set Up Fleet
Automatic Scaling
(https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-autoscaling.html).

B<Target-based policy>

A target-based policy tracks a single metric:
PercentAvailableGameSessions. This metric tells us how much of a
fleet's hosting capacity is ready to host game sessions but is not
currently in use. This is the fleet's buffer; it measures the
additional player demand that the fleet could handle at current
capacity. With a target-based policy, you set your ideal buffer size
and leave it to Amazon GameLift to take whatever action is needed to
maintain that target.

For example, you might choose to maintain a 10% buffer for a fleet that
has the capacity to host 100 simultaneous game sessions. This policy
tells Amazon GameLift to take action whenever the fleet's available
capacity falls below or rises above 10 game sessions. Amazon GameLift
will start new instances or stop unused instances in order to return to
the 10% buffer.

To create or update a target-based policy, specify a fleet ID and name,
and set the policy type to "TargetBased". Specify the metric to track
(PercentAvailableGameSessions) and reference a TargetConfiguration
object with your desired buffer value. Exclude all other parameters. On
a successful request, the policy name is returned. The scaling policy
is automatically in force as soon as it's successfully created. If the
fleet's auto-scaling actions are temporarily suspended, the new policy
will be in force once the fleet actions are restarted.

B<Rule-based policy>

A rule-based policy tracks specified fleet metric, sets a threshold
value, and specifies the type of action to initiate when triggered.
With a rule-based policy, you can select from several available fleet
metrics. Each policy specifies whether to scale up or scale down (and
by how much), so you need one policy for each type of action.

For example, a policy may make the following statement: "If the
percentage of idle instances is greater than 20% for more than 15
minutes, then reduce the fleet capacity by 10%."

A policy's rule statement has the following structure:

If C<[MetricName]> is C<[ComparisonOperator]> C<[Threshold]> for
C<[EvaluationPeriods]> minutes, then C<[ScalingAdjustmentType]> to/by
C<[ScalingAdjustment]>.

To implement the example, the rule statement would look like this:

If C<[PercentIdleInstances]> is C<[GreaterThanThreshold]> C<[20]> for
C<[15]> minutes, then C<[PercentChangeInCapacity]> to/by C<[10]>.

To create or update a scaling policy, specify a unique combination of
name and fleet ID, and set the policy type to "RuleBased". Specify the
parameter values for a policy rule statement. On a successful request,
the policy name is returned. Scaling policies are automatically in
force as soon as they're successfully created. If the fleet's
auto-scaling actions are temporarily suspended, the new policy will be
in force once the fleet actions are restarted.

=over

=item *

DescribeFleetCapacity

=item *

UpdateFleetCapacity

=item *

DescribeEC2InstanceLimits

=item *

Manage scaling policies:

=over

=item *

PutScalingPolicy (auto-scaling)

=item *

DescribeScalingPolicies (auto-scaling)

=item *

DeleteScalingPolicy (auto-scaling)

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 RequestUploadCredentials

=over

=item BuildId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::RequestUploadCredentials>

Returns: a L<Paws::GameLift::RequestUploadCredentialsOutput> instance

Retrieves a fresh set of credentials for use when uploading a new set
of game build files to Amazon GameLift's Amazon S3. This is done as
part of the build creation process; see CreateBuild.

To request new credentials, specify the build ID as returned with an
initial C<CreateBuild> request. If successful, a new set of credentials
are returned, along with the S3 storage location associated with the
build ID.


=head2 ResolveAlias

=over

=item AliasId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::ResolveAlias>

Returns: a L<Paws::GameLift::ResolveAliasOutput> instance

Retrieves the fleet ID that a specified alias is currently pointing to.

=over

=item *

CreateAlias

=item *

ListAliases

=item *

DescribeAlias

=item *

UpdateAlias

=item *

DeleteAlias

=item *

ResolveAlias

=back



=head2 SearchGameSessions

=over

=item [AliasId => Str]

=item [FilterExpression => Str]

=item [FleetId => Str]

=item [Limit => Int]

=item [NextToken => Str]

=item [SortExpression => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::SearchGameSessions>

Returns: a L<Paws::GameLift::SearchGameSessionsOutput> instance

Retrieves all active game sessions that match a set of search criteria
and sorts them in a specified order. You can search or sort by the
following game session attributes:

=over

=item *

B<gameSessionId> -- Unique identifier for the game session. You can use
either a C<GameSessionId> or C<GameSessionArn> value.

=item *

B<gameSessionName> -- Name assigned to a game session. This value is
set when requesting a new game session with CreateGameSession or
updating with UpdateGameSession. Game session names do not need to be
unique to a game session.

=item *

B<gameSessionProperties> -- Custom data defined in a game session's
C<GameProperty> parameter. C<GameProperty> values are stored as
key:value pairs; the filter expression must indicate the key and a
string to search the data values for. For example, to search for game
sessions with custom data containing the key:value pair
"gameMode:brawl", specify the following:
C<gameSessionProperties.gameMode = "brawl">. All custom data values are
searched as strings.

=item *

B<maximumSessions> -- Maximum number of player sessions allowed for a
game session. This value is set when requesting a new game session with
CreateGameSession or updating with UpdateGameSession.

=item *

B<creationTimeMillis> -- Value indicating when a game session was
created. It is expressed in Unix time as milliseconds.

=item *

B<playerSessionCount> -- Number of players currently connected to a
game session. This value changes rapidly as players join the session or
drop out.

=item *

B<hasAvailablePlayerSessions> -- Boolean value indicating whether a
game session has reached its maximum number of players. It is highly
recommended that all search requests include this filter attribute to
optimize search performance and return only sessions that players can
join.

=back

Returned values for C<playerSessionCount> and
C<hasAvailablePlayerSessions> change quickly as players join sessions
and others drop out. Results should be considered a snapshot in time.
Be sure to refresh search results often, and handle sessions that fill
up before a player can join.

To search or sort, specify either a fleet ID or an alias ID, and
provide a search filter expression, a sort expression, or both. If
successful, a collection of GameSession objects matching the request is
returned. Use the pagination parameters to retrieve results as a set of
sequential pages.

You can search for game sessions one fleet at a time only. To find game
sessions across multiple fleets, you must search each fleet separately
and combine the results. This search feature finds only game sessions
that are in C<ACTIVE> status. To locate games in statuses other than
active, use DescribeGameSessionDetails.

=over

=item *

CreateGameSession

=item *

DescribeGameSessions

=item *

DescribeGameSessionDetails

=item *

SearchGameSessions

=item *

UpdateGameSession

=item *

GetGameSessionLogUrl

=item *

Game session placements

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back

=back



=head2 StartFleetActions

=over

=item Actions => ArrayRef[Str|Undef]

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::StartFleetActions>

Returns: a L<Paws::GameLift::StartFleetActionsOutput> instance

Resumes activity on a fleet that was suspended with StopFleetActions.
Currently, this operation is used to restart a fleet's auto-scaling
activity.

To start fleet actions, specify the fleet ID and the type of actions to
restart. When auto-scaling fleet actions are restarted, Amazon GameLift
once again initiates scaling events as triggered by the fleet's scaling
policies. If actions on the fleet were never stopped, this operation
will have no effect. You can view a fleet's stopped actions using
DescribeFleetAttributes.

=over

=item *

DescribeFleetCapacity

=item *

UpdateFleetCapacity

=item *

DescribeEC2InstanceLimits

=item *

Manage scaling policies:

=over

=item *

PutScalingPolicy (auto-scaling)

=item *

DescribeScalingPolicies (auto-scaling)

=item *

DeleteScalingPolicy (auto-scaling)

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 StartGameSessionPlacement

=over

=item GameSessionQueueName => Str

=item MaximumPlayerSessionCount => Int

=item PlacementId => Str

=item [DesiredPlayerSessions => ArrayRef[L<Paws::GameLift::DesiredPlayerSession>]]

=item [GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]]

=item [GameSessionData => Str]

=item [GameSessionName => Str]

=item [PlayerLatencies => ArrayRef[L<Paws::GameLift::PlayerLatency>]]


=back

Each argument is described in detail in: L<Paws::GameLift::StartGameSessionPlacement>

Returns: a L<Paws::GameLift::StartGameSessionPlacementOutput> instance

Places a request for a new game session in a queue (see
CreateGameSessionQueue). When processing a placement request, Amazon
GameLift searches for available resources on the queue's destinations,
scanning each until it finds resources or the placement request times
out.

A game session placement request can also request player sessions. When
a new game session is successfully created, Amazon GameLift creates a
player session for each player included in the request.

When placing a game session, by default Amazon GameLift tries each
fleet in the order they are listed in the queue configuration. Ideally,
a queue's destinations are listed in preference order.

Alternatively, when requesting a game session with players, you can
also provide latency data for each player in relevant regions. Latency
data indicates the performance lag a player experiences when connected
to a fleet in the region. Amazon GameLift uses latency data to reorder
the list of destinations to place the game session in a region with
minimal lag. If latency data is provided for multiple players, Amazon
GameLift calculates each region's average lag for all players and
reorders to get the best game play across all players.

To place a new game session request, specify the following:

=over

=item *

The queue name and a set of game session properties and settings

=item *

A unique ID (such as a UUID) for the placement. You use this ID to
track the status of the placement request

=item *

(Optional) A set of player data and a unique player ID for each player
that you are joining to the new game session (player data is optional,
but if you include it, you must also provide a unique ID for each
player)

=item *

Latency data for all players (if you want to optimize game play for the
players)

=back

If successful, a new game session placement is created.

To track the status of a placement request, call
DescribeGameSessionPlacement and check the request's status. If the
status is C<FULFILLED>, a new game session has been created and a game
session ARN and region are referenced. If the placement request times
out, you can resubmit the request or retry it with a different queue.

=over

=item *

CreateGameSession

=item *

DescribeGameSessions

=item *

DescribeGameSessionDetails

=item *

SearchGameSessions

=item *

UpdateGameSession

=item *

GetGameSessionLogUrl

=item *

Game session placements

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back

=back



=head2 StartMatchBackfill

=over

=item ConfigurationName => Str

=item GameSessionArn => Str

=item Players => ArrayRef[L<Paws::GameLift::Player>]

=item [TicketId => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::StartMatchBackfill>

Returns: a L<Paws::GameLift::StartMatchBackfillOutput> instance

Finds new players to fill open slots in an existing game session. This
operation can be used to add players to matched games that start with
fewer than the maximum number of players or to replace players when
they drop out. By backfilling with the same matchmaker used to create
the original match, you ensure that new players meet the match criteria
and maintain a consistent experience throughout the game session. You
can backfill a match anytime after a game session has been created.

To request a match backfill, specify a unique ticket ID, the existing
game session's ARN, a matchmaking configuration, and a set of data that
describes all current players in the game session. If successful, a
match backfill ticket is created and returned with status set to
QUEUED. The ticket is placed in the matchmaker's ticket pool and
processed. Track the status of the ticket to respond as needed. For
more detail how to set up backfilling, see Backfill Existing Games with
FlexMatch
(https://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html).

The process of finding backfill matches is essentially identical to the
initial matchmaking process. The matchmaker searches the pool and
groups tickets together to form potential matches, allowing only one
backfill ticket per potential match. Once the a match is formed, the
matchmaker creates player sessions for the new players. All tickets in
the match are updated with the game session's connection information,
and the GameSession object is updated to include matchmaker data on the
new players. For more detail on how match backfill requests are
processed, see How Amazon GameLift FlexMatch Works
(https://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html).

=over

=item *

StartMatchmaking

=item *

DescribeMatchmaking

=item *

StopMatchmaking

=item *

AcceptMatch

=item *

StartMatchBackfill

=back



=head2 StartMatchmaking

=over

=item ConfigurationName => Str

=item Players => ArrayRef[L<Paws::GameLift::Player>]

=item [TicketId => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::StartMatchmaking>

Returns: a L<Paws::GameLift::StartMatchmakingOutput> instance

Uses FlexMatch to create a game match for a group of players based on
custom matchmaking rules, and starts a new game for the matched
players. Each matchmaking request specifies the type of match to build
(team configuration, rules for an acceptable match, etc.). The request
also specifies the players to find a match for and where to host the
new game session for optimal performance. A matchmaking request might
start with a single player or a group of players who want to play
together. FlexMatch finds additional players as needed to fill the
match. Match type, rules, and the queue used to place a new game
session are defined in a C<MatchmakingConfiguration>. For complete
information on setting up and using FlexMatch, see the topic Adding
FlexMatch to Your Game
(https://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html).

To start matchmaking, provide a unique ticket ID, specify a matchmaking
configuration, and include the players to be matched. You must also
include a set of player attributes relevant for the matchmaking
configuration. If successful, a matchmaking ticket is returned with
status set to C<QUEUED>. Track the status of the ticket to respond as
needed and acquire game session connection information for successfully
completed matches.

B<Tracking ticket status> -- A couple of options are available for
tracking the status of matchmaking requests:

=over

=item *

Polling -- Call C<DescribeMatchmaking>. This operation returns the full
ticket object, including current status and (for completed tickets)
game session connection info. We recommend polling no more than once
every 10 seconds.

=item *

Notifications -- Get event notifications for changes in ticket status
using Amazon Simple Notification Service (SNS). Notifications are easy
to set up (see CreateMatchmakingConfiguration) and typically deliver
match status changes faster and more efficiently than polling. We
recommend that you use polling to back up to notifications (since
delivery is not guaranteed) and call C<DescribeMatchmaking> only when
notifications are not received within 30 seconds.

=back

B<Processing a matchmaking request> -- FlexMatch handles a matchmaking
request as follows:

=over

=item 1.

Your client code submits a C<StartMatchmaking> request for one or more
players and tracks the status of the request ticket.

=item 2.

FlexMatch uses this ticket and others in process to build an acceptable
match. When a potential match is identified, all tickets in the
proposed match are advanced to the next status.

=item 3.

If the match requires player acceptance (set in the matchmaking
configuration), the tickets move into status C<REQUIRES_ACCEPTANCE>.
This status triggers your client code to solicit acceptance from all
players in every ticket involved in the match, and then call
AcceptMatch for each player. If any player rejects or fails to accept
the match before a specified timeout, the proposed match is dropped
(see C<AcceptMatch> for more details).

=item 4.

Once a match is proposed and accepted, the matchmaking tickets move
into status C<PLACING>. FlexMatch locates resources for a new game
session using the game session queue (set in the matchmaking
configuration) and creates the game session based on the match data.

=item 5.

When the match is successfully placed, the matchmaking tickets move
into C<COMPLETED> status. Connection information (including game
session endpoint and player session) is added to the matchmaking
tickets. Matched players can use the connection information to join the
game.

=back

=over

=item *

StartMatchmaking

=item *

DescribeMatchmaking

=item *

StopMatchmaking

=item *

AcceptMatch

=item *

StartMatchBackfill

=back



=head2 StopFleetActions

=over

=item Actions => ArrayRef[Str|Undef]

=item FleetId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::StopFleetActions>

Returns: a L<Paws::GameLift::StopFleetActionsOutput> instance

Suspends activity on a fleet. Currently, this operation is used to stop
a fleet's auto-scaling activity. It is used to temporarily stop scaling
events triggered by the fleet's scaling policies. The policies can be
retained and auto-scaling activity can be restarted using
StartFleetActions. You can view a fleet's stopped actions using
DescribeFleetAttributes.

To stop fleet actions, specify the fleet ID and the type of actions to
suspend. When auto-scaling fleet actions are stopped, Amazon GameLift
no longer initiates scaling events except to maintain the fleet's
desired instances setting (FleetCapacity. Changes to the fleet's
capacity must be done manually using UpdateFleetCapacity.


=head2 StopGameSessionPlacement

=over

=item PlacementId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::StopGameSessionPlacement>

Returns: a L<Paws::GameLift::StopGameSessionPlacementOutput> instance

Cancels a game session placement that is in C<PENDING> status. To stop
a placement, provide the placement ID values. If successful, the
placement is moved to C<CANCELLED> status.

=over

=item *

CreateGameSession

=item *

DescribeGameSessions

=item *

DescribeGameSessionDetails

=item *

SearchGameSessions

=item *

UpdateGameSession

=item *

GetGameSessionLogUrl

=item *

Game session placements

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back

=back



=head2 StopMatchmaking

=over

=item TicketId => Str


=back

Each argument is described in detail in: L<Paws::GameLift::StopMatchmaking>

Returns: a L<Paws::GameLift::StopMatchmakingOutput> instance

Cancels a matchmaking ticket that is currently being processed. To stop
the matchmaking operation, specify the ticket ID. If successful, work
on the ticket is stopped, and the ticket status is changed to
C<CANCELLED>.

=over

=item *

StartMatchmaking

=item *

DescribeMatchmaking

=item *

StopMatchmaking

=item *

AcceptMatch

=item *

StartMatchBackfill

=back



=head2 UpdateAlias

=over

=item AliasId => Str

=item [Description => Str]

=item [Name => Str]

=item [RoutingStrategy => L<Paws::GameLift::RoutingStrategy>]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateAlias>

Returns: a L<Paws::GameLift::UpdateAliasOutput> instance

Updates properties for an alias. To update properties, specify the
alias ID to be updated and provide the information to be changed. To
reassign an alias to another fleet, provide an updated routing
strategy. If successful, the updated alias record is returned.

=over

=item *

CreateAlias

=item *

ListAliases

=item *

DescribeAlias

=item *

UpdateAlias

=item *

DeleteAlias

=item *

ResolveAlias

=back



=head2 UpdateBuild

=over

=item BuildId => Str

=item [Name => Str]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateBuild>

Returns: a L<Paws::GameLift::UpdateBuildOutput> instance

Updates metadata in a build record, including the build name and
version. To update the metadata, specify the build ID to update and
provide the new values. If successful, a build object containing the
updated metadata is returned.

=over

=item *

CreateBuild

=item *

ListBuilds

=item *

DescribeBuild

=item *

UpdateBuild

=item *

DeleteBuild

=back



=head2 UpdateFleetAttributes

=over

=item FleetId => Str

=item [Description => Str]

=item [MetricGroups => ArrayRef[Str|Undef]]

=item [Name => Str]

=item [NewGameSessionProtectionPolicy => Str]

=item [ResourceCreationLimitPolicy => L<Paws::GameLift::ResourceCreationLimitPolicy>]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateFleetAttributes>

Returns: a L<Paws::GameLift::UpdateFleetAttributesOutput> instance

Updates fleet properties, including name and description, for a fleet.
To update metadata, specify the fleet ID and the property values that
you want to change. If successful, the fleet ID for the updated fleet
is returned.

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 UpdateFleetCapacity

=over

=item FleetId => Str

=item [DesiredInstances => Int]

=item [MaxSize => Int]

=item [MinSize => Int]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateFleetCapacity>

Returns: a L<Paws::GameLift::UpdateFleetCapacityOutput> instance

Updates capacity settings for a fleet. Use this action to specify the
number of EC2 instances (hosts) that you want this fleet to contain.
Before calling this action, you may want to call
DescribeEC2InstanceLimits to get the maximum capacity based on the
fleet's EC2 instance type.

Specify minimum and maximum number of instances. Amazon GameLift will
not change fleet capacity to values fall outside of this range. This is
particularly important when using auto-scaling (see PutScalingPolicy)
to allow capacity to adjust based on player demand while imposing
limits on automatic adjustments.

To update fleet capacity, specify the fleet ID and the number of
instances you want the fleet to host. If successful, Amazon GameLift
starts or terminates instances so that the fleet's active instance
count matches the desired instance count. You can view a fleet's
current capacity information by calling DescribeFleetCapacity. If the
desired instance count is higher than the instance type's limit, the
"Limit Exceeded" exception occurs.

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 UpdateFleetPortSettings

=over

=item FleetId => Str

=item [InboundPermissionAuthorizations => ArrayRef[L<Paws::GameLift::IpPermission>]]

=item [InboundPermissionRevocations => ArrayRef[L<Paws::GameLift::IpPermission>]]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateFleetPortSettings>

Returns: a L<Paws::GameLift::UpdateFleetPortSettingsOutput> instance

Updates port settings for a fleet. To update settings, specify the
fleet ID to be updated and list the permissions you want to update.
List the permissions you want to add in
C<InboundPermissionAuthorizations>, and permissions you want to remove
in C<InboundPermissionRevocations>. Permissions to be removed must
match existing fleet permissions. If successful, the fleet ID for the
updated fleet is returned.

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 UpdateGameSession

=over

=item GameSessionId => Str

=item [MaximumPlayerSessionCount => Int]

=item [Name => Str]

=item [PlayerSessionCreationPolicy => Str]

=item [ProtectionPolicy => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateGameSession>

Returns: a L<Paws::GameLift::UpdateGameSessionOutput> instance

Updates game session properties. This includes the session name,
maximum player count, protection policy, which controls whether or not
an active game session can be terminated during a scale-down event, and
the player session creation policy, which controls whether or not new
players can join the session. To update a game session, specify the
game session ID and the values you want to change. If successful, an
updated GameSession object is returned.

=over

=item *

CreateGameSession

=item *

DescribeGameSessions

=item *

DescribeGameSessionDetails

=item *

SearchGameSessions

=item *

UpdateGameSession

=item *

GetGameSessionLogUrl

=item *

Game session placements

=over

=item *

StartGameSessionPlacement

=item *

DescribeGameSessionPlacement

=item *

StopGameSessionPlacement

=back

=back



=head2 UpdateGameSessionQueue

=over

=item Name => Str

=item [Destinations => ArrayRef[L<Paws::GameLift::GameSessionQueueDestination>]]

=item [PlayerLatencyPolicies => ArrayRef[L<Paws::GameLift::PlayerLatencyPolicy>]]

=item [TimeoutInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateGameSessionQueue>

Returns: a L<Paws::GameLift::UpdateGameSessionQueueOutput> instance

Updates settings for a game session queue, which determines how new
game session requests in the queue are processed. To update settings,
specify the queue name to be updated and provide the new settings. When
updating destinations, provide a complete list of destinations.

=over

=item *

CreateGameSessionQueue

=item *

DescribeGameSessionQueues

=item *

UpdateGameSessionQueue

=item *

DeleteGameSessionQueue

=back



=head2 UpdateMatchmakingConfiguration

=over

=item Name => Str

=item [AcceptanceRequired => Bool]

=item [AcceptanceTimeoutSeconds => Int]

=item [AdditionalPlayerCount => Int]

=item [CustomEventData => Str]

=item [Description => Str]

=item [GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]]

=item [GameSessionData => Str]

=item [GameSessionQueueArns => ArrayRef[Str|Undef]]

=item [NotificationTarget => Str]

=item [RequestTimeoutSeconds => Int]

=item [RuleSetName => Str]


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateMatchmakingConfiguration>

Returns: a L<Paws::GameLift::UpdateMatchmakingConfigurationOutput> instance

Updates settings for a FlexMatch matchmaking configuration. To update
settings, specify the configuration name to be updated and provide the
new settings.

=over

=item *

CreateMatchmakingConfiguration

=item *

DescribeMatchmakingConfigurations

=item *

UpdateMatchmakingConfiguration

=item *

DeleteMatchmakingConfiguration

=item *

CreateMatchmakingRuleSet

=item *

DescribeMatchmakingRuleSets

=item *

ValidateMatchmakingRuleSet

=item *

DeleteMatchmakingRuleSet

=back



=head2 UpdateRuntimeConfiguration

=over

=item FleetId => Str

=item RuntimeConfiguration => L<Paws::GameLift::RuntimeConfiguration>


=back

Each argument is described in detail in: L<Paws::GameLift::UpdateRuntimeConfiguration>

Returns: a L<Paws::GameLift::UpdateRuntimeConfigurationOutput> instance

Updates the current run-time configuration for the specified fleet,
which tells Amazon GameLift how to launch server processes on instances
in the fleet. You can update a fleet's run-time configuration at any
time after the fleet is created; it does not need to be in an C<ACTIVE>
status.

To update run-time configuration, specify the fleet ID and provide a
C<RuntimeConfiguration> object with the updated collection of server
process configurations.

Each instance in a Amazon GameLift fleet checks regularly for an
updated run-time configuration and changes how it launches server
processes to comply with the latest version. Existing server processes
are not affected by the update; they continue to run until they end,
while Amazon GameLift simply adds new server processes to fit the
current run-time configuration. As a result, the run-time configuration
changes are applied gradually as existing processes shut down and new
processes are launched in Amazon GameLift's normal process recycling
activity.

=over

=item *

CreateFleet

=item *

ListFleets

=item *

DeleteFleet

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetCapacity

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeEC2InstanceLimits

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet actions:

=over

=item *

StartFleetActions

=item *

StopFleetActions

=back

=back



=head2 ValidateMatchmakingRuleSet

=over

=item RuleSetBody => Str


=back

Each argument is described in detail in: L<Paws::GameLift::ValidateMatchmakingRuleSet>

Returns: a L<Paws::GameLift::ValidateMatchmakingRuleSetOutput> instance

Validates the syntax of a matchmaking rule or rule set. This operation
checks that the rule set is using syntactically correct JSON and that
it conforms to allowed property expressions. To validate syntax,
provide a rule set JSON string.

B<Learn more>

=over

=item *

Build a Rule Set
(https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html)

=back

B<Related operations>

=over

=item *

CreateMatchmakingConfiguration

=item *

DescribeMatchmakingConfigurations

=item *

UpdateMatchmakingConfiguration

=item *

DeleteMatchmakingConfiguration

=item *

CreateMatchmakingRuleSet

=item *

DescribeMatchmakingRuleSets

=item *

ValidateMatchmakingRuleSet

=item *

DeleteMatchmakingRuleSet

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllFleetAttributes(sub { },[FleetIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

=head2 DescribeAllFleetAttributes([FleetIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FleetAttributes, passing the object as the first parameter, and the string 'FleetAttributes' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeFleetAttributesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFleetCapacity(sub { },[FleetIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

=head2 DescribeAllFleetCapacity([FleetIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FleetCapacity, passing the object as the first parameter, and the string 'FleetCapacity' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeFleetCapacityOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFleetEvents(sub { },FleetId => Str, [EndTime => Str, Limit => Int, NextToken => Str, StartTime => Str])

=head2 DescribeAllFleetEvents(FleetId => Str, [EndTime => Str, Limit => Int, NextToken => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeFleetEventsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFleetUtilization(sub { },[FleetIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])

=head2 DescribeAllFleetUtilization([FleetIds => ArrayRef[Str|Undef], Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FleetUtilization, passing the object as the first parameter, and the string 'FleetUtilization' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeFleetUtilizationOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllGameSessionDetails(sub { },[AliasId => Str, FleetId => Str, GameSessionId => Str, Limit => Int, NextToken => Str, StatusFilter => Str])

=head2 DescribeAllGameSessionDetails([AliasId => Str, FleetId => Str, GameSessionId => Str, Limit => Int, NextToken => Str, StatusFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GameSessionDetails, passing the object as the first parameter, and the string 'GameSessionDetails' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeGameSessionDetailsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllGameSessionQueues(sub { },[Limit => Int, Names => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllGameSessionQueues([Limit => Int, Names => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GameSessionQueues, passing the object as the first parameter, and the string 'GameSessionQueues' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeGameSessionQueuesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllGameSessions(sub { },[AliasId => Str, FleetId => Str, GameSessionId => Str, Limit => Int, NextToken => Str, StatusFilter => Str])

=head2 DescribeAllGameSessions([AliasId => Str, FleetId => Str, GameSessionId => Str, Limit => Int, NextToken => Str, StatusFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GameSessions, passing the object as the first parameter, and the string 'GameSessions' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeGameSessionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstances(sub { },FleetId => Str, [InstanceId => Str, Limit => Int, NextToken => Str])

=head2 DescribeAllInstances(FleetId => Str, [InstanceId => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Instances, passing the object as the first parameter, and the string 'Instances' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllMatchmakingConfigurations(sub { },[Limit => Int, Names => ArrayRef[Str|Undef], NextToken => Str, RuleSetName => Str])

=head2 DescribeAllMatchmakingConfigurations([Limit => Int, Names => ArrayRef[Str|Undef], NextToken => Str, RuleSetName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Configurations, passing the object as the first parameter, and the string 'Configurations' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeMatchmakingConfigurationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllMatchmakingRuleSets(sub { },[Limit => Int, Names => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllMatchmakingRuleSets([Limit => Int, Names => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RuleSets, passing the object as the first parameter, and the string 'RuleSets' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeMatchmakingRuleSetsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllPlayerSessions(sub { },[GameSessionId => Str, Limit => Int, NextToken => Str, PlayerId => Str, PlayerSessionId => Str, PlayerSessionStatusFilter => Str])

=head2 DescribeAllPlayerSessions([GameSessionId => Str, Limit => Int, NextToken => Str, PlayerId => Str, PlayerSessionId => Str, PlayerSessionStatusFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PlayerSessions, passing the object as the first parameter, and the string 'PlayerSessions' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribePlayerSessionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllScalingPolicies(sub { },FleetId => Str, [Limit => Int, NextToken => Str, StatusFilter => Str])

=head2 DescribeAllScalingPolicies(FleetId => Str, [Limit => Int, NextToken => Str, StatusFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ScalingPolicies, passing the object as the first parameter, and the string 'ScalingPolicies' as the second parameter 

If not, it will return a a L<Paws::GameLift::DescribeScalingPoliciesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAliases(sub { },[Limit => Int, Name => Str, NextToken => Str, RoutingStrategyType => Str])

=head2 ListAllAliases([Limit => Int, Name => Str, NextToken => Str, RoutingStrategyType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Aliases, passing the object as the first parameter, and the string 'Aliases' as the second parameter 

If not, it will return a a L<Paws::GameLift::ListAliasesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBuilds(sub { },[Limit => Int, NextToken => Str, Status => Str])

=head2 ListAllBuilds([Limit => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Builds, passing the object as the first parameter, and the string 'Builds' as the second parameter 

If not, it will return a a L<Paws::GameLift::ListBuildsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFleets(sub { },[BuildId => Str, Limit => Int, NextToken => Str])

=head2 ListAllFleets([BuildId => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FleetIds, passing the object as the first parameter, and the string 'FleetIds' as the second parameter 

If not, it will return a a L<Paws::GameLift::ListFleetsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllGameSessions(sub { },[AliasId => Str, FilterExpression => Str, FleetId => Str, Limit => Int, NextToken => Str, SortExpression => Str])

=head2 SearchAllGameSessions([AliasId => Str, FilterExpression => Str, FleetId => Str, Limit => Int, NextToken => Str, SortExpression => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GameSessions, passing the object as the first parameter, and the string 'GameSessions' as the second parameter 

If not, it will return a a L<Paws::GameLift::SearchGameSessionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

