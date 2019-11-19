
package Paws::GuardDuty::GetMasterAccountResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw/GuardDuty_Master/;
  has Master => (is => 'ro', isa => GuardDuty_Master, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Master' => 1
                  },
  'NameInRequest' => {
                       'Master' => 'master'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Master' => {
                             'type' => 'GuardDuty_Master',
                             'class' => 'Paws::GuardDuty::Master'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetMasterAccountResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Master => GuardDuty_Master

Master account details.


=head2 _request_id => Str


=cut

