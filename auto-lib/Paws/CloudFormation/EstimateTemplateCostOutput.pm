# Generated from callresult_class.tt

package Paws::CloudFormation::EstimateTemplateCostOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw//;
  has Url => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Url' => {
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

Paws::CloudFormation::EstimateTemplateCostOutput

=head1 ATTRIBUTES


=head2 Url => Str

An AWS Simple Monthly Calculator URL with a query string that describes
the resources required to run the template.


=head2 _request_id => Str


=cut

