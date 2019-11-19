# Generated from json/callresult_class.tt

package Paws::Personalize::DescribeAlgorithmResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_Algorithm/;
  has Algorithm => (is => 'ro', isa => Personalize_Algorithm);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Algorithm' => 'algorithm'
                     },
  'types' => {
               'Algorithm' => {
                                'class' => 'Paws::Personalize::Algorithm',
                                'type' => 'Personalize_Algorithm'
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

Paws::Personalize::DescribeAlgorithmResponse

=head1 ATTRIBUTES


=head2 Algorithm => Personalize_Algorithm

A listing of the properties of the algorithm.


=head2 _request_id => Str


=cut

1;