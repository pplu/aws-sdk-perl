
package Paws::RDS::AccountAttributesMessage;
  use Moose;
  has AccountQuotas => (is => 'ro', isa => 'ArrayRef[Paws::RDS::AccountQuota]', request_name => 'AccountQuota', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::AccountAttributesMessage

=head1 ATTRIBUTES


=head2 AccountQuotas => ArrayRef[L<Paws::RDS::AccountQuota>]

A list of AccountQuota objects. Within this list, each quota has a
name, a count of usage toward the quota maximum, and a maximum value
for the quota.


=head2 _request_id => Str


=cut

