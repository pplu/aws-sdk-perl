# Generated from callresult_class.tt

package Paws::CloudSearch::DefineSuggesterResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw/CloudSearch_SuggesterStatus/;
  has Suggester => (is => 'ro', isa => CloudSearch_SuggesterStatus, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Suggester' => {
                                'type' => 'CloudSearch_SuggesterStatus',
                                'class' => 'Paws::CloudSearch::SuggesterStatus'
                              }
             },
  'IsRequired' => {
                    'Suggester' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DefineSuggesterResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Suggester => CloudSearch_SuggesterStatus




=head2 _request_id => Str


=cut

