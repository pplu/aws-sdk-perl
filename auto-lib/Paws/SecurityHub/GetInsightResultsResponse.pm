
package Paws::SecurityHub::GetInsightResultsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw/SecurityHub_InsightResults/;
  has InsightResults => (is => 'ro', isa => SecurityHub_InsightResults, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InsightResults' => {
                                     'class' => 'Paws::SecurityHub::InsightResults',
                                     'type' => 'SecurityHub_InsightResults'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'InsightResults' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetInsightResultsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InsightResults => SecurityHub_InsightResults

The insight results returned by the operation.


=head2 _request_id => Str


=cut

