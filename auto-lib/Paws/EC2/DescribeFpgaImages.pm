
package Paws::EC2::DescribeFpgaImages;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has FpgaImageIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'FpgaImageId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Owners => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'Owner' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFpgaImages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeFpgaImagesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFpgaImages - Arguments for method DescribeFpgaImages on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFpgaImages on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeFpgaImages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFpgaImages.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeFpgaImagesResult = $ec2->DescribeFpgaImages(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],                       # OPTIONAL
        },
        ...
      ],                           # OPTIONAL
      FpgaImageIds => [
        'MyString', ...            # OPTIONAL
      ],                           # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyNextToken', # OPTIONAL
      Owners     => [
        'MyString', ...            # OPTIONAL
      ],                           # OPTIONAL
    );

    # Results:
    my $FpgaImages = $DescribeFpgaImagesResult->FpgaImages;
    my $NextToken  = $DescribeFpgaImagesResult->NextToken;

    # Returns a L<Paws::EC2::DescribeFpgaImagesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeFpgaImages>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<create-time> - The creation time of the AFI.

=item *

C<fpga-image-id> - The FPGA image identifier (AFI ID).

=item *

C<fpga-image-global-id> - The global FPGA image identifier (AGFI ID).

=item *

C<name> - The name of the AFI.

=item *

C<owner-id> - The AWS account ID of the AFI owner.

=item *

C<product-code> - The product code.

=item *

C<shell-version> - The version of the AWS Shell that was used to create
the bitstream.

=item *

C<state> - The state of the AFI (C<pending> | C<failed> | C<available>
| C<unavailable>).

=item *

C<tag>:E<lt>keyE<gt> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=item *

C<update-time> - The time of the most recent update.

=back




=head2 FpgaImageIds => ArrayRef[Str|Undef]

One or more AFI IDs.



=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token to retrieve the next page of results.



=head2 Owners => ArrayRef[Str|Undef]

Filters the AFI by owner. Specify an AWS account ID, C<self> (owner is
the sender of the request), or an AWS owner alias (valid values are
C<amazon> | C<aws-marketplace>).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFpgaImages in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

