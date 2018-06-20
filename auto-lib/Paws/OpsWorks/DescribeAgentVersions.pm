
package Paws::OpsWorks::DescribeAgentVersions;
  use Moose;
  has ConfigurationManager => (is => 'ro', isa => 'Paws::OpsWorks::StackConfigurationManager');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAgentVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeAgentVersionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeAgentVersions - Arguments for method DescribeAgentVersions on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAgentVersions on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method DescribeAgentVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAgentVersions.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $DescribeAgentVersionsResult = $opsworks->DescribeAgentVersions(
      ConfigurationManager => {
        Name    => 'MyString',    # OPTIONAL
        Version => 'MyString',    # OPTIONAL
      },    # OPTIONAL
      StackId => 'MyString',    # OPTIONAL
    );

    # Results:
    my $AgentVersions = $DescribeAgentVersionsResult->AgentVersions;

    # Returns a L<Paws::OpsWorks::DescribeAgentVersionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/DescribeAgentVersions>

=head1 ATTRIBUTES


=head2 ConfigurationManager => L<Paws::OpsWorks::StackConfigurationManager>

The configuration manager.



=head2 StackId => Str

The stack ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAgentVersions in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

