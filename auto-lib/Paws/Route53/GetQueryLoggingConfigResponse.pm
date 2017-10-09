
package Paws::Route53::GetQueryLoggingConfigResponse;
  use Moose;
  has QueryLoggingConfig => (is => 'ro', isa => 'Paws::Route53::QueryLoggingConfig', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetQueryLoggingConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryLoggingConfig => L<Paws::Route53::QueryLoggingConfig>

A complex type that contains information about the query logging
configuration that you specified in a GetQueryLoggingConfig request.




=cut

