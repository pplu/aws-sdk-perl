
package Paws::CloudWatchLogs::DescribeSubscriptionFilters;
  use Moose;
  has FilterNamePrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterNamePrefix' );
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSubscriptionFilters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DescribeSubscriptionFiltersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeSubscriptionFilters - Arguments for method DescribeSubscriptionFilters on Paws::CloudWatchLogs

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSubscriptionFilters on the 
Amazon CloudWatch Logs service. Use the attributes of this class
as arguments to method DescribeSubscriptionFilters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSubscriptionFilters.

As an example:

  $service_obj->DescribeSubscriptionFilters(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 FilterNamePrefix => Str

  Will only return subscription filters that match the provided
filterNamePrefix. If you don't specify a value, no prefix filter is
applied.

=head2 Limit => Int

  

=head2 B<REQUIRED> LogGroupName => Str

  The log group name for which subscription filters are to be listed.

=head2 NextToken => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSubscriptionFilters in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

