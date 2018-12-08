
package Paws::CodeBuild::ListSourceCredentialsOutput;
  use Moose;
  has SourceCredentialsInfos => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::SourceCredentialsInfo]', traits => ['NameInRequest'], request_name => 'sourceCredentialsInfos' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListSourceCredentialsOutput

=head1 ATTRIBUTES


=head2 SourceCredentialsInfos => ArrayRef[L<Paws::CodeBuild::SourceCredentialsInfo>]

A list of C<SourceCredentialsInfo> objects. Each
C<SourceCredentialsInfo> object includes the authentication type, token
ARN, and type of source provider for one set of credentials.


=head2 _request_id => Str


=cut

1;