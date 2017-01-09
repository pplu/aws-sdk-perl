
package Paws::WAFRegional::GetIPSetResponse;
  use Moose;
  has IPSet => (is => 'ro', isa => 'Paws::WAFRegional::IPSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetIPSetResponse

=head1 ATTRIBUTES


=head2 IPSet => L<Paws::WAFRegional::IPSet>

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