
package Paws::Config::PutConfigurationAggregator;
  use Moose;
  has AccountAggregationSources => (is => 'ro', isa => 'ArrayRef[Paws::Config::AccountAggregationSource]');
  has ConfigurationAggregatorName => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationAggregationSource => (is => 'ro', isa => 'Paws::Config::OrganizationAggregationSource');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutConfigurationAggregator');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::PutConfigurationAggregatorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutConfigurationAggregator - Arguments for method PutConfigurationAggregator on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConfigurationAggregator on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutConfigurationAggregator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutConfigurationAggregator.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $PutConfigurationAggregatorResponse =
      $config->PutConfigurationAggregator(
      ConfigurationAggregatorName => 'MyConfigurationAggregatorName',
      AccountAggregationSources   => [
        {
          AccountIds    => [ 'MyAccountId', ... ],    # min: 1
          AllAwsRegions => 1,                         # OPTIONAL
          AwsRegions    => [ 'MyString', ... ],       # min: 1; OPTIONAL
        },
        ...
      ],                                              # OPTIONAL
      OrganizationAggregationSource => {
        RoleArn       => 'MyString',
        AllAwsRegions => 1,                           # OPTIONAL
        AwsRegions    => [ 'MyString', ... ],         # min: 1; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $ConfigurationAggregator =
      $PutConfigurationAggregatorResponse->ConfigurationAggregator;

    # Returns a L<Paws::Config::PutConfigurationAggregatorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutConfigurationAggregator>

=head1 ATTRIBUTES


=head2 AccountAggregationSources => ArrayRef[L<Paws::Config::AccountAggregationSource>]

A list of AccountAggregationSource object.



=head2 B<REQUIRED> ConfigurationAggregatorName => Str

The name of the configuration aggregator.



=head2 OrganizationAggregationSource => L<Paws::Config::OrganizationAggregationSource>

An OrganizationAggregationSource object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutConfigurationAggregator in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

