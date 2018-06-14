
package Paws::WAFRegional::CreateIPSet;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIPSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::CreateIPSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::CreateIPSet - Arguments for method CreateIPSet on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIPSet on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method CreateIPSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIPSet.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    # To create an IP set
    # The following example creates an IP match set named MyIPSetFriendlyName.
    my $CreateIPSetResponse = $waf -regional->CreateIPSet(
      {
        'ChangeToken' => 'abcd12f2-46da-4fdb-b8d5-fbd4c466928f',
        'Name'        => 'MyIPSetFriendlyName'
      }
    );

    # Results:
    my $ChangeToken = $CreateIPSetResponse->ChangeToken;
    my $IPSet       = $CreateIPSetResponse->IPSet;

    # Returns a L<Paws::WAFRegional::CreateIPSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/CreateIPSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> Name => Str

A friendly name or description of the IPSet. You can't change C<Name>
after you create the C<IPSet>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIPSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

