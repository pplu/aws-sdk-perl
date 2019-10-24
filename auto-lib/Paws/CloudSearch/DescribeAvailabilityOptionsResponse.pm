# Generated from callresult_class.tt

package Paws::CloudSearch::DescribeAvailabilityOptionsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw/CloudSearch_AvailabilityOptionsStatus/;
  has AvailabilityOptions => (is => 'ro', isa => CloudSearch_AvailabilityOptionsStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AvailabilityOptions' => {
                                          'class' => 'Paws::CloudSearch::AvailabilityOptionsStatus',
                                          'type' => 'CloudSearch_AvailabilityOptionsStatus'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeAvailabilityOptionsResponse

=head1 ATTRIBUTES


=head2 AvailabilityOptions => CloudSearch_AvailabilityOptionsStatus

The availability options configured for the domain. Indicates whether
Multi-AZ is enabled for the domain.


=head2 _request_id => Str


=cut

