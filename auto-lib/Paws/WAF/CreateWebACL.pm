
package Paws::WAF::CreateWebACL;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has DefaultAction => (is => 'ro', isa => 'Paws::WAF::WafAction', required => 1);
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWebACL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::CreateWebACLResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateWebACL - Arguments for method CreateWebACL on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWebACL on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method CreateWebACL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWebACL.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    # To create a web ACL
    # The following example creates a web ACL named CreateExample.
    my $CreateWebACLResponse = $waf->CreateWebACL(
      {
        'ChangeToken'   => 'abcd12f2-46da-4fdb-b8d5-fbd4c466928f',
        'DefaultAction' => {
          'Type' => 'ALLOW'
        },
        'MetricName' => 'CreateExample',
        'Name'       => 'CreateExample'
      }
    );

    # Results:
    my $ChangeToken = $CreateWebACLResponse->ChangeToken;
    my $WebACL      = $CreateWebACLResponse->WebACL;

    # Returns a L<Paws::WAF::CreateWebACLResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/CreateWebACL>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> DefaultAction => L<Paws::WAF::WafAction>

The action that you want AWS WAF to take when a request doesn't match
the criteria specified in any of the C<Rule> objects that are
associated with the C<WebACL>.



=head2 B<REQUIRED> MetricName => Str

A friendly name or description for the metrics for this C<WebACL>. The
name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name
can't contain white space. You can't change C<MetricName> after you
create the C<WebACL>.



=head2 B<REQUIRED> Name => Str

A friendly name or description of the WebACL. You can't change C<Name>
after you create the C<WebACL>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWebACL in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

