
package Paws::DMS::DescribeEventSubscriptions;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SubscriptionName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DescribeEventSubscriptionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeEventSubscriptions - Arguments for method DescribeEventSubscriptions on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEventSubscriptions on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeEventSubscriptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEventSubscriptions.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeEventSubscriptionsResponse = $dms->DescribeEventSubscriptions(
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      Marker           => 'MyString',    # OPTIONAL
      MaxRecords       => 1,             # OPTIONAL
      SubscriptionName => 'MyString',    # OPTIONAL
    );

    # Results:
    my $EventSubscriptionsList =
      $DescribeEventSubscriptionsResponse->EventSubscriptionsList;
    my $Marker = $DescribeEventSubscriptionsResponse->Marker;

    # Returns a L<Paws::DMS::DescribeEventSubscriptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeEventSubscriptions>

=head1 ATTRIBUTES


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



=head2 SubscriptionName => Str

The name of the AWS DMS event subscription to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEventSubscriptions in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

