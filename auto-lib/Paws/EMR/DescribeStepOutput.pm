# Generated from json/callresult_class.tt

package Paws::EMR::DescribeStepOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EMR::Types qw/EMR_Step/;
  has Step => (is => 'ro', isa => EMR_Step);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Step' => {
                           'class' => 'Paws::EMR::Step',
                           'type' => 'EMR_Step'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribeStepOutput

=head1 ATTRIBUTES


=head2 Step => EMR_Step

The step details for the requested step identifier.


=head2 _request_id => Str


=cut

1;