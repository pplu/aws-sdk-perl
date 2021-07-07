
package Paws::CostExplorer::UpdateAnomalySubscription;
  use Moose;
  has Frequency => (is => 'ro', isa => 'Str');
  has MonitorArnList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Subscribers => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::Subscriber]');
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);
  has SubscriptionName => (is => 'ro', isa => 'Str');
  has Threshold => (is => 'ro', isa => 'Num');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAnomalySubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::UpdateAnomalySubscriptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::UpdateAnomalySubscription - Arguments for method UpdateAnomalySubscription on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAnomalySubscription on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method UpdateAnomalySubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAnomalySubscription.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $UpdateAnomalySubscriptionResponse = $ce->UpdateAnomalySubscription(
      SubscriptionArn => 'MyGenericString',
      Frequency       => 'DAILY',             # OPTIONAL
      MonitorArnList  => [
        'MyArn', ...                          # min: 20, max: 2048
      ],    # OPTIONAL
      Subscribers => [
        {
          Address => 'MySubscriberAddress',    # min: 6, max: 302; OPTIONAL
          Status  => 'CONFIRMED',    # values: CONFIRMED, DECLINED; OPTIONAL
          Type    => 'EMAIL',        # values: EMAIL, SNS; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SubscriptionName => 'MyGenericString',    # OPTIONAL
      Threshold        => 1,                    # OPTIONAL
    );

    # Results:
    my $SubscriptionArn = $UpdateAnomalySubscriptionResponse->SubscriptionArn;

    # Returns a L<Paws::CostExplorer::UpdateAnomalySubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/UpdateAnomalySubscription>

=head1 ATTRIBUTES


=head2 Frequency => Str

The update to the frequency value at which subscribers will receive
notifications.

Valid values are: C<"DAILY">, C<"IMMEDIATE">, C<"WEEKLY">

=head2 MonitorArnList => ArrayRef[Str|Undef]

A list of cost anomaly monitor ARNs.



=head2 Subscribers => ArrayRef[L<Paws::CostExplorer::Subscriber>]

The update to the subscriber list.



=head2 B<REQUIRED> SubscriptionArn => Str

A cost anomaly subscription Amazon Resource Name (ARN).



=head2 SubscriptionName => Str

The subscription's new name.



=head2 Threshold => Num

The update to the threshold value for receiving notifications.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAnomalySubscription in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

