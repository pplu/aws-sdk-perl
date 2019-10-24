# Generated from json/callresult_class.tt

package Paws::WAF::GetIPSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_IPSet/;
  has IPSet => (is => 'ro', isa => WAF_IPSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IPSet' => {
                            'class' => 'Paws::WAF::IPSet',
                            'type' => 'WAF_IPSet'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetIPSetResponse

=head1 ATTRIBUTES


=head2 IPSet => WAF_IPSet

Information about the IPSet that you specified in the C<GetIPSet>
request. For more information, see the following topics:

=over

=item *

IPSet: Contains C<IPSetDescriptors>, C<IPSetId>, and C<Name>

=item *

C<IPSetDescriptors>: Contains an array of IPSetDescriptor objects. Each
C<IPSetDescriptor> object contains C<Type> and C<Value>

=back



=head2 _request_id => Str


=cut

1;