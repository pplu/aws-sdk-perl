
package Paws::ElastiCache::DescribeEvents;
  use Moose;
  has Duration => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::EventsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeEvents - Arguments for method DescribeEvents on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEvents on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DescribeEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEvents.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $EventsMessage = $elasticache->DescribeEvents(
      Duration         => 1,                        # OPTIONAL
      EndTime          => '1970-01-01T01:00:00',    # OPTIONAL
      Marker           => 'MyString',               # OPTIONAL
      MaxRecords       => 1,                        # OPTIONAL
      SourceIdentifier => 'MyString',               # OPTIONAL
      SourceType       => 'cache-cluster',          # OPTIONAL
      StartTime        => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $Events = $EventsMessage->Events;
    my $Marker = $EventsMessage->Marker;

    # Returns a L<Paws::ElastiCache::EventsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DescribeEvents>

=head1 ATTRIBUTES


=head2 Duration => Int

The number of minutes worth of events to retrieve.



=head2 EndTime => Str

The end of the time interval for which to retrieve events, specified in
ISO 8601 format.

B<Example:> 2017-03-30T07:03:49.555Z



=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a marker is
included in the response so that the remaining results can be
retrieved.

Default: 100

Constraints: minimum 20; maximum 100.



=head2 SourceIdentifier => Str

The identifier of the event source for which events are returned. If
not specified, all sources are included in the response.



=head2 SourceType => Str

The event source to retrieve events for. If no value is specified, all
events are returned.

Valid values are: C<"cache-cluster">, C<"cache-parameter-group">, C<"cache-security-group">, C<"cache-subnet-group">, C<"replication-group">

=head2 StartTime => Str

The beginning of the time interval to retrieve events for, specified in
ISO 8601 format.

B<Example:> 2017-03-30T07:03:49.555Z




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEvents in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

