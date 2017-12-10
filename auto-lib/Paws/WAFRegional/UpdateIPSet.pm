
package Paws::WAFRegional::UpdateIPSet;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has IPSetId => (is => 'ro', isa => 'Str', required => 1);
  has Updates => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::IPSetUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIPSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::UpdateIPSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::UpdateIPSet - Arguments for method UpdateIPSet on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIPSet on the 
AWS WAF Regional service. Use the attributes of this class
as arguments to method UpdateIPSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIPSet.

As an example:

  $service_obj->UpdateIPSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> IPSetId => Str

The C<IPSetId> of the IPSet that you want to update. C<IPSetId> is
returned by CreateIPSet and by ListIPSets.



=head2 B<REQUIRED> Updates => ArrayRef[L<Paws::WAFRegional::IPSetUpdate>]

An array of C<IPSetUpdate> objects that you want to insert into or
delete from an IPSet. For more information, see the applicable data
types:

=over

=item *

IPSetUpdate: Contains C<Action> and C<IPSetDescriptor>

=item *

IPSetDescriptor: Contains C<Type> and C<Value>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIPSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

