# Generated from callresult_class.tt

package Paws::CloudSearch::DescribeExpressionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudSearch::Types qw/CloudSearch_ExpressionStatus/;
  has Expressions => (is => 'ro', isa => ArrayRef[CloudSearch_ExpressionStatus], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Expressions' => {
                                  'class' => 'Paws::CloudSearch::ExpressionStatus',
                                  'type' => 'ArrayRef[CloudSearch_ExpressionStatus]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Expressions' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeExpressionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Expressions => ArrayRef[CloudSearch_ExpressionStatus]

The expressions configured for the domain.


=head2 _request_id => Str


=cut

