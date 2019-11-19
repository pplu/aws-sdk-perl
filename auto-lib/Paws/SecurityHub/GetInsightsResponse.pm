
package Paws::SecurityHub::GetInsightsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SecurityHub::Types qw/SecurityHub_Insight/;
  has Insights => (is => 'ro', isa => ArrayRef[SecurityHub_Insight], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Insights' => {
                               'type' => 'ArrayRef[SecurityHub_Insight]',
                               'class' => 'Paws::SecurityHub::Insight'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'Insights' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetInsightsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Insights => ArrayRef[SecurityHub_Insight]

The insights returned by the operation.


=head2 NextToken => Str

The token that is required for pagination.


=head2 _request_id => Str


=cut

