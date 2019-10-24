# Generated from json/callresult_class.tt

package Paws::Personalize::DescribeFeatureTransformationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_FeatureTransformation/;
  has FeatureTransformation => (is => 'ro', isa => Personalize_FeatureTransformation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FeatureTransformation' => {
                                            'class' => 'Paws::Personalize::FeatureTransformation',
                                            'type' => 'Personalize_FeatureTransformation'
                                          }
             },
  'NameInRequest' => {
                       'FeatureTransformation' => 'featureTransformation'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeFeatureTransformationResponse

=head1 ATTRIBUTES


=head2 FeatureTransformation => Personalize_FeatureTransformation

A listing of the FeatureTransformation properties.


=head2 _request_id => Str


=cut

1;