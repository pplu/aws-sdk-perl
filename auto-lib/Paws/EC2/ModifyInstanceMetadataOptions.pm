
package Paws::EC2::ModifyInstanceMetadataOptions;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has HttpEndpoint => (is => 'ro', isa => 'Str');
  has HttpPutResponseHopLimit => (is => 'ro', isa => 'Int');
  has HttpTokens => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceMetadataOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyInstanceMetadataOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceMetadataOptions - Arguments for method ModifyInstanceMetadataOptions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstanceMetadataOptions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyInstanceMetadataOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstanceMetadataOptions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyInstanceMetadataOptionsResult =
      $ec2->ModifyInstanceMetadataOptions(
      InstanceId              => 'MyString',
      DryRun                  => 1,             # OPTIONAL
      HttpEndpoint            => 'disabled',    # OPTIONAL
      HttpPutResponseHopLimit => 1,             # OPTIONAL
      HttpTokens              => 'optional',    # OPTIONAL
      );

    # Results:
    my $InstanceId = $ModifyInstanceMetadataOptionsResult->InstanceId;
    my $InstanceMetadataOptions =
      $ModifyInstanceMetadataOptionsResult->InstanceMetadataOptions;

    # Returns a L<Paws::EC2::ModifyInstanceMetadataOptionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyInstanceMetadataOptions>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 HttpEndpoint => Str

This parameter enables or disables the HTTP metadata endpoint on your
instances. If the parameter is not specified, the existing state is
maintained.

If you specify a value of C<disabled>, you will not be able to access
your instance metadata.

Valid values are: C<"disabled">, C<"enabled">

=head2 HttpPutResponseHopLimit => Int

The desired HTTP PUT response hop limit for instance metadata requests.
The larger the number, the further instance metadata requests can
travel. If no parameter is specified, the existing state is maintained.

Possible values: Integers from 1 to 64



=head2 HttpTokens => Str

The state of token usage for your instance metadata requests. If the
parameter is not specified in the request, the default state is
C<optional>.

If the state is C<optional>, you can choose to retrieve instance
metadata with or without a signed token header on your request. If you
retrieve the IAM role credentials without a token, the version 1.0 role
credentials are returned. If you retrieve the IAM role credentials
using a valid signed token, the version 2.0 role credentials are
returned.

If the state is C<required>, you must send a signed token header with
any instance metadata retrieval requests. In this state, retrieving the
IAM role credential always returns the version 2.0 credentials; the
version 1.0 credentials are not available.

Valid values are: C<"optional">, C<"required">

=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstanceMetadataOptions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

