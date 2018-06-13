
package Paws::Config::DeleteAggregationAuthorization;
  use Moose;
  has AuthorizedAccountId => (is => 'ro', isa => 'Str', required => 1);
  has AuthorizedAwsRegion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAggregationAuthorization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DeleteAggregationAuthorization - Arguments for method DeleteAggregationAuthorization on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAggregationAuthorization on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DeleteAggregationAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAggregationAuthorization.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    $config->DeleteAggregationAuthorization(
      AuthorizedAccountId => 'MyAccountId',
      AuthorizedAwsRegion => 'MyAwsRegion',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DeleteAggregationAuthorization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorizedAccountId => Str

The 12-digit account ID of the account authorized to aggregate data.



=head2 B<REQUIRED> AuthorizedAwsRegion => Str

The region authorized to collect aggregated data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAggregationAuthorization in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

