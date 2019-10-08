
package Paws::EC2::ReleaseHostsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EC2::Types qw/EC2_UnsuccessfulItem/;
  has Successful => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Unsuccessful => (is => 'ro', isa => ArrayRef[EC2_UnsuccessfulItem]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Successful' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Unsuccessful' => {
                                   'class' => 'Paws::EC2::UnsuccessfulItem',
                                   'type' => 'ArrayRef[EC2_UnsuccessfulItem]'
                                 }
             },
  'NameInRequest' => {
                       'Successful' => 'successful',
                       'Unsuccessful' => 'unsuccessful'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReleaseHostsResult

=head1 ATTRIBUTES


=head2 Successful => ArrayRef[Str|Undef]

The IDs of the Dedicated Hosts that were successfully released.


=head2 Unsuccessful => ArrayRef[EC2_UnsuccessfulItem]

The IDs of the Dedicated Hosts that could not be released, including an
error message.


=head2 _request_id => Str


=cut

