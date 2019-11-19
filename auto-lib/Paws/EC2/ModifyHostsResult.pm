
package Paws::EC2::ModifyHostsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EC2::Types qw/EC2_UnsuccessfulItem/;
  has Successful => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Unsuccessful => (is => 'ro', isa => ArrayRef[EC2_UnsuccessfulItem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Unsuccessful' => 'unsuccessful',
                       'Successful' => 'successful'
                     },
  'types' => {
               'Unsuccessful' => {
                                   'type' => 'ArrayRef[EC2_UnsuccessfulItem]',
                                   'class' => 'Paws::EC2::UnsuccessfulItem'
                                 },
               'Successful' => {
                                 'type' => 'ArrayRef[Str|Undef]'
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

Paws::EC2::ModifyHostsResult

=head1 ATTRIBUTES


=head2 Successful => ArrayRef[Str|Undef]

The IDs of the Dedicated Hosts that were successfully modified.


=head2 Unsuccessful => ArrayRef[EC2_UnsuccessfulItem]

The IDs of the Dedicated Hosts that could not be modified. Check
whether the setting you requested can be used.


=head2 _request_id => Str


=cut

