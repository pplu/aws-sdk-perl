
package Paws::EMR::PutBlockPublicAccessConfiguration;
  use Moose;
  has BlockPublicAccessConfiguration => (is => 'ro', isa => 'Paws::EMR::BlockPublicAccessConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBlockPublicAccessConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::PutBlockPublicAccessConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::PutBlockPublicAccessConfiguration - Arguments for method PutBlockPublicAccessConfiguration on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBlockPublicAccessConfiguration on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method PutBlockPublicAccessConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBlockPublicAccessConfiguration.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $PutBlockPublicAccessConfigurationOutput =
      $elasticmapreduce->PutBlockPublicAccessConfiguration(
      BlockPublicAccessConfiguration => {
        BlockPublicSecurityGroupRules          => 1,
        PermittedPublicSecurityGroupRuleRanges => [
          {
            MinRange => 1,    # max: 65535
            MaxRange => 1,    # max: 65535
          },
          ...
        ],                    # OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/PutBlockPublicAccessConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlockPublicAccessConfiguration => L<Paws::EMR::BlockPublicAccessConfiguration>

A configuration for Amazon EMR block public access. The configuration
applies to all clusters created in your account for the current Region.
The configuration specifies whether block public access is enabled. If
block public access is enabled, security groups associated with the
cluster cannot have rules that allow inbound traffic from 0.0.0.0/0 or
::/0 on a port, unless the port is specified as an exception using
C<PermittedPublicSecurityGroupRuleRanges> in the
C<BlockPublicAccessConfiguration>. By default, Port 22 (SSH) is an
exception, and public access is allowed on this port. You can change
this by updating C<BlockPublicSecurityGroupRules> to remove the
exception.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBlockPublicAccessConfiguration in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

