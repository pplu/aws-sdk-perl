# Generated from callresult_class.tt

package Paws::ELB::ConfigureHealthCheckOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ELB::Types qw/ELB_HealthCheck/;
  has HealthCheck => (is => 'ro', isa => ELB_HealthCheck);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HealthCheck' => {
                                  'class' => 'Paws::ELB::HealthCheck',
                                  'type' => 'ELB_HealthCheck'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::ConfigureHealthCheckOutput

=head1 ATTRIBUTES


=head2 HealthCheck => ELB_HealthCheck

The updated health check.


=head2 _request_id => Str


=cut

