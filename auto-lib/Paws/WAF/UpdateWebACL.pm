# Generated from json/callargs_class.tt

package Paws::WAF::UpdateWebACL;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAF::Types qw/WAF_WafAction WAF_WebACLUpdate/;
  has ChangeToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DefaultAction => (is => 'ro', isa => WAF_WafAction, predicate => 1);
  has Updates => (is => 'ro', isa => ArrayRef[WAF_WebACLUpdate], predicate => 1);
  has WebACLId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateWebACL');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WAF::UpdateWebACLResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DefaultAction' => {
                                    'class' => 'Paws::WAF::WafAction',
                                    'type' => 'WAF_WafAction'
                                  },
               'Updates' => {
                              'class' => 'Paws::WAF::WebACLUpdate',
                              'type' => 'ArrayRef[WAF_WebACLUpdate]'
                            },
               'ChangeToken' => {
                                  'type' => 'Str'
                                },
               'WebACLId' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'WebACLId' => 1,
                    'ChangeToken' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::UpdateWebACL - Arguments for method UpdateWebACL on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWebACL on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method UpdateWebACL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWebACL.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    # To update a Web ACL
    # The following example deletes an ActivatedRule object in a WebACL with the
    # ID webacl-1472061481310.
    my $UpdateWebACLResponse = $waf->UpdateWebACL(
      'ChangeToken'   => 'abcd12f2-46da-4fdb-b8d5-fbd4c466928f',
      'DefaultAction' => {
        'Type' => 'ALLOW'
      },
      'Updates' => [

        {
          'Action'        => 'DELETE',
          'ActivatedRule' => {
            'Action' => {
              'Type' => 'ALLOW'
            },
            'Priority' => 1,
            'RuleId'   => 'WAFRule-1-Example'
          }
        }
      ],
      'WebACLId' => 'webacl-1472061481310'
    );

    # Results:
    my $ChangeToken = $UpdateWebACLResponse->ChangeToken;

    # Returns a L<Paws::WAF::UpdateWebACLResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/UpdateWebACL>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 DefaultAction => WAF_WafAction

A default action for the web ACL, either ALLOW or BLOCK. AWS WAF
performs the default action if a request doesn't match the criteria in
any of the rules in a web ACL.



=head2 Updates => ArrayRef[WAF_WebACLUpdate]

An array of updates to make to the WebACL.

An array of C<WebACLUpdate> objects that you want to insert into or
delete from a WebACL. For more information, see the applicable data
types:

=over

=item *

WebACLUpdate: Contains C<Action> and C<ActivatedRule>

=item *

ActivatedRule: Contains C<Action>, C<OverrideAction>, C<Priority>,
C<RuleId>, and C<Type>. C<ActivatedRule|OverrideAction> applies only
when updating or adding a C<RuleGroup> to a C<WebACL>. In this case,
you do not use C<ActivatedRule|Action>. For all other update requests,
C<ActivatedRule|Action> is used instead of
C<ActivatedRule|OverrideAction>.

=item *

WafAction: Contains C<Type>

=back




=head2 B<REQUIRED> WebACLId => Str

The C<WebACLId> of the WebACL that you want to update. C<WebACLId> is
returned by CreateWebACL and by ListWebACLs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWebACL in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

