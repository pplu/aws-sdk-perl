package Paws::CostExplorer;
  use Moose;
  sub service { 'ce' }
  sub version { '2017-10-25' }
  sub target_prefix { 'AWSInsightsIndexService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub GetCostAndUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetCostAndUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDimensionValues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetDimensionValues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReservationUtilization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetReservationUtilization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostExplorer::GetTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GetCostAndUsage GetDimensionValues GetReservationUtilization GetTags / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer - Perl Interface to AWS AWS Cost Explorer Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CostExplorer');
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

The Cost Explorer API allows you to programmatically query your cost
and usage data. You can query for aggregated data such as total monthly
costs or total daily usage. You can also query for granular data, such
as the number of daily write operations for DynamoDB database tables in
your production environment.

Service Endpoint

The Cost Explorer API provides the following endpoint:

=over

=item *

https://ce.us-east-1.amazonaws.com

=back


=head1 METHODS

=head2 GetCostAndUsage([Filter => L<Paws::CostExplorer::Expression>, Granularity => Str, GroupBy => ArrayRef[L<Paws::CostExplorer::GroupDefinition>], Metrics => ArrayRef[Str|Undef], NextPageToken => Str, TimePeriod => L<Paws::CostExplorer::DateInterval>])

Each argument is described in detail in: L<Paws::CostExplorer::GetCostAndUsage>

Returns: a L<Paws::CostExplorer::GetCostAndUsageResponse> instance

Retrieve cost and usage metrics for your account. You can specify which
cost and usage-related metric, such as C<BlendedCosts> or
C<UsageQuantity>, that you want the request to return. You can also
filter and group your data by various dimensions, such as C<AWS
Service> or C<AvailabilityZone>, in a specific time range. See the
C<GetDimensionValues> action for a complete list of the valid
dimensions. Master accounts in an organization have access to all
member accounts.


=head2 GetDimensionValues(Dimension => Str, TimePeriod => L<Paws::CostExplorer::DateInterval>, [Context => Str, NextPageToken => Str, SearchString => Str])

Each argument is described in detail in: L<Paws::CostExplorer::GetDimensionValues>

Returns: a L<Paws::CostExplorer::GetDimensionValuesResponse> instance

You can use C<GetDimensionValues> to retrieve all available filter
values for a specific filter over a period of time. You can search the
dimension values for an arbitrary string.


=head2 GetReservationUtilization(TimePeriod => L<Paws::CostExplorer::DateInterval>, [Filter => L<Paws::CostExplorer::Expression>, Granularity => Str, GroupBy => ArrayRef[L<Paws::CostExplorer::GroupDefinition>], NextPageToken => Str])

Each argument is described in detail in: L<Paws::CostExplorer::GetReservationUtilization>

Returns: a L<Paws::CostExplorer::GetReservationUtilizationResponse> instance

You can retrieve the Reservation utilization for your account. Master
accounts in an organization have access to their associated member
accounts. You can filter data by dimensions in a time period. You can
use C<GetDimensionValues> to determine the possible dimension values.
Currently, you can group only by C<SUBSCRIPTION_ID>.


=head2 GetTags(TimePeriod => L<Paws::CostExplorer::DateInterval>, [NextPageToken => Str, SearchString => Str, TagKey => Str])

Each argument is described in detail in: L<Paws::CostExplorer::GetTags>

Returns: a L<Paws::CostExplorer::GetTagsResponse> instance

You can query for available tag keys and tag values for a specified
period. You can search the tag values for an arbitrary string.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

