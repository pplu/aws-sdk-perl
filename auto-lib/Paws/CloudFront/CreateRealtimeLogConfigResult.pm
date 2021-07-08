
package Paws::CloudFront::CreateRealtimeLogConfigResult;
  use Moose;
  has RealtimeLogConfig => (is => 'ro', isa => 'Paws::CloudFront::RealtimeLogConfig');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateRealtimeLogConfigResult

=head1 ATTRIBUTES


=head2 RealtimeLogConfig => L<Paws::CloudFront::RealtimeLogConfig>

A real-time log configuration.




=cut

