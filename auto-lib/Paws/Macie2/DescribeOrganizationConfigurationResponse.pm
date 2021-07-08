
package Paws::Macie2::DescribeOrganizationConfigurationResponse;
  use Moose;
  has AutoEnable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoEnable');
  has MaxAccountLimitReached => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'maxAccountLimitReached');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::DescribeOrganizationConfigurationResponse

=head1 ATTRIBUTES


=head2 AutoEnable => Bool

Specifies whether Amazon Macie is enabled automatically for accounts
that are added to the Amazon Web Services organization.


=head2 MaxAccountLimitReached => Bool

Specifies whether the maximum number of Amazon Macie member accounts
are part of the Amazon Web Services organization.


=head2 _request_id => Str


=cut

