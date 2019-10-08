
package Paws::EC2::ConfirmProductInstanceResult;
  use Moo;

  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw//;
  has OwnerId => (is => 'ro', isa => Str);
  has Return => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Return' => {
                             'type' => 'Bool'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OwnerId' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Return' => 'return',
                       'OwnerId' => 'ownerId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ConfirmProductInstanceResult

=head1 ATTRIBUTES


=head2 OwnerId => Str

The AWS account ID of the instance owner. This is only present if the
product code is attached to the instance.


=head2 Return => Bool

The return value of the request. Returns C<true> if the specified
product code is owned by the requester and associated with the
specified instance.


=head2 _request_id => Str


=cut

