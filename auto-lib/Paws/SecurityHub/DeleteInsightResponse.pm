
package Paws::SecurityHub::DeleteInsightResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw//;
  has InsightArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InsightArn' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'InsightArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DeleteInsightResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InsightArn => Str

The ARN of the insight that was deleted.


=head2 _request_id => Str


=cut

