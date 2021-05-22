
package Paws::CostExplorer::CreateAnomalySubscription;
  use Moose;
  has AnomalySubscription => (is => 'ro', isa => 'Paws::CostExplorer::AnomalySubscription', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAnomalySubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::CreateAnomalySubscriptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CreateAnomalySubscription - Arguments for method CreateAnomalySubscription on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAnomalySubscription on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method CreateAnomalySubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAnomalySubscription.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $CreateAnomalySubscriptionResponse = $ce->CreateAnomalySubscription(
      AnomalySubscription => {
        Frequency      => 'DAILY',    # values: DAILY, IMMEDIATE, WEEKLY
        MonitorArnList => [
          'MyArn', ...                # min: 20, max: 2048
        ],
        Subscribers => [
          {
            Address => 'MySubscriberAddress',    # min: 6, max: 302; OPTIONAL
            Status => 'CONFIRMED',    # values: CONFIRMED, DECLINED; OPTIONAL
            Type   => 'EMAIL',        # values: EMAIL, SNS; OPTIONAL
          },
          ...
        ],
        SubscriptionName => 'MyGenericString',    # max: 1024
        Threshold        => 1,
        AccountId        => 'MyGenericString',    # max: 1024
        SubscriptionArn  => 'MyGenericString',    # max: 1024
      },

    );

    # Results:
    my $SubscriptionArn = $CreateAnomalySubscriptionResponse->SubscriptionArn;

    # Returns a L<Paws::CostExplorer::CreateAnomalySubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/CreateAnomalySubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalySubscription => L<Paws::CostExplorer::AnomalySubscription>

The cost anomaly subscription object that you want to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAnomalySubscription in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

