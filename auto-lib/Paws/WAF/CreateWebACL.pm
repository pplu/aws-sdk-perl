# Generated from json/callargs_class.tt

package Paws::WAF::CreateWebACL;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAF::Types qw/WAF_Tag WAF_WafAction/;
  has ChangeToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DefaultAction => (is => 'ro', isa => WAF_WafAction, required => 1, predicate => 1);
  has MetricName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[WAF_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateWebACL');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WAF::CreateWebACLResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1,
                    'ChangeToken' => 1,
                    'DefaultAction' => 1,
                    'MetricName' => 1
                  },
  'types' => {
               'DefaultAction' => {
                                    'type' => 'WAF_WafAction',
                                    'class' => 'Paws::WAF::WafAction'
                                  },
               'ChangeToken' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'MetricName' => {
                                 'type' => 'Str'
                               },
               'Tags' => {
                           'type' => 'ArrayRef[WAF_Tag]',
                           'class' => 'Paws::WAF::Tag'
                         }
             }
}
;
    return $Params_map;
  }

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
      'ChangeToken'   => 'abcd12f2-46da-4fdb-b8d5-fbd4c466928f',
      'DefaultAction' => {
        'Type' => 'ALLOW'
      },
      'MetricName' => 'CreateExample',
      'Name'       => 'CreateExample'
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



=head2 B<REQUIRED> DefaultAction => WAF_WafAction

The action that you want AWS WAF to take when a request doesn't match
the criteria specified in any of the C<Rule> objects that are
associated with the C<WebACL>.



=head2 B<REQUIRED> MetricName => Str

A friendly name or description for the metrics for this C<WebACL>.The
name can contain only alphanumeric characters (A-Z, a-z, 0-9), with
maximum length 128 and minimum length one. It can't contain whitespace
or metric names reserved for AWS WAF, including "All" and
"Default_Action." You can't change C<MetricName> after you create the
C<WebACL>.



=head2 B<REQUIRED> Name => Str

A friendly name or description of the WebACL. You can't change C<Name>
after you create the C<WebACL>.



=head2 Tags => ArrayRef[WAF_Tag]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWebACL in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

