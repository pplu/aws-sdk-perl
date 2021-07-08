
package Paws::Proton::GetAccountSettingsOutput;
  use Moose;
  has AccountSettings => (is => 'ro', isa => 'Paws::Proton::AccountSettings', traits => ['NameInRequest'], request_name => 'accountSettings' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetAccountSettingsOutput

=head1 ATTRIBUTES


=head2 AccountSettings => L<Paws::Proton::AccountSettings>

The AWS Proton pipeline service role detail data that's returned by AWS
Proton.


=head2 _request_id => Str


=cut

1;