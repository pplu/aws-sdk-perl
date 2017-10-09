
package Paws::Route53::CreateQueryLoggingConfigResponse;
  use Moose;
  has Location => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Location', required => 1);
  has QueryLoggingConfig => (is => 'ro', isa => 'Paws::Route53::QueryLoggingConfig', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateQueryLoggingConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Location => Str

The unique URL representing the new query logging configuration.



=head2 B<REQUIRED> QueryLoggingConfig => L<Paws::Route53::QueryLoggingConfig>

A complex type that contains the ID for a query logging configuration,
the ID of the hosted zone that you want to log queries for, and the ARN
for the log group that you want Amazon Route 53 to send query logs to.




=cut

