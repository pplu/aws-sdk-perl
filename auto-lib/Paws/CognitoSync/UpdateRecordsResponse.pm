
package Paws::CognitoSync::UpdateRecordsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoSync::Types qw/CognitoSync_Record/;
  has Records => (is => 'ro', isa => ArrayRef[CognitoSync_Record]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Records' => {
                              'class' => 'Paws::CognitoSync::Record',
                              'type' => 'ArrayRef[CognitoSync_Record]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::UpdateRecordsResponse

=head1 ATTRIBUTES


=head2 Records => ArrayRef[CognitoSync_Record]

A list of records that have been updated.


=head2 _request_id => Str


=cut

