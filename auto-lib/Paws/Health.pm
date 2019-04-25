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

  
  sub DescribeAffectedEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::DescribeAffectedEntities', @_);
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
  sub DescribeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::DescribeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Health::DescribeEventTypes', @_);
    return $self->caller->do_call($self, $call_object);
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


  sub operations { qw/DescribeAffectedEntities DescribeEntityAggregates DescribeEventAggregates DescribeEventDetails DescribeEvents DescribeEventTypes / }

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
information that is presented in the AWS Personal Health Dashboard
(https://phd.aws.amazon.com/phd/home#/). You can get information about
events that affect your AWS resources:

=over

=item *

DescribeEvents: Summary information about events.

=item *

DescribeEventDetails: Detailed information about one or more events.

=item *

DescribeAffectedEntities: Information about AWS resources that are
affected by one or more events.

=back

In addition, these operations provide information about event types and
summary counts of events or affected entities:

=over

=item *

DescribeEventTypes: Information about the kinds of events that AWS
Health tracks.

=item *

DescribeEventAggregates: A count of the number of events that meet
specified criteria.

=item *

DescribeEntityAggregates: A count of the number of affected entities
that meet specified criteria.

=back

The Health API requires a Business or Enterprise support plan from AWS
Support (http://aws.amazon.com/premiumsupport/). Calling the Health API
from an account that does not have a Business or Enterprise support
plan causes a C<SubscriptionRequiredException>.

For authentication of requests, AWS Health uses the Signature Version 4
Signing Process
(http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

See the AWS Health User Guide
(http://docs.aws.amazon.com/health/latest/ug/what-is-aws-health.html)
for information about how to use the API.

B<Service Endpoint>

The HTTP endpoint for the AWS Health API is:

=over

=item *

https://health.us-east-1.amazonaws.com

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04>


=head1 METHODS

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


=head2 DescribeEventDetails

=over

=item EventArns => ArrayRef[Str|Undef]

=item [Locale => Str]


=back

Each argument is described in detail in: L<Paws::Health::DescribeEventDetails>

Returns: a L<Paws::Health::DescribeEventDetailsResponse> instance

Returns detailed information about one or more specified events.
Information includes standard event data (region, service, etc., as
returned by DescribeEvents), a detailed event description, and possible
additional metadata that depends upon the nature of the event. Affected
entities are not included; to retrieve those, use the
DescribeAffectedEntities operation.

If a specified event cannot be retrieved, an error message is returned
for that event.


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
DescribeEventDetails and DescribeAffectedEntities operations.

If no filter criteria are specified, all events are returned. Results
are sorted by C<lastModifiedTime>, starting with the most recent.


=head2 DescribeEventTypes

=over

=item [Filter => L<Paws::Health::EventTypeFilter>]

=item [Locale => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Health::DescribeEventTypes>

Returns: a L<Paws::Health::DescribeEventTypesResponse> instance

Returns the event types that meet the specified filter criteria. If no
filter criteria are specified, all event types are returned, in no
particular order.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllAffectedEntities(sub { },Filter => L<Paws::Health::EntityFilter>, [Locale => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllAffectedEntities(Filter => L<Paws::Health::EntityFilter>, [Locale => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - entities, passing the object as the first parameter, and the string 'entities' as the second parameter 

If not, it will return a a L<Paws::Health::DescribeAffectedEntitiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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

