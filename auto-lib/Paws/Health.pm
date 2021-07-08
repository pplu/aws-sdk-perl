package Paws::Health;
  use Moose;
  sub service { 'health' }
  sub signing_name { 'health' }
  sub version { '2016-08-04' }
  sub target_prefix { 'AWSHealth_20160804' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub DescribeAffectedAccountsForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::DescribeAffectedAccountsForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAffectedEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::DescribeAffectedEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAffectedEntitiesForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::DescribeAffectedEntitiesForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEntityAggregates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::DescribeEntityAggregates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventAggregates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::DescribeEventAggregates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::DescribeEventDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventDetailsForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::DescribeEventDetailsForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::DescribeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventsForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::DescribeEventsForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::DescribeEventTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHealthServiceStatusForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::DescribeHealthServiceStatusForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableHealthServiceAccessForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::DisableHealthServiceAccessForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableHealthServiceAccessForOrganization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::EnableHealthServiceAccessForOrganization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllAffectedAccountsForOrganization {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAffectedAccountsForOrganization(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeAffectedAccountsForOrganization(@_, nextToken => $next_result->nextToken);
        push @{ $result->affectedAccounts }, @{ $next_result->affectedAccounts };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'affectedAccounts') foreach (@{ $result->affectedAccounts });
        $result = $self->DescribeAffectedAccountsForOrganization(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'affectedAccounts') foreach (@{ $result->affectedAccounts });
    }

    return undef
  }
  sub DescribeAllAffectedEntities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAffectedEntities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeAffectedEntities(@_, nextToken => $next_result->nextToken);
        push @{ $result->entities }, @{ $next_result->entities };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'entities') foreach (@{ $result->entities });
        $result = $self->DescribeAffectedEntities(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'entities') foreach (@{ $result->entities });
    }

    return undef
  }
  sub DescribeAllAffectedEntitiesForOrganization {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAffectedEntitiesForOrganization(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeAffectedEntitiesForOrganization(@_, nextToken => $next_result->nextToken);
        push @{ $result->entities }, @{ $next_result->entities };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'entities') foreach (@{ $result->entities });
        $result = $self->DescribeAffectedEntitiesForOrganization(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'entities') foreach (@{ $result->entities });
    }

    return undef
  }
  sub DescribeAllEventAggregates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEventAggregates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeEventAggregates(@_, nextToken => $next_result->nextToken);
        push @{ $result->eventAggregates }, @{ $next_result->eventAggregates };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'eventAggregates') foreach (@{ $result->eventAggregates });
        $result = $self->DescribeEventAggregates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'eventAggregates') foreach (@{ $result->eventAggregates });
    }

    return undef
  }
  sub DescribeAllEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeEvents(@_, nextToken => $next_result->nextToken);
        push @{ $result->events }, @{ $next_result->events };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'events') foreach (@{ $result->events });
        $result = $self->DescribeEvents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'events') foreach (@{ $result->events });
    }

    return undef
  }
  sub DescribeAllEventsForOrganization {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEventsForOrganization(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeEventsForOrganization(@_, nextToken => $next_result->nextToken);
        push @{ $result->events }, @{ $next_result->events };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'events') foreach (@{ $result->events });
        $result = $self->DescribeEventsForOrganization(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'events') foreach (@{ $result->events });
    }

    return undef
  }
  sub DescribeAllEventTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEventTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeEventTypes(@_, nextToken => $next_result->nextToken);
        push @{ $result->eventTypes }, @{ $next_result->eventTypes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'eventTypes') foreach (@{ $result->eventTypes });
        $result = $self->DescribeEventTypes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'eventTypes') foreach (@{ $result->eventTypes });
    }

    return undef
  }


  sub operations { qw/DescribeAffectedAccountsForOrganization DescribeAffectedEntities DescribeAffectedEntitiesForOrganization DescribeEntityAggregates DescribeEventAggregates DescribeEventDetails DescribeEventDetailsForOrganization DescribeEvents DescribeEventsForOrganization DescribeEventTypes DescribeHealthServiceStatusForOrganization DisableHealthServiceAccessForOrganization EnableHealthServiceAccessForOrganization / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Health - Perl Interface to AWS AWS Health APIs and Notifications

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Health');
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

AWS Health

The AWS Health API provides programmatic access to the AWS Health
information that appears in the AWS Personal Health Dashboard
(https://phd.aws.amazon.com/phd/home#/). You can use the API operations
to get information about AWS Health events that affect your AWS
services and resources.

=over

=item *

You must have a Business or Enterprise Support plan from AWS Support
(http://aws.amazon.com/premiumsupport/) to use the AWS Health API. If
you call the AWS Health API from an AWS account that doesn't have a
Business or Enterprise Support plan, you receive a
C<SubscriptionRequiredException> error.

=item *

You can use the AWS Health endpoint health.us-east-1.amazonaws.com
(HTTPS) to call the AWS Health API operations. AWS Health supports a
multi-Region application architecture and has two regional endpoints in
an active-passive configuration. You can use the high availability
endpoint example to determine which AWS Region is active, so that you
can get the latest information from the API. For more information, see
Accessing the AWS Health API
(https://docs.aws.amazon.com/health/latest/ug/health-api.html) in the
I<AWS Health User Guide>.

=back

For authentication of requests, AWS Health uses the Signature Version 4
Signing Process
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

If your AWS account is part of AWS Organizations, you can use the AWS
Health organizational view feature. This feature provides a centralized
view of AWS Health events across all accounts in your organization. You
can aggregate AWS Health events in real time to identify accounts in
your organization that are affected by an operational event or get
notified of security vulnerabilities. Use the organizational view API
operations to enable this feature and return event information. For
more information, see Aggregating AWS Health events
(https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html) in
the I<AWS Health User Guide>.

When you use the AWS Health API operations to return AWS Health events,
see the following recommendations:

=over

=item *

Use the eventScopeCode
(https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode)
parameter to specify whether to return AWS Health events that are
public or account-specific.

=item *

Use pagination to view all events from the response. For example, if
you call the C<DescribeEventsForOrganization> operation to get all
events in your organization, you might receive several page results.
Specify the C<nextToken> in the next request to return more results.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04>


=head1 METHODS

=head2 DescribeAffectedAccountsForOrganization

=over

=item EventArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Health::DescribeAffectedAccountsForOrganization>

Returns: a L<Paws::Health::DescribeAffectedAccountsForOrganizationResponse> instance

Returns a list of accounts in the organization from AWS Organizations
that are affected by the provided event. For more information about the
different types of AWS Health events, see Event
(https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).

Before you can call this operation, you must first enable AWS Health to
work with AWS Organizations. To do this, call the
EnableHealthServiceAccessForOrganization
(https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html)
operation from your organization's management account.

This API operation uses pagination. Specify the C<nextToken> parameter
in the next request to return more results.


=head2 DescribeAffectedEntities

=over

=item Filter => L<Paws::Health::EntityFilter>

=item [Locale => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Health::DescribeAffectedEntities>

Returns: a L<Paws::Health::DescribeAffectedEntitiesResponse> instance

Returns a list of entities that have been affected by the specified
events, based on the specified filter criteria. Entities can refer to
individual customer resources, groups of customer resources, or any
other construct, depending on the AWS service. Events that have impact
beyond that of the affected entities, or where the extent of impact is
unknown, include at least one entity indicating this.

At least one event ARN is required. Results are sorted by the
C<lastUpdatedTime> of the entity, starting with the most recent.

=over

=item *

This API operation uses pagination. Specify the C<nextToken> parameter
in the next request to return more results.

=item *

This operation supports resource-level permissions. You can use this
operation to allow or deny access to specific AWS Health events. For
more information, see Resource- and action-based conditions
(https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions)
in the I<AWS Health User Guide>.

=back



=head2 DescribeAffectedEntitiesForOrganization

=over

=item OrganizationEntityFilters => ArrayRef[L<Paws::Health::EventAccountFilter>]

=item [Locale => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Health::DescribeAffectedEntitiesForOrganization>

Returns: a L<Paws::Health::DescribeAffectedEntitiesForOrganizationResponse> instance

Returns a list of entities that have been affected by one or more
events for one or more accounts in your organization in AWS
Organizations, based on the filter criteria. Entities can refer to
individual customer resources, groups of customer resources, or any
other construct, depending on the AWS service.

At least one event Amazon Resource Name (ARN) and account ID are
required. Results are sorted by the C<lastUpdatedTime> of the entity,
starting with the most recent.

Before you can call this operation, you must first enable AWS Health to
work with AWS Organizations. To do this, call the
EnableHealthServiceAccessForOrganization
(https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html)
operation from your organization's management account.

=over

=item *

This API operation uses pagination. Specify the C<nextToken> parameter
in the next request to return more results.

=item *

This operation doesn't support resource-level permissions. You can't
use this operation to allow or deny access to specific AWS Health
events. For more information, see Resource- and action-based conditions
(https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions)
in the I<AWS Health User Guide>.

=back



=head2 DescribeEntityAggregates

=over

=item [EventArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Health::DescribeEntityAggregates>

Returns: a L<Paws::Health::DescribeEntityAggregatesResponse> instance

Returns the number of entities that are affected by each of the
specified events. If no events are specified, the counts of all
affected entities are returned.


=head2 DescribeEventAggregates

=over

=item AggregateField => Str

=item [Filter => L<Paws::Health::EventFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Health::DescribeEventAggregates>

Returns: a L<Paws::Health::DescribeEventAggregatesResponse> instance

Returns the number of events of each event type (issue, scheduled
change, and account notification). If no filter is specified, the
counts of all events in each category are returned.

This API operation uses pagination. Specify the C<nextToken> parameter
in the next request to return more results.


=head2 DescribeEventDetails

=over

=item EventArns => ArrayRef[Str|Undef]

=item [Locale => Str]


=back

Each argument is described in detail in: L<Paws::Health::DescribeEventDetails>

Returns: a L<Paws::Health::DescribeEventDetailsResponse> instance

Returns detailed information about one or more specified events.
Information includes standard event data (AWS Region, service, and so
on, as returned by DescribeEvents
(https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEvents.html)),
a detailed event description, and possible additional metadata that
depends upon the nature of the event. Affected entities are not
included. To retrieve the entities, use the DescribeAffectedEntities
(https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html)
operation.

If a specified event can't be retrieved, an error message is returned
for that event.

This operation supports resource-level permissions. You can use this
operation to allow or deny access to specific AWS Health events. For
more information, see Resource- and action-based conditions
(https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions)
in the I<AWS Health User Guide>.


=head2 DescribeEventDetailsForOrganization

=over

=item OrganizationEventDetailFilters => ArrayRef[L<Paws::Health::EventAccountFilter>]

=item [Locale => Str]


=back

Each argument is described in detail in: L<Paws::Health::DescribeEventDetailsForOrganization>

Returns: a L<Paws::Health::DescribeEventDetailsForOrganizationResponse> instance

Returns detailed information about one or more specified events for one
or more AWS accounts in your organization. This information includes
standard event data (such as the AWS Region and service), an event
description, and (depending on the event) possible metadata. This
operation doesn't return affected entities, such as the resources
related to the event. To return affected entities, use the
DescribeAffectedEntitiesForOrganization
(https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html)
operation.

Before you can call this operation, you must first enable AWS Health to
work with AWS Organizations. To do this, call the
EnableHealthServiceAccessForOrganization
(https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html)
operation from your organization's management account.

When you call the C<DescribeEventDetailsForOrganization> operation,
specify the C<organizationEventDetailFilters> object in the request.
Depending on the AWS Health event type, note the following differences:

=over

=item *

To return event details for a public event, you must specify a null
value for the C<awsAccountId> parameter. If you specify an account ID
for a public event, AWS Health returns an error message because public
events aren't specific to an account.

=item *

To return event details for an event that is specific to an account in
your organization, you must specify the C<awsAccountId> parameter in
the request. If you don't specify an account ID, AWS Health returns an
error message because the event is specific to an account in your
organization.

=back

For more information, see Event
(https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).

This operation doesn't support resource-level permissions. You can't
use this operation to allow or deny access to specific AWS Health
events. For more information, see Resource- and action-based conditions
(https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions)
in the I<AWS Health User Guide>.


=head2 DescribeEvents

=over

=item [Filter => L<Paws::Health::EventFilter>]

=item [Locale => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Health::DescribeEvents>

Returns: a L<Paws::Health::DescribeEventsResponse> instance

Returns information about events that meet the specified filter
criteria. Events are returned in a summary form and do not include the
detailed description, any additional metadata that depends on the event
type, or any affected resources. To retrieve that information, use the
DescribeEventDetails
(https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html)
and DescribeAffectedEntities
(https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html)
operations.

If no filter criteria are specified, all events are returned. Results
are sorted by C<lastModifiedTime>, starting with the most recent event.

=over

=item *

When you call the C<DescribeEvents> operation and specify an entity for
the C<entityValues> parameter, AWS Health might return public events
that aren't specific to that resource. For example, if you call
C<DescribeEvents> and specify an ID for an Amazon Elastic Compute Cloud
(Amazon EC2) instance, AWS Health might return events that aren't
specific to that resource or service. To get events that are specific
to a service, use the C<services> parameter in the C<filter> object.
For more information, see Event
(https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).

=item *

This API operation uses pagination. Specify the C<nextToken> parameter
in the next request to return more results.

=back



=head2 DescribeEventsForOrganization

=over

=item [Filter => L<Paws::Health::OrganizationEventFilter>]

=item [Locale => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Health::DescribeEventsForOrganization>

Returns: a L<Paws::Health::DescribeEventsForOrganizationResponse> instance

Returns information about events across your organization in AWS
Organizations. You can use theC<filters> parameter to specify the
events that you want to return. Events are returned in a summary form
and don't include the affected accounts, detailed description, any
additional metadata that depends on the event type, or any affected
resources. To retrieve that information, use the following operations:

=over

=item *

DescribeAffectedAccountsForOrganization
(https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedAccountsForOrganization.html)

=item *

DescribeEventDetailsForOrganization
(https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html)

=item *

DescribeAffectedEntitiesForOrganization
(https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html)

=back

If you don't specify a C<filter>, the C<DescribeEventsForOrganizations>
returns all events across your organization. Results are sorted by
C<lastModifiedTime>, starting with the most recent event.

For more information about the different types of AWS Health events,
see Event
(https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).

Before you can call this operation, you must first enable AWS Health to
work with AWS Organizations. To do this, call the
EnableHealthServiceAccessForOrganization
(https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html)
operation from your organization's management account.

This API operation uses pagination. Specify the C<nextToken> parameter
in the next request to return more results.


=head2 DescribeEventTypes

=over

=item [Filter => L<Paws::Health::EventTypeFilter>]

=item [Locale => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Health::DescribeEventTypes>

Returns: a L<Paws::Health::DescribeEventTypesResponse> instance

Returns the event types that meet the specified filter criteria. You
can use this API operation to find information about the AWS Health
event, such as the category, AWS service, and event code. The metadata
for each event appears in the EventType
(https://docs.aws.amazon.com/health/latest/APIReference/API_EventType.html)
object.

If you don't specify a filter criteria, the API operation returns all
event types, in no particular order.

This API operation uses pagination. Specify the C<nextToken> parameter
in the next request to return more results.


=head2 DescribeHealthServiceStatusForOrganization

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Health::DescribeHealthServiceStatusForOrganization>

Returns: a L<Paws::Health::DescribeHealthServiceStatusForOrganizationResponse> instance

This operation provides status information on enabling or disabling AWS
Health to work with your organization. To call this operation, you must
sign in as an IAM user, assume an IAM role, or sign in as the root user
(not recommended) in the organization's management account.


=head2 DisableHealthServiceAccessForOrganization

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Health::DisableHealthServiceAccessForOrganization>

Returns: nothing

Disables AWS Health from working with AWS Organizations. To call this
operation, you must sign in as an AWS Identity and Access Management
(IAM) user, assume an IAM role, or sign in as the root user (not
recommended) in the organization's management account. For more
information, see Aggregating AWS Health events
(https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html) in
the I<AWS Health User Guide>.

This operation doesn't remove the service-linked role from the
management account in your organization. You must use the IAM console,
API, or AWS Command Line Interface (AWS CLI) to remove the
service-linked role. For more information, see Deleting a
Service-Linked Role
(https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html#delete-service-linked-role)
in the I<IAM User Guide>.

You can also disable the organizational feature by using the
Organizations DisableAWSServiceAccess
(https://docs.aws.amazon.com/organizations/latest/APIReference/API_DisableAWSServiceAccess.html)
API operation. After you call this operation, AWS Health stops
aggregating events for all other AWS accounts in your organization. If
you call the AWS Health API operations for organizational view, AWS
Health returns an error. AWS Health continues to aggregate health
events for your AWS account.


=head2 EnableHealthServiceAccessForOrganization

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Health::EnableHealthServiceAccessForOrganization>

Returns: nothing

Enables AWS Health to work with AWS Organizations. You can use the
organizational view feature to aggregate events from all AWS accounts
in your organization in a centralized location.

This operation also creates a service-linked role for the management
account in the organization.

To call this operation, you must meet the following requirements:

=over

=item *

You must have a Business or Enterprise Support plan from AWS Support
(http://aws.amazon.com/premiumsupport/) to use the AWS Health API. If
you call the AWS Health API from an AWS account that doesn't have a
Business or Enterprise Support plan, you receive a
C<SubscriptionRequiredException> error.

=item *

You must have permission to call this operation from the organization's
management account. For example IAM policies, see AWS Health
identity-based policy examples
(https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html).

=back

If you don't have the required support plan, you can instead use the
AWS Health console to enable the organizational view feature. For more
information, see Aggregating AWS Health events
(https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html) in
the I<AWS Health User Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllAffectedAccountsForOrganization(sub { },EventArn => Str, [MaxResults => Int, NextToken => Str])

=head2 DescribeAllAffectedAccountsForOrganization(EventArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - affectedAccounts, passing the object as the first parameter, and the string 'affectedAccounts' as the second parameter 

If not, it will return a a L<Paws::Health::DescribeAffectedAccountsForOrganizationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllAffectedEntities(sub { },Filter => L<Paws::Health::EntityFilter>, [Locale => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllAffectedEntities(Filter => L<Paws::Health::EntityFilter>, [Locale => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - entities, passing the object as the first parameter, and the string 'entities' as the second parameter 

If not, it will return a a L<Paws::Health::DescribeAffectedEntitiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllAffectedEntitiesForOrganization(sub { },OrganizationEntityFilters => ArrayRef[L<Paws::Health::EventAccountFilter>], [Locale => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllAffectedEntitiesForOrganization(OrganizationEntityFilters => ArrayRef[L<Paws::Health::EventAccountFilter>], [Locale => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - entities, passing the object as the first parameter, and the string 'entities' as the second parameter 

If not, it will return a a L<Paws::Health::DescribeAffectedEntitiesForOrganizationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEventAggregates(sub { },AggregateField => Str, [Filter => L<Paws::Health::EventFilter>, MaxResults => Int, NextToken => Str])

=head2 DescribeAllEventAggregates(AggregateField => Str, [Filter => L<Paws::Health::EventFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - eventAggregates, passing the object as the first parameter, and the string 'eventAggregates' as the second parameter 

If not, it will return a a L<Paws::Health::DescribeEventAggregatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEvents(sub { },[Filter => L<Paws::Health::EventFilter>, Locale => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllEvents([Filter => L<Paws::Health::EventFilter>, Locale => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - events, passing the object as the first parameter, and the string 'events' as the second parameter 

If not, it will return a a L<Paws::Health::DescribeEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEventsForOrganization(sub { },[Filter => L<Paws::Health::OrganizationEventFilter>, Locale => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllEventsForOrganization([Filter => L<Paws::Health::OrganizationEventFilter>, Locale => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - events, passing the object as the first parameter, and the string 'events' as the second parameter 

If not, it will return a a L<Paws::Health::DescribeEventsForOrganizationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEventTypes(sub { },[Filter => L<Paws::Health::EventTypeFilter>, Locale => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllEventTypes([Filter => L<Paws::Health::EventTypeFilter>, Locale => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - eventTypes, passing the object as the first parameter, and the string 'eventTypes' as the second parameter 

If not, it will return a a L<Paws::Health::DescribeEventTypesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

