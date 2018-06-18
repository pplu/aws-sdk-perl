
package Paws::OpsWorksCM::DescribeEvents;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::DescribeEventsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DescribeEvents - Arguments for method DescribeEvents on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEvents on the
L<AWS OpsWorks for Chef Automate|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method DescribeEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEvents.

=head1 SYNOPSIS

    my $opsworks-cm = Paws->service('OpsWorksCM');
    my $DescribeEventsResponse = $opsworks -cm->DescribeEvents(
      ServerName => 'MyServerName',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $DescribeEventsResponse->NextToken;
    my $ServerEvents = $DescribeEventsResponse->ServerEvents;

    # Returns a L<Paws::OpsWorksCM::DescribeEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_DescribeEvents.html>

=head1 ATTRIBUTES


=head2 MaxResults => Int

To receive a paginated response, use this parameter to specify the
maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a C<NextToken> value that you can assign to the C<NextToken> request
parameter to get the next set of results.



=head2 NextToken => Str

NextToken is a string that is returned in some command responses. It
indicates that not all entries have been returned, and that you must
run at least one more request to get remaining items. To get remaining
results, call C<DescribeEvents> again, and assign the token from the
previous results as the value of the C<nextToken> parameter. If there
are no more results, the response object's C<nextToken> parameter value
is C<null>. Setting a C<nextToken> value that was not returned in your
previous results causes an C<InvalidNextTokenException> to occur.



=head2 B<REQUIRED> ServerName => Str

The name of the server for which you want to view events.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEvents in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

