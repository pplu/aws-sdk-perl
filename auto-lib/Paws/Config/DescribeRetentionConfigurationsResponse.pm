
package Paws::Config::DescribeRetentionConfigurationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RetentionConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Config::RetentionConfiguration]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeRetentionConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 RetentionConfigurations => ArrayRef[L<Paws::Config::RetentionConfiguration>]

Returns a retention configuration object.


=head2 _request_id => Str


=cut

1;