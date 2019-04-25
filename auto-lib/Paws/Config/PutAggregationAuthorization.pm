
package Paws::Config::PutAggregationAuthorization;
  use Moose;
  has AuthorizedAccountId => (is => 'ro', isa => 'Str', required => 1);
  has AuthorizedAwsRegion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAggregationAuthorization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::PutAggregationAuthorizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutAggregationAuthorization - Arguments for method PutAggregationAuthorization on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAggregationAuthorization on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutAggregationAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAggregationAuthorization.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $PutAggregationAuthorizationResponse =
      $config->PutAggregationAuthorization(
      AuthorizedAccountId => 'MyAccountId',
      AuthorizedAwsRegion => 'MyAwsRegion',

      );

    # Results:
    my $AggregationAuthorization =
      $PutAggregationAuthorizationResponse->AggregationAuthorization;

    # Returns a L<Paws::Config::PutAggregationAuthorizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutAggregationAuthorization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorizedAccountId => Str

The 12-digit account ID of the account authorized to aggregate data.



=head2 B<REQUIRED> AuthorizedAwsRegion => Str

The region authorized to collect aggregated data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAggregationAuthorization in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

