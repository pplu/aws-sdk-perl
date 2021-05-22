package Paws::SSMIncidents;
  use Moose;
  sub service { 'ssm-incidents' }
  sub signing_name { 'ssm-incidents' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateReplicationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::CreateReplicationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResponsePlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::CreateResponsePlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTimelineEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::CreateTimelineEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIncidentRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::DeleteIncidentRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::DeleteReplicationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResponsePlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::DeleteResponsePlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTimelineEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::DeleteTimelineEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIncidentRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::GetIncidentRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReplicationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::GetReplicationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::GetResourcePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResponsePlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::GetResponsePlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTimelineEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::GetTimelineEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIncidentRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::ListIncidentRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRelatedItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::ListRelatedItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReplicationSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::ListReplicationSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResponsePlans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::ListResponsePlans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTimelineEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::ListTimelineEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartIncident {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::StartIncident', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDeletionProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::UpdateDeletionProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIncidentRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::UpdateIncidentRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRelatedItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::UpdateRelatedItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReplicationSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::UpdateReplicationSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResponsePlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::UpdateResponsePlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTimelineEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMIncidents::UpdateTimelineEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllResourcePolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResourcePolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetResourcePolicies(@_, nextToken => $next_result->nextToken);
        push @{ $result->resourcePolicies }, @{ $next_result->resourcePolicies };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resourcePolicies') foreach (@{ $result->resourcePolicies });
        $result = $self->GetResourcePolicies(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resourcePolicies') foreach (@{ $result->resourcePolicies });
    }

    return undef
  }
  sub ListAllIncidentRecords {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIncidentRecords(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListIncidentRecords(@_, nextToken => $next_result->nextToken);
        push @{ $result->incidentRecordSummaries }, @{ $next_result->incidentRecordSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'incidentRecordSummaries') foreach (@{ $result->incidentRecordSummaries });
        $result = $self->ListIncidentRecords(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'incidentRecordSummaries') foreach (@{ $result->incidentRecordSummaries });
    }

    return undef
  }
  sub ListAllRelatedItems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRelatedItems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRelatedItems(@_, nextToken => $next_result->nextToken);
        push @{ $result->relatedItems }, @{ $next_result->relatedItems };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'relatedItems') foreach (@{ $result->relatedItems });
        $result = $self->ListRelatedItems(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'relatedItems') foreach (@{ $result->relatedItems });
    }

    return undef
  }
  sub ListAllReplicationSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReplicationSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReplicationSets(@_, nextToken => $next_result->nextToken);
        push @{ $result->replicationSetArns }, @{ $next_result->replicationSetArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'replicationSetArns') foreach (@{ $result->replicationSetArns });
        $result = $self->ListReplicationSets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'replicationSetArns') foreach (@{ $result->replicationSetArns });
    }

    return undef
  }
  sub ListAllResponsePlans {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResponsePlans(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListResponsePlans(@_, nextToken => $next_result->nextToken);
        push @{ $result->responsePlanSummaries }, @{ $next_result->responsePlanSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'responsePlanSummaries') foreach (@{ $result->responsePlanSummaries });
        $result = $self->ListResponsePlans(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'responsePlanSummaries') foreach (@{ $result->responsePlanSummaries });
    }

    return undef
  }
  sub ListAllTimelineEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTimelineEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTimelineEvents(@_, nextToken => $next_result->nextToken);
        push @{ $result->eventSummaries }, @{ $next_result->eventSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'eventSummaries') foreach (@{ $result->eventSummaries });
        $result = $self->ListTimelineEvents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'eventSummaries') foreach (@{ $result->eventSummaries });
    }

    return undef
  }


  sub operations { qw/CreateReplicationSet CreateResponsePlan CreateTimelineEvent DeleteIncidentRecord DeleteReplicationSet DeleteResourcePolicy DeleteResponsePlan DeleteTimelineEvent GetIncidentRecord GetReplicationSet GetResourcePolicies GetResponsePlan GetTimelineEvent ListIncidentRecords ListRelatedItems ListReplicationSets ListResponsePlans ListTagsForResource ListTimelineEvents PutResourcePolicy StartIncident TagResource UntagResource UpdateDeletionProtection UpdateIncidentRecord UpdateRelatedItems UpdateReplicationSet UpdateResponsePlan UpdateTimelineEvent / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents - Perl Interface to AWS AWS Systems Manager Incident Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SSMIncidents');
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

AWS Systems Manager Incident Manager is an incident management console
designed to help users mitigate and recover from incidents affecting
their AWS-hosted applications. An incident is any unplanned
interruption or reduction in quality of services.

Incident Manager increases incident resolution by notifying responders
of impact, highlighting relevant troubleshooting data, and providing
collaboration tools to get services back up and running. To achieve the
primary goal of reducing the time-to-resolution of critical incidents,
Incident Manager automates response plans and enables responder team
escalation.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents-2018-05-10>


=head1 METHODS

=head2 CreateReplicationSet

=over

=item Regions => L<Paws::SSMIncidents::RegionMapInput>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::CreateReplicationSet>

Returns: a L<Paws::SSMIncidents::CreateReplicationSetOutput> instance

A replication set replicates and encrypts your data to the provided
Regions with the provided KMS key.


=head2 CreateResponsePlan

=over

=item IncidentTemplate => L<Paws::SSMIncidents::IncidentTemplate>

=item Name => Str

=item [Actions => ArrayRef[L<Paws::SSMIncidents::Action>]]

=item [ChatChannel => L<Paws::SSMIncidents::ChatChannel>]

=item [ClientToken => Str]

=item [DisplayName => Str]

=item [Engagements => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::SSMIncidents::TagMap>]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::CreateResponsePlan>

Returns: a L<Paws::SSMIncidents::CreateResponsePlanOutput> instance

Creates a response plan that automates the initial response to
incidents. A response plan engages contacts, starts chat channel
collaboration, and initiates runbooks at the beginning of an incident.


=head2 CreateTimelineEvent

=over

=item ClientToken => Str

=item EventData => Str

=item EventTime => Str

=item EventType => Str

=item IncidentRecordArn => Str


=back

Each argument is described in detail in: L<Paws::SSMIncidents::CreateTimelineEvent>

Returns: a L<Paws::SSMIncidents::CreateTimelineEventOutput> instance

Creates a custom timeline event on the incident details page of an
incident record. Timeline events are automatically created by Incident
Manager, marking key moment during an incident. You can create custom
timeline events to mark important events that are automatically
detected by Incident Manager.


=head2 DeleteIncidentRecord

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::SSMIncidents::DeleteIncidentRecord>

Returns: a L<Paws::SSMIncidents::DeleteIncidentRecordOutput> instance

Delete an incident record from Incident Manager.


=head2 DeleteReplicationSet

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::SSMIncidents::DeleteReplicationSet>

Returns: a L<Paws::SSMIncidents::DeleteReplicationSetOutput> instance

Deletes all Regions in your replication set. Deleting the replication
set deletes all Incident Manager data.


=head2 DeleteResourcePolicy

=over

=item PolicyId => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SSMIncidents::DeleteResourcePolicy>

Returns: a L<Paws::SSMIncidents::DeleteResourcePolicyOutput> instance

Deletes the resource policy that AWS Resource Access Manager uses to
share your Incident Manager resource.


=head2 DeleteResponsePlan

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::SSMIncidents::DeleteResponsePlan>

Returns: a L<Paws::SSMIncidents::DeleteResponsePlanOutput> instance

Deletes the specified response plan. Deleting a response plan stops all
linked CloudWatch alarms and EventBridge events from creating an
incident with this response plan.


=head2 DeleteTimelineEvent

=over

=item EventId => Str

=item IncidentRecordArn => Str


=back

Each argument is described in detail in: L<Paws::SSMIncidents::DeleteTimelineEvent>

Returns: a L<Paws::SSMIncidents::DeleteTimelineEventOutput> instance

Deletes a timeline event from an incident.


=head2 GetIncidentRecord

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::SSMIncidents::GetIncidentRecord>

Returns: a L<Paws::SSMIncidents::GetIncidentRecordOutput> instance

Returns the details of the specified incident record.


=head2 GetReplicationSet

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::SSMIncidents::GetReplicationSet>

Returns: a L<Paws::SSMIncidents::GetReplicationSetOutput> instance

Retrieve your Incident Manager replication set.


=head2 GetResourcePolicies

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::GetResourcePolicies>

Returns: a L<Paws::SSMIncidents::GetResourcePoliciesOutput> instance

Retrieves the resource policies attached to the specified response
plan.


=head2 GetResponsePlan

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::SSMIncidents::GetResponsePlan>

Returns: a L<Paws::SSMIncidents::GetResponsePlanOutput> instance

Retrieves the details of the specified response plan.


=head2 GetTimelineEvent

=over

=item EventId => Str

=item IncidentRecordArn => Str


=back

Each argument is described in detail in: L<Paws::SSMIncidents::GetTimelineEvent>

Returns: a L<Paws::SSMIncidents::GetTimelineEventOutput> instance

Retrieves a timeline event based on its ID and incident record.


=head2 ListIncidentRecords

=over

=item [Filters => ArrayRef[L<Paws::SSMIncidents::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::ListIncidentRecords>

Returns: a L<Paws::SSMIncidents::ListIncidentRecordsOutput> instance

Lists all incident records in your account. Use this command to
retrieve the Amazon Resource Name (ARN) of the incident record you want
to update.


=head2 ListRelatedItems

=over

=item IncidentRecordArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::ListRelatedItems>

Returns: a L<Paws::SSMIncidents::ListRelatedItemsOutput> instance

List all related items for an incident record.


=head2 ListReplicationSets

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::ListReplicationSets>

Returns: a L<Paws::SSMIncidents::ListReplicationSetsOutput> instance

Lists details about the replication set configured in your account.


=head2 ListResponsePlans

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::ListResponsePlans>

Returns: a L<Paws::SSMIncidents::ListResponsePlansOutput> instance

Lists all response plans in your account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SSMIncidents::ListTagsForResource>

Returns: a L<Paws::SSMIncidents::ListTagsForResourceResponse> instance

Lists the tags that are attached to the specified response plan.


=head2 ListTimelineEvents

=over

=item IncidentRecordArn => Str

=item [Filters => ArrayRef[L<Paws::SSMIncidents::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::ListTimelineEvents>

Returns: a L<Paws::SSMIncidents::ListTimelineEventsOutput> instance

Lists timeline events of the specified incident record.


=head2 PutResourcePolicy

=over

=item Policy => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SSMIncidents::PutResourcePolicy>

Returns: a L<Paws::SSMIncidents::PutResourcePolicyOutput> instance

Adds a resource policy to the specified response plan.


=head2 StartIncident

=over

=item ResponsePlanArn => Str

=item [ClientToken => Str]

=item [Impact => Int]

=item [RelatedItems => ArrayRef[L<Paws::SSMIncidents::RelatedItem>]]

=item [Title => Str]

=item [TriggerDetails => L<Paws::SSMIncidents::TriggerDetails>]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::StartIncident>

Returns: a L<Paws::SSMIncidents::StartIncidentOutput> instance

Used to start an incident from CloudWatch alarms, EventBridge events,
or manually.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::SSMIncidents::TagMap>


=back

Each argument is described in detail in: L<Paws::SSMIncidents::TagResource>

Returns: a L<Paws::SSMIncidents::TagResourceResponse> instance

Adds a tag to a response plan.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::UntagResource>

Returns: a L<Paws::SSMIncidents::UntagResourceResponse> instance

Removes a tag from a resource.


=head2 UpdateDeletionProtection

=over

=item Arn => Str

=item DeletionProtected => Bool

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::UpdateDeletionProtection>

Returns: a L<Paws::SSMIncidents::UpdateDeletionProtectionOutput> instance

Update deletion protection to either allow or deny deletion of the
final Region in a replication set.


=head2 UpdateIncidentRecord

=over

=item Arn => Str

=item [ChatChannel => L<Paws::SSMIncidents::ChatChannel>]

=item [ClientToken => Str]

=item [Impact => Int]

=item [NotificationTargets => ArrayRef[L<Paws::SSMIncidents::NotificationTargetItem>]]

=item [Status => Str]

=item [Summary => Str]

=item [Title => Str]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::UpdateIncidentRecord>

Returns: a L<Paws::SSMIncidents::UpdateIncidentRecordOutput> instance

Update the details of an incident record. You can use this action to
update an incident record from the defined chat channel. For more
information about using actions in chat channels, see Interacting
through chat
(https://docs.aws.amazon.com/incident-manager/latest/userguide/chat.html#chat-interact).


=head2 UpdateRelatedItems

=over

=item IncidentRecordArn => Str

=item RelatedItemsUpdate => L<Paws::SSMIncidents::RelatedItemsUpdate>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::UpdateRelatedItems>

Returns: a L<Paws::SSMIncidents::UpdateRelatedItemsOutput> instance

Add or remove related items from the related items tab of an incident
record.


=head2 UpdateReplicationSet

=over

=item Actions => ArrayRef[L<Paws::SSMIncidents::UpdateReplicationSetAction>]

=item Arn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::UpdateReplicationSet>

Returns: a L<Paws::SSMIncidents::UpdateReplicationSetOutput> instance

Add or delete Regions from your replication set.


=head2 UpdateResponsePlan

=over

=item Arn => Str

=item [Actions => ArrayRef[L<Paws::SSMIncidents::Action>]]

=item [ChatChannel => L<Paws::SSMIncidents::ChatChannel>]

=item [ClientToken => Str]

=item [DisplayName => Str]

=item [Engagements => ArrayRef[Str|Undef]]

=item [IncidentTemplateDedupeString => Str]

=item [IncidentTemplateImpact => Int]

=item [IncidentTemplateNotificationTargets => ArrayRef[L<Paws::SSMIncidents::NotificationTargetItem>]]

=item [IncidentTemplateSummary => Str]

=item [IncidentTemplateTitle => Str]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::UpdateResponsePlan>

Returns: a L<Paws::SSMIncidents::UpdateResponsePlanOutput> instance

Updates the specified response plan.


=head2 UpdateTimelineEvent

=over

=item ClientToken => Str

=item EventId => Str

=item IncidentRecordArn => Str

=item [EventData => Str]

=item [EventTime => Str]

=item [EventType => Str]


=back

Each argument is described in detail in: L<Paws::SSMIncidents::UpdateTimelineEvent>

Returns: a L<Paws::SSMIncidents::UpdateTimelineEventOutput> instance

Updates a timeline event. You can update events of type C<Custom
Event>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllResourcePolicies(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllResourcePolicies(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resourcePolicies, passing the object as the first parameter, and the string 'resourcePolicies' as the second parameter 

If not, it will return a a L<Paws::SSMIncidents::GetResourcePoliciesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIncidentRecords(sub { },[Filters => ArrayRef[L<Paws::SSMIncidents::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllIncidentRecords([Filters => ArrayRef[L<Paws::SSMIncidents::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - incidentRecordSummaries, passing the object as the first parameter, and the string 'incidentRecordSummaries' as the second parameter 

If not, it will return a a L<Paws::SSMIncidents::ListIncidentRecordsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRelatedItems(sub { },IncidentRecordArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRelatedItems(IncidentRecordArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - relatedItems, passing the object as the first parameter, and the string 'relatedItems' as the second parameter 

If not, it will return a a L<Paws::SSMIncidents::ListRelatedItemsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReplicationSets(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllReplicationSets([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - replicationSetArns, passing the object as the first parameter, and the string 'replicationSetArns' as the second parameter 

If not, it will return a a L<Paws::SSMIncidents::ListReplicationSetsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResponsePlans(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllResponsePlans([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - responsePlanSummaries, passing the object as the first parameter, and the string 'responsePlanSummaries' as the second parameter 

If not, it will return a a L<Paws::SSMIncidents::ListResponsePlansOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTimelineEvents(sub { },IncidentRecordArn => Str, [Filters => ArrayRef[L<Paws::SSMIncidents::Filter>], MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllTimelineEvents(IncidentRecordArn => Str, [Filters => ArrayRef[L<Paws::SSMIncidents::Filter>], MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - eventSummaries, passing the object as the first parameter, and the string 'eventSummaries' as the second parameter 

If not, it will return a a L<Paws::SSMIncidents::ListTimelineEventsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

