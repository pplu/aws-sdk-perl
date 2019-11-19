# Generated from callresult_class.tt

package Paws::SDB::SelectResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SDB::Types qw/SDB_Item/;
  has Items => (is => 'ro', isa => ArrayRef[SDB_Item]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Items' => 'Item'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Items' => {
                            'type' => 'ArrayRef[SDB_Item]',
                            'class' => 'Paws::SDB::Item'
                          }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SDB::SelectResult

=head1 ATTRIBUTES


=head2 Items => ArrayRef[SDB_Item]

A list of items that match the select expression.


=head2 NextToken => Str

An opaque token indicating that more items than C<MaxNumberOfItems>
were matched, the response size exceeded 1 megabyte, or the execution
time exceeded 5 seconds.


=head2 _request_id => Str


=cut

