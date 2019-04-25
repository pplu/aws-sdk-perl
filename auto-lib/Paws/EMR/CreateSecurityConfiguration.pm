
package Paws::EMR::CreateSecurityConfiguration;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SecurityConfiguration => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSecurityConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::CreateSecurityConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::CreateSecurityConfiguration - Arguments for method CreateSecurityConfiguration on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSecurityConfiguration on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method CreateSecurityConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSecurityConfiguration.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $CreateSecurityConfigurationOutput =
      $elasticmapreduce->CreateSecurityConfiguration(
      Name                  => 'MyXmlString',
      SecurityConfiguration => 'MyString',

      );

    # Results:
    my $CreationDateTime = $CreateSecurityConfigurationOutput->CreationDateTime;
    my $Name             = $CreateSecurityConfigurationOutput->Name;

    # Returns a L<Paws::EMR::CreateSecurityConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/CreateSecurityConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the security configuration.



=head2 B<REQUIRED> SecurityConfiguration => Str

The security configuration details in JSON format. For JSON parameters
and examples, see Use Security Configurations to Set Up Cluster
Security
(http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-security-configurations.html)
in the I<Amazon EMR Management Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSecurityConfiguration in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

