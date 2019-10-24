# Generated from json/callresult_class.tt

package Paws::Personalize::DescribeSolutionVersionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_SolutionVersion/;
  has SolutionVersion => (is => 'ro', isa => Personalize_SolutionVersion);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SolutionVersion' => {
                                      'class' => 'Paws::Personalize::SolutionVersion',
                                      'type' => 'Personalize_SolutionVersion'
                                    }
             },
  'NameInRequest' => {
                       'SolutionVersion' => 'solutionVersion'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeSolutionVersionResponse

=head1 ATTRIBUTES


=head2 SolutionVersion => Personalize_SolutionVersion

The solution version.


=head2 _request_id => Str


=cut

1;