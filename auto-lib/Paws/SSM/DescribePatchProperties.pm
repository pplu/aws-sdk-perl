
package Paws::SSM::DescribePatchProperties;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Str', required => 1);
  has PatchSet => (is => 'ro', isa => 'Str');
  has Property => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePatchProperties');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribePatchPropertiesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribePatchProperties - Arguments for method DescribePatchProperties on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePatchProperties on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribePatchProperties.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePatchProperties.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribePatchPropertiesResult = $ssm->DescribePatchProperties(
      OperatingSystem => 'WINDOWS',
      Property        => 'PRODUCT',
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
      PatchSet        => 'OS',             # OPTIONAL
    );

    # Results:
    my $NextToken  = $DescribePatchPropertiesResult->NextToken;
    my $Properties = $DescribePatchPropertiesResult->Properties;

    # Returns a L<Paws::SSM::DescribePatchPropertiesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribePatchProperties>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 B<REQUIRED> OperatingSystem => Str

The operating system type for which to list patches.

Valid values are: C<"WINDOWS">, C<"AMAZON_LINUX">, C<"AMAZON_LINUX_2">, C<"UBUNTU">, C<"REDHAT_ENTERPRISE_LINUX">, C<"SUSE">, C<"CENTOS">, C<"ORACLE_LINUX">, C<"DEBIAN">, C<"MACOS">

=head2 PatchSet => Str

Indicates whether to list patches for the Windows operating system or
for Microsoft applications. Not applicable for the Linux or macOS
operating systems.

Valid values are: C<"OS">, C<"APPLICATION">

=head2 B<REQUIRED> Property => Str

The patch property for which you want to view patch details.

Valid values are: C<"PRODUCT">, C<"PRODUCT_FAMILY">, C<"CLASSIFICATION">, C<"MSRC_SEVERITY">, C<"PRIORITY">, C<"SEVERITY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePatchProperties in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

