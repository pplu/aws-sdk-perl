
package Paws::Lambda::GetAccountSettingsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lambda::Types qw/Lambda_AccountLimit Lambda_AccountUsage/;
  has AccountLimit => (is => 'ro', isa => Lambda_AccountLimit);
  has AccountUsage => (is => 'ro', isa => Lambda_AccountUsage);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AccountLimit' => {
                                   'type' => 'Lambda_AccountLimit',
                                   'class' => 'Paws::Lambda::AccountLimit'
                                 },
               'AccountUsage' => {
                                   'type' => 'Lambda_AccountUsage',
                                   'class' => 'Paws::Lambda::AccountUsage'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetAccountSettingsResponse

=head1 ATTRIBUTES


=head2 AccountLimit => Lambda_AccountLimit

Limits that are related to concurrency and code storage.


=head2 AccountUsage => Lambda_AccountUsage

The number of functions and amount of storage in use.


=head2 _request_id => Str


=cut

