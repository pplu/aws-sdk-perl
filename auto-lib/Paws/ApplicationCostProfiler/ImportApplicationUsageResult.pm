
package Paws::ApplicationCostProfiler::ImportApplicationUsageResult;
  use Moose;
  has ImportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationCostProfiler::ImportApplicationUsageResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportId => Str

ID of the import request.


=head2 _request_id => Str


=cut

