
package Paws::CostExplorer::GetAnomalySubscriptions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has MonitorArn => (is => 'ro', isa => 'Str');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has SubscriptionArnList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAnomalySubscriptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetAnomalySubscriptionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetAnomalySubscriptions - Arguments for method GetAnomalySubscriptions on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAnomalySubscriptions on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetAnomalySubscriptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAnomalySubscriptions.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetAnomalySubscriptionsResponse = $ce->GetAnomalySubscriptions(
      MaxResults          => 1,                    # OPTIONAL
      MonitorArn          => 'MyGenericString',    # OPTIONAL
      NextPageToken       => 'MyNextPageToken',    # OPTIONAL
      SubscriptionArnList => [
        'MyValue', ...                             # max: 1024
      ],                                           # OPTIONAL
    );

    # Results:
    my $AnomalySubscriptions =
      $GetAnomalySubscriptionsResponse->AnomalySubscriptions;
    my $NextPageToken = $GetAnomalySubscriptionsResponse->NextPageToken;

    # Returns a L<Paws::CostExplorer::GetAnomalySubscriptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetAnomalySubscriptions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of entries a paginated response contains.



=head2 MonitorArn => Str

Cost anomaly monitor ARNs.



=head2 NextPageToken => Str

The token to retrieve the next set of results. AWS provides the token
when the response from a previous call has more results than the
maximum page size.



=head2 SubscriptionArnList => ArrayRef[Str|Undef]

A list of cost anomaly subscription ARNs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAnomalySubscriptions in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

