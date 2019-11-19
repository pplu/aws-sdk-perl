
package Paws::Route53::ListHealthChecksResponse;
  use Moo;

  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::Route53::Types qw/Route53_HealthCheck/;
  has HealthChecks => (is => 'ro', isa => ArrayRef[Route53_HealthCheck], required => 1);
  has IsTruncated => (is => 'ro', isa => Bool, required => 1);
  has Marker => (is => 'ro', isa => Str, required => 1);
  has MaxItems => (is => 'ro', isa => Str, required => 1);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'MaxItems' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HealthChecks' => {
                                   'type' => 'ArrayRef[Route53_HealthCheck]',
                                   'class' => 'Paws::Route53::HealthCheck'
                                 },
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'MaxItems' => 1,
                    'IsTruncated' => 1,
                    'Marker' => 1,
                    'HealthChecks' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListHealthChecksResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthChecks => ArrayRef[Route53_HealthCheck]

A complex type that contains one C<HealthCheck> element for each health
check that is associated with the current AWS account.



=head2 B<REQUIRED> IsTruncated => Bool

A flag that indicates whether there are more health checks to be
listed. If the response was truncated, you can get the next group of
health checks by submitting another C<ListHealthChecks> request and
specifying the value of C<NextMarker> in the C<marker> parameter.



=head2 B<REQUIRED> Marker => Str

For the second and subsequent calls to C<ListHealthChecks>, C<Marker>
is the value that you specified for the C<marker> parameter in the
previous request.



=head2 B<REQUIRED> MaxItems => Str

The value that you specified for the C<maxitems> parameter in the call
to C<ListHealthChecks> that produced the current response.



=head2 NextMarker => Str

If C<IsTruncated> is C<true>, the value of C<NextMarker> identifies the
first health check that Amazon Route 53 returns if you submit another
C<ListHealthChecks> request and specify the value of C<NextMarker> in
the C<marker> parameter.




=cut

