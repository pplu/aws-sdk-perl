# Generated from callresult_class.tt

package Paws::CloudSearch::DescribeIndexFieldsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudSearch::Types qw/CloudSearch_IndexFieldStatus/;
  has IndexFields => (is => 'ro', isa => ArrayRef[CloudSearch_IndexFieldStatus], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'IndexFields' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IndexFields' => {
                                  'class' => 'Paws::CloudSearch::IndexFieldStatus',
                                  'type' => 'ArrayRef[CloudSearch_IndexFieldStatus]'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeIndexFieldsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexFields => ArrayRef[CloudSearch_IndexFieldStatus]

The index fields configured for the domain.


=head2 _request_id => Str


=cut

