
package Paws::EC2::CreateReplaceRootVolumeTaskResult;
  use Moose;
  has ReplaceRootVolumeTask => (is => 'ro', isa => 'Paws::EC2::ReplaceRootVolumeTask', request_name => 'replaceRootVolumeTask', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateReplaceRootVolumeTaskResult

=head1 ATTRIBUTES


=head2 ReplaceRootVolumeTask => L<Paws::EC2::ReplaceRootVolumeTask>

Information about the root volume replacement task.


=head2 _request_id => Str


=cut

