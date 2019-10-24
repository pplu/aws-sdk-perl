# Generated from callresult_class.tt

package Paws::RedShift::DescribeDefaultClusterParametersResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RedShift::Types qw/RedShift_DefaultClusterParameters/;
  has DefaultClusterParameters => (is => 'ro', isa => RedShift_DefaultClusterParameters);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DefaultClusterParameters' => {
                                               'class' => 'Paws::RedShift::DefaultClusterParameters',
                                               'type' => 'RedShift_DefaultClusterParameters'
                                             }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeDefaultClusterParametersResult

=head1 ATTRIBUTES


=head2 DefaultClusterParameters => RedShift_DefaultClusterParameters




=head2 _request_id => Str


=cut

