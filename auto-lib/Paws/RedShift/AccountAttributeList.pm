# Generated from callresult_class.tt

package Paws::RedShift::AccountAttributeList;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_AccountAttribute/;
  has AccountAttributes => (is => 'ro', isa => ArrayRef[RedShift_AccountAttribute]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AccountAttributes' => {
                                        'class' => 'Paws::RedShift::AccountAttribute',
                                        'type' => 'ArrayRef[RedShift_AccountAttribute]'
                                      }
             },
  'NameInRequest' => {
                       'AccountAttributes' => 'AccountAttribute'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::AccountAttributeList

=head1 ATTRIBUTES


=head2 AccountAttributes => ArrayRef[RedShift_AccountAttribute]

A list of attributes assigned to an account.


=head2 _request_id => Str


=cut

