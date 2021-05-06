
package Paws::EMR::DescribeSecurityConfiguration;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSecurityConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::DescribeSecurityConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribeSecurityConfiguration - Arguments for method DescribeSecurityConfiguration on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSecurityConfiguration on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method DescribeSecurityConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSecurityConfiguration.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $DescribeSecurityConfigurationOutput =
      $elasticmapreduce->DescribeSecurityConfiguration(
      Name => 'MyXmlString',

      );

    # Results:
    my $CreationDateTime =
      $DescribeSecurityConfigurationOutput->CreationDateTime;
    my $Name = $DescribeSecurityConfigurationOutput->Name;
    my $SecurityConfiguration =
      $DescribeSecurityConfigurationOutput->SecurityConfiguration;

    # Returns a L<Paws::EMR::DescribeSecurityConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/DescribeSecurityConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the security configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSecurityConfiguration in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

