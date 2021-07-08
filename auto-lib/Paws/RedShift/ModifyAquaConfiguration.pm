
package Paws::RedShift::ModifyAquaConfiguration;
  use Moose;
  has AquaConfigurationStatus => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyAquaConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ModifyAquaOutputMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyAquaConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyAquaConfiguration - Arguments for method ModifyAquaConfiguration on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyAquaConfiguration on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ModifyAquaConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyAquaConfiguration.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ModifyAquaOutputMessage = $redshift->ModifyAquaConfiguration(
      ClusterIdentifier       => 'MyString',
      AquaConfigurationStatus => 'enabled',    # OPTIONAL
    );

    # Results:
    my $AquaConfiguration = $ModifyAquaOutputMessage->AquaConfiguration;

    # Returns a L<Paws::RedShift::ModifyAquaOutputMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ModifyAquaConfiguration>

=head1 ATTRIBUTES


=head2 AquaConfigurationStatus => Str

The new value of AQUA configuration status. Possible values include the
following.

=over

=item *

enabled - Use AQUA if it is available for the current AWS Region and
Amazon Redshift node type.

=item *

disabled - Don't use AQUA.

=item *

auto - Amazon Redshift determines whether to use AQUA.

=back


Valid values are: C<"enabled">, C<"disabled">, C<"auto">

=head2 B<REQUIRED> ClusterIdentifier => Str

The identifier of the cluster to be modified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyAquaConfiguration in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

