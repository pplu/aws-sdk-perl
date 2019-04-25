
package Paws::WAF::GetWebACL;
  use Moose;
  has WebACLId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWebACL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::GetWebACLResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetWebACL - Arguments for method GetWebACL on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWebACL on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method GetWebACL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWebACL.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    # To get a web ACL
    # The following example returns the details of a web ACL with the ID
    # createwebacl-1472061481310.
    my $GetWebACLResponse = $waf->GetWebACL(
      {
        'WebACLId' => 'createwebacl-1472061481310'
      }
    );

    # Results:
    my $WebACL = $GetWebACLResponse->WebACL;

    # Returns a L<Paws::WAF::GetWebACLResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/GetWebACL>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WebACLId => Str

The C<WebACLId> of the WebACL that you want to get. C<WebACLId> is
returned by CreateWebACL and by ListWebACLs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWebACL in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

