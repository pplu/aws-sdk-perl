
package Paws::Config::DescribeRetentionConfigurations;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RetentionConfigurationNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRetentionConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeRetentionConfigurationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeRetentionConfigurations - Arguments for method DescribeRetentionConfigurations on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRetentionConfigurations on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DescribeRetentionConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRetentionConfigurations.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DescribeRetentionConfigurationsResponse =
      $config->DescribeRetentionConfigurations(
      NextToken                   => 'MyNextToken',    # OPTIONAL
      RetentionConfigurationNames => [
        'MyRetentionConfigurationName', ...            # min: 1, max: 256
      ],                                               # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeRetentionConfigurationsResponse->NextToken;
    my $RetentionConfigurations =
      $DescribeRetentionConfigurationsResponse->RetentionConfigurations;

    # Returns a L<Paws::Config::DescribeRetentionConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DescribeRetentionConfigurations>

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.



=head2 RetentionConfigurationNames => ArrayRef[Str|Undef]

A list of names of retention configurations for which you want details.
If you do not specify a name, AWS Config returns details for all the
retention configurations for that account.

Currently, AWS Config supports only one retention configuration per
region in your account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRetentionConfigurations in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

