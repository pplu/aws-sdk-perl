# Generated from callresult_class.tt

package Paws::SES::SendBulkTemplatedEmailResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SES::Types qw/SES_BulkEmailDestinationStatus/;
  has Status => (is => 'ro', isa => ArrayRef[SES_BulkEmailDestinationStatus], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Status' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'ArrayRef[SES_BulkEmailDestinationStatus]',
                             'class' => 'Paws::SES::BulkEmailDestinationStatus'
                           }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SendBulkTemplatedEmailResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => ArrayRef[SES_BulkEmailDestinationStatus]

The unique message identifier returned from the
C<SendBulkTemplatedEmail> action.


=head2 _request_id => Str


=cut

