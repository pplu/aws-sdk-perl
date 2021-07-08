
package Paws::CloudFront::GetMonitoringSubscriptionResult;
  use Moose;
  has MonitoringSubscription => (is => 'ro', isa => 'Paws::CloudFront::MonitoringSubscription', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetMonitoringSubscriptionResult

=head1 ATTRIBUTES


=head2 MonitoringSubscription => L<Paws::CloudFront::MonitoringSubscription>

A monitoring subscription. This structure contains information about
whether additional CloudWatch metrics are enabled for a given
CloudFront distribution.




=cut

