
package Paws::EC2::DescribeKeyPairs;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has KeyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'KeyName' );
  has KeyPairIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'KeyPairId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeKeyPairs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeKeyPairsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeKeyPairs - Arguments for method DescribeKeyPairs on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeKeyPairs on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeKeyPairs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeKeyPairs.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To display a key pair
    # This example displays the fingerprint for the specified key.
    my $DescribeKeyPairsResult =
      $ec2->DescribeKeyPairs( 'KeyNames' => ['my-key-pair'] );

    # Results:
    my $KeyPairs = $DescribeKeyPairsResult->KeyPairs;

    # Returns a L<Paws::EC2::DescribeKeyPairsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeKeyPairs>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters.

=over

=item *

C<key-pair-id> - The ID of the key pair.

=item *

C<fingerprint> - The fingerprint of the key pair.

=item *

C<key-name> - The name of the key pair.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=item *

C<tag>:E<lt>keyE<gt> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=back




=head2 KeyNames => ArrayRef[Str|Undef]

The key pair names.

Default: Describes all your key pairs.



=head2 KeyPairIds => ArrayRef[Str|Undef]

The IDs of the key pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeKeyPairs in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

