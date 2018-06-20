
package Paws::DMS::DescribeEvents;
  use Moose;
  has Duration => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DescribeEventsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeEvents - Arguments for method DescribeEvents on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEvents on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEvents.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeEventsResponse = $dms->DescribeEvents(
      Duration        => 1,                        # OPTIONAL
      EndTime         => '1970-01-01T01:00:00',    # OPTIONAL
      EventCategories => [ 'MyString', ... ],      # OPTIONAL
      Filters         => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                           # OPTIONAL
      Marker           => 'MyString',              # OPTIONAL
      MaxRecords       => 1,                       # OPTIONAL
      SourceIdentifier => 'MyString',              # OPTIONAL
      SourceType       => 'replication-instance',  # OPTIONAL
      StartTime        => '1970-01-01T01:00:00',   # OPTIONAL
    );

    # Results:
    my $Events = $DescribeEventsResponse->Events;
    my $Marker = $DescribeEventsResponse->Marker;

    # Returns a L<Paws::DMS::DescribeEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeEvents>

=head1 ATTRIBUTES


=head2 Duration => Int

The duration of the events to be listed.



=head2 EndTime => Str

The end time for the events to be listed.



=head2 EventCategories => ArrayRef[Str|Undef]

A list of event categories for a source type that you want to subscribe
to.



=head2 Filters => ArrayRef[L<Paws::DMS::Filter>]

Filters applied to the action.



=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.



=head2 SourceIdentifier => Str

The identifier of the event source. An identifier must begin with a
letter and must contain only ASCII letters, digits, and hyphens. It
cannot end with a hyphen or contain two consecutive hyphens.



=head2 SourceType => Str

The type of AWS DMS resource that generates events.

Valid values: replication-instance | migration-task

Valid values are: C<"replication-instance">

=head2 StartTime => Str

The start time for the events to be listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEvents in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

