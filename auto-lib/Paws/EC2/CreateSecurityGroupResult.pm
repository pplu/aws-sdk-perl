
package Paws::EC2::CreateSecurityGroupResult;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', request_name => 'groupId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSecurityGroupResult

=head1 ATTRIBUTES


=head2 GroupId => Str

The ID of the security group.


=head2 _request_id => Str


=cut

