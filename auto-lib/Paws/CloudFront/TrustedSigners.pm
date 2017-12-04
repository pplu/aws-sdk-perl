package Paws::CloudFront::TrustedSigners;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'AwsAccountNumber', traits => ['NameInRequest']);
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::TrustedSigners

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::TrustedSigners object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::TrustedSigners object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

A complex type that specifies the AWS accounts, if any, that you want
to allow to create signed URLs for private content.

If you want to require signed URLs in requests for objects in the
target origin that match the C<PathPattern> for this cache behavior,
specify C<true> for C<Enabled>, and specify the applicable values for
C<Quantity> and C<Items>. For more information, see Serving Private
Content through CloudFront
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
in the I<Amazon Amazon CloudFront Developer Guide>.

If you don't want to require signed URLs in requests for objects that
match C<PathPattern>, specify C<false> for C<Enabled> and C<0> for
C<Quantity>. Omit C<Items>.

To add, change, or remove one or more trusted signers, change
C<Enabled> to C<true> (if it's currently C<false>), change C<Quantity>
as applicable, and specify all of the trusted signers that you want to
include in the updated distribution.

For more information about updating the distribution configuration, see
DistributionConfig .

=head1 ATTRIBUTES


=head2 B<REQUIRED> Enabled => Bool

  Specifies whether you want to require viewers to use signed URLs to
access the files specified by C<PathPattern> and C<TargetOriginId>.


=head2 Items => ArrayRef[Str|Undef]

  B<Optional>: A complex type that contains trusted signers for this
cache behavior. If C<Quantity> is C<0>, you can omit C<Items>.


=head2 B<REQUIRED> Quantity => Int

  The number of trusted signers for this cache behavior.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

