
package Paws::RedShift::DescribeScheduledActions;
  use Moose;
  has Active => (is => 'ro', isa => 'Bool');
  has EndTime => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ScheduledActionFilter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ScheduledActionName => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has TargetActionType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScheduledActions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ScheduledActionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScheduledActionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeScheduledActions - Arguments for method DescribeScheduledActions on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScheduledActions on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeScheduledActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScheduledActions.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ScheduledActionsMessage = $redshift->DescribeScheduledActions(
      Active  => 1,                        # OPTIONAL
      EndTime => '1970-01-01T01:00:00',    # OPTIONAL
      Filters => [
        {
          Name   => 'cluster-identifier', # values: cluster-identifier, iam-role
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      Marker              => 'MyString',               # OPTIONAL
      MaxRecords          => 1,                        # OPTIONAL
      ScheduledActionName => 'MyString',               # OPTIONAL
      StartTime           => '1970-01-01T01:00:00',    # OPTIONAL
      TargetActionType    => 'ResizeCluster',          # OPTIONAL
    );

    # Results:
    my $Marker           = $ScheduledActionsMessage->Marker;
    my $ScheduledActions = $ScheduledActionsMessage->ScheduledActions;

    # Returns a L<Paws::RedShift::ScheduledActionsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeScheduledActions>

=head1 ATTRIBUTES


=head2 Active => Bool

If true, retrieve only active scheduled actions. If false, retrieve
only disabled scheduled actions.



=head2 EndTime => Str

The end time in UTC of the scheduled action to retrieve. Only active
scheduled actions that have invocations before this time are retrieved.



=head2 Filters => ArrayRef[L<Paws::RedShift::ScheduledActionFilter>]

List of scheduled action filters.



=head2 Marker => Str

An optional parameter that specifies the starting point to return a set
of response records. When the results of a DescribeScheduledActions
request exceed the value specified in C<MaxRecords>, AWS returns a
value in the C<Marker> field of the response. You can retrieve the next
set of response records by providing the returned marker value in the
C<Marker> parameter and retrying the request.



=head2 MaxRecords => Int

The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified
C<MaxRecords> value, a value is returned in a C<marker> field of the
response. You can retrieve the next set of records by retrying the
command with the returned marker value.

Default: C<100>

Constraints: minimum 20, maximum 100.



=head2 ScheduledActionName => Str

The name of the scheduled action to retrieve.



=head2 StartTime => Str

The start time in UTC of the scheduled actions to retrieve. Only active
scheduled actions that have invocations after this time are retrieved.



=head2 TargetActionType => Str

The type of the scheduled actions to retrieve.

Valid values are: C<"ResizeCluster">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScheduledActions in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

