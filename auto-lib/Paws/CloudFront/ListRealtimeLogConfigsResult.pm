
package Paws::CloudFront::ListRealtimeLogConfigsResult;
  use Moose;
  has RealtimeLogConfigs => (is => 'ro', isa => 'Paws::CloudFront::RealtimeLogConfigs', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListRealtimeLogConfigsResult

=head1 ATTRIBUTES


=head2 RealtimeLogConfigs => L<Paws::CloudFront::RealtimeLogConfigs>

A list of real-time log configurations.




=cut

