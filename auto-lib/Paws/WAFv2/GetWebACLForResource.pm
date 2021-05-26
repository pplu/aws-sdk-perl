
package Paws::WAFv2::GetWebACLForResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWebACLForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFv2::GetWebACLForResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::GetWebACLForResource - Arguments for method GetWebACLForResource on L<Paws::WAFv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWebACLForResource on the
L<AWS WAFV2|Paws::WAFv2> service. Use the attributes of this class
as arguments to method GetWebACLForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWebACLForResource.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFv2');
    my $GetWebACLForResourceResponse = $wafv2->GetWebACLForResource(
      ResourceArn => 'MyResourceArn',

    );

    # Results:
    my $WebACL = $GetWebACLForResourceResponse->WebACL;

    # Returns a L<Paws::WAFv2::GetWebACLForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/GetWebACLForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN (Amazon Resource Name) of the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWebACLForResource in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

