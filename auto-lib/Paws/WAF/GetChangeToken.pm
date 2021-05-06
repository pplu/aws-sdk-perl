
package Paws::WAF::GetChangeToken;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetChangeToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::GetChangeTokenResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetChangeToken - Arguments for method GetChangeToken on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetChangeToken on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method GetChangeToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetChangeToken.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
   # To get a change token
   # The following example returns a change token to use for a create, update or
   # delete operation.
    my $GetChangeTokenResponse = $waf->GetChangeToken();

    # Results:
    my $ChangeToken = $GetChangeTokenResponse->ChangeToken;

    # Returns a L<Paws::WAF::GetChangeTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/GetChangeToken>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetChangeToken in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

