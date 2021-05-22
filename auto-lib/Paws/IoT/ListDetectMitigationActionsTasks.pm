
package Paws::IoT::ListDetectMitigationActionsTasks;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endTime', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startTime', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDetectMitigationActionsTasks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detect/mitigationactions/tasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListDetectMitigationActionsTasksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListDetectMitigationActionsTasks - Arguments for method ListDetectMitigationActionsTasks on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDetectMitigationActionsTasks on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListDetectMitigationActionsTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDetectMitigationActionsTasks.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListDetectMitigationActionsTasksResponse =
      $iot->ListDetectMitigationActionsTasks(
      EndTime    => '1970-01-01T01:00:00',
      StartTime  => '1970-01-01T01:00:00',
      MaxResults => 1,                       # OPTIONAL
      NextToken  => 'MyNextToken',           # OPTIONAL
      );

    # Results:
    my $NextToken = $ListDetectMitigationActionsTasksResponse->NextToken;
    my $Tasks     = $ListDetectMitigationActionsTasksResponse->Tasks;

    # Returns a L<Paws::IoT::ListDetectMitigationActionsTasksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListDetectMitigationActionsTasks>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end of the time period for which ML Detect mitigation actions tasks
are returned.



=head2 MaxResults => Int

The maximum number of results to return at one time. The default is 25.



=head2 NextToken => Str

The token for the next set of results.



=head2 B<REQUIRED> StartTime => Str

A filter to limit results to those found after the specified time. You
must specify either the startTime and endTime or the taskId, but not
both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDetectMitigationActionsTasks in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

