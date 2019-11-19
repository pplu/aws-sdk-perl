# Generated from callresult_class.tt

package Paws::CloudSearch::DefineIndexFieldResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw/CloudSearch_IndexFieldStatus/;
  has IndexField => (is => 'ro', isa => CloudSearch_IndexFieldStatus, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'IndexField' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IndexField' => {
                                 'class' => 'Paws::CloudSearch::IndexFieldStatus',
                                 'type' => 'CloudSearch_IndexFieldStatus'
                               }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DefineIndexFieldResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexField => CloudSearch_IndexFieldStatus




=head2 _request_id => Str


=cut

