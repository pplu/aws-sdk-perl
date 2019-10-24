# Generated from callresult_class.tt

package Paws::SDB::GetAttributesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SDB::Types qw/SDB_Attribute/;
  has Attributes => (is => 'ro', isa => ArrayRef[SDB_Attribute]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::SDB::Attribute',
                                 'type' => 'ArrayRef[SDB_Attribute]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Attributes' => 'Attribute'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SDB::GetAttributesResult

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[SDB_Attribute]

The list of attributes returned by the operation.


=head2 _request_id => Str


=cut

