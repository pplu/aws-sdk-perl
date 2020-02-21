
package Paws::CodeBuild::PutResourcePolicyOutput;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::PutResourcePolicyOutput

=head1 ATTRIBUTES


=head2 ResourceArn => Str

The ARN of the C<Project> or C<ReportGroup> resource that is associated
with a resource policy.


=head2 _request_id => Str


=cut

1;