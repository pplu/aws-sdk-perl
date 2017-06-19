
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

Paws::EC2::DescribeFpgaImages - Arguments for method DescribeFpgaImages on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFpgaImages on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeFpgaImages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFpgaImages.

As an example:

  $service_obj->DescribeFpgaImages(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

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

C<tag>:I<key>=I<value> - The key/value combination of a tag assigned to
the resource. Specify the key of the tag in the filter name and the
value of the tag in the filter value. For example, for the tag
Purpose=X, specify C<tag:Purpose> for the filter name and C<X> for the
filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. This filter is
independent of the C<tag-value> filter. For example, if you use both
the filter "tag-key=Purpose" and the filter "tag-value=X", you get any
resources assigned both the tag key Purpose (regardless of what the
tag's value is), and the tag value X (regardless of what the tag's key
is). If you want to list only resources where Purpose is X, see the
C<tag>:I<key>=I<value> filter.

=item *

C<tag-value> - The value of a tag assigned to the resource. This filter
is independent of the C<tag-key> filter.

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

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

