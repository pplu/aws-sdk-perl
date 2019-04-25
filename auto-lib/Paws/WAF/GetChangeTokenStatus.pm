
package Paws::WAF::GetChangeTokenStatus;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetChangeTokenStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::GetChangeTokenStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetChangeTokenStatus - Arguments for method GetChangeTokenStatus on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetChangeTokenStatus on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method GetChangeTokenStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetChangeTokenStatus.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    # To get the change token status
    # The following example returns the status of a change token with the ID
    # abcd12f2-46da-4fdb-b8d5-fbd4c466928f.
    my $GetChangeTokenStatusResponse = $waf->GetChangeTokenStatus(
      {
        'ChangeToken' => 'abcd12f2-46da-4fdb-b8d5-fbd4c466928f'
      }
    );

    # Results:
    my $ChangeTokenStatus = $GetChangeTokenStatusResponse->ChangeTokenStatus;

    # Returns a L<Paws::WAF::GetChangeTokenStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/GetChangeTokenStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The change token for which you want to get the status. This change
token was previously returned in the C<GetChangeToken> response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetChangeTokenStatus in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

