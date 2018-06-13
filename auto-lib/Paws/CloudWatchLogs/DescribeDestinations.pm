
package Paws::CloudWatchLogs::DescribeDestinations;
  use Moose;
  has DestinationNamePrefix => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDestinations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DescribeDestinationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeDestinations - Arguments for method DescribeDestinations on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDestinations on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DescribeDestinations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDestinations.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $DescribeDestinationsResponse = $logs->DescribeDestinations(
      DestinationNamePrefix => 'MyDestinationName',    # OPTIONAL
      Limit                 => 1,                      # OPTIONAL
      NextToken             => 'MyNextToken',          # OPTIONAL
    );

    # Results:
    my $Destinations = $DescribeDestinationsResponse->Destinations;
    my $NextToken    = $DescribeDestinationsResponse->NextToken;

    # Returns a L<Paws::CloudWatchLogs::DescribeDestinationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DescribeDestinations>

=head1 ATTRIBUTES


=head2 DestinationNamePrefix => Str

The prefix to match. If you don't specify a value, no prefix filter is
applied.



=head2 Limit => Int

The maximum number of items returned. If you don't specify a value, the
default is up to 50 items.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDestinations in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

