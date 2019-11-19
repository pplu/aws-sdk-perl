# Generated from callresult_class.tt

package Paws::CloudSearch::DefineExpressionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw/CloudSearch_ExpressionStatus/;
  has Expression => (is => 'ro', isa => CloudSearch_ExpressionStatus, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Expression' => {
                                 'type' => 'CloudSearch_ExpressionStatus',
                                 'class' => 'Paws::CloudSearch::ExpressionStatus'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Expression' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DefineExpressionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Expression => CloudSearch_ExpressionStatus




=head2 _request_id => Str


=cut

