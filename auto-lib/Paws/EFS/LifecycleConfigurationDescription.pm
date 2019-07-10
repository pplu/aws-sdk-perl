
package Paws::EFS::LifecycleConfigurationDescription;
  use Moose;
  has LifecyclePolicies => (is => 'ro', isa => 'ArrayRef[Paws::EFS::LifecyclePolicy]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::LifecycleConfigurationDescription

=head1 ATTRIBUTES


=head2 LifecyclePolicies => ArrayRef[L<Paws::EFS::LifecyclePolicy>]

An array of lifecycle management policies. Currently, EFS supports a
maximum of one policy per file system.


=head2 _request_id => Str


=cut

