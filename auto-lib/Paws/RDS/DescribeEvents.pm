
package Paws::RDS::DescribeEvents;
  use Moose;
  has Duration => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::EventsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeEvents - Arguments for method DescribeEvents on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEvents on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEvents.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
   # To list information about events
   # This example lists information for all backup-related events for the
   # specified DB instance for the past 7 days (7 days * 24 hours * 60 minutes =
   # 10,080 minutes).
    my $EventsMessage = $rds->DescribeEvents(
      {
        'Duration'         => 10080,
        'EventCategories'  => ['backup'],
        'SourceIdentifier' => 'mymysqlinstance',
        'SourceType'       => 'db-instance'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeEvents>

=head1 ATTRIBUTES


=head2 Duration => Int

The number of minutes to retrieve events for.

Default: 60



=head2 EndTime => Str

The end of the time interval for which to retrieve events, specified in
ISO 8601 format. For more information about ISO 8601, go to the ISO8601
Wikipedia page. (http://en.wikipedia.org/wiki/ISO_8601)

Example: 2009-07-08T18:00Z



=head2 EventCategories => ArrayRef[Str|Undef]

A list of event categories that trigger notifications for a event
notification subscription.



=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

This parameter is not currently supported.



=head2 Marker => Str

An optional pagination token provided by a previous DescribeEvents
request. If this parameter is specified, the response includes only
records beyond the marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.



=head2 SourceIdentifier => Str

The identifier of the event source for which events are returned. If
not specified, then all sources are included in the response.

Constraints:

=over

=item *

If SourceIdentifier is supplied, SourceType must also be provided.

=item *

If the source type is C<DBInstance>, then a C<DBInstanceIdentifier>
must be supplied.

=item *

If the source type is C<DBSecurityGroup>, a C<DBSecurityGroupName> must
be supplied.

=item *

If the source type is C<DBParameterGroup>, a C<DBParameterGroupName>
must be supplied.

=item *

If the source type is C<DBSnapshot>, a C<DBSnapshotIdentifier> must be
supplied.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back




=head2 SourceType => Str

The event source to retrieve events for. If no value is specified, all
events are returned.

Valid values are: C<"db-instance">, C<"db-parameter-group">, C<"db-security-group">, C<"db-snapshot">, C<"db-cluster">, C<"db-cluster-snapshot">

=head2 StartTime => Str

The beginning of the time interval to retrieve events for, specified in
ISO 8601 format. For more information about ISO 8601, go to the ISO8601
Wikipedia page. (http://en.wikipedia.org/wiki/ISO_8601)

Example: 2009-07-08T18:00Z




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEvents in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

