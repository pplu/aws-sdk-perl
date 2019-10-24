# Generated from callresult_class.tt

package Paws::CloudSearch::DeleteIndexFieldResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw/CloudSearch_IndexFieldStatus/;
  has IndexField => (is => 'ro', isa => CloudSearch_IndexFieldStatus, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IndexField' => {
                                 'class' => 'Paws::CloudSearch::IndexFieldStatus',
                                 'type' => 'CloudSearch_IndexFieldStatus'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'IndexField' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DeleteIndexFieldResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexField => CloudSearch_IndexFieldStatus

The status of the index field being deleted.


=head2 _request_id => Str


=cut

