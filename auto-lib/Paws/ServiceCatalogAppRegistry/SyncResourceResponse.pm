
package Paws::ServiceCatalogAppRegistry::SyncResourceResponse;
  use Moose;
  has ActionTaken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionTaken');
  has ApplicationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationArn');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::SyncResourceResponse

=head1 ATTRIBUTES


=head2 ActionTaken => Str

The results of the output if an application is associated with an ARN
value, which could be C<syncStarted> or None.

Valid values are: C<"START_SYNC">, C<"NO_ACTION">
=head2 ApplicationArn => Str

The Amazon resource name (ARN) that specifies the application.


=head2 ResourceArn => Str

The Amazon resource name (ARN) that specifies the resource.


=head2 _request_id => Str


=cut

