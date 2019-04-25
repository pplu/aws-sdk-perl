
package Paws::RedShift::DescribeEventSubscriptions;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SubscriptionName => (is => 'ro', isa => 'Str');
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TagValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::EventSubscriptionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeEventSubscriptions - Arguments for method DescribeEventSubscriptions on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEventSubscriptions on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeEventSubscriptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEventSubscriptions.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $EventSubscriptionsMessage = $redshift->DescribeEventSubscriptions(
      Marker           => 'MyString',             # OPTIONAL
      MaxRecords       => 1,                      # OPTIONAL
      SubscriptionName => 'MyString',             # OPTIONAL
      TagKeys          => [ 'MyString', ... ],    # OPTIONAL
      TagValues        => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $EventSubscriptionsList =
      $EventSubscriptionsMessage->EventSubscriptionsList;
    my $Marker = $EventSubscriptionsMessage->Marker;

    # Returns a L<Paws::RedShift::EventSubscriptionsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeEventSubscriptions>

=head1 ATTRIBUTES


=head2 Marker => Str

An optional parameter that specifies the starting point to return a set
of response records. When the results of a DescribeEventSubscriptions
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



=head2 SubscriptionName => Str

The name of the Amazon Redshift event notification subscription to be
described.



=head2 TagKeys => ArrayRef[Str|Undef]

A tag key or keys for which you want to return all matching event
notification subscriptions that are associated with the specified key
or keys. For example, suppose that you have subscriptions that are
tagged with keys called C<owner> and C<environment>. If you specify
both of these tag keys in the request, Amazon Redshift returns a
response with the subscriptions that have either or both of these tag
keys associated with them.



=head2 TagValues => ArrayRef[Str|Undef]

A tag value or values for which you want to return all matching event
notification subscriptions that are associated with the specified tag
value or values. For example, suppose that you have subscriptions that
are tagged with values called C<admin> and C<test>. If you specify both
of these tag values in the request, Amazon Redshift returns a response
with the subscriptions that have either or both of these tag values
associated with them.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEventSubscriptions in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

