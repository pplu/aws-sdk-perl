
package Paws::WAF::UpdateIPSet;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has IPSetId => (is => 'ro', isa => 'Str', required => 1);
  has Updates => (is => 'ro', isa => 'ArrayRef[Paws::WAF::IPSetUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIPSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::UpdateIPSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::UpdateIPSet - Arguments for method UpdateIPSet on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIPSet on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method UpdateIPSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIPSet.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    # To update an IP set
    # The following example deletes an IPSetDescriptor object in an IP match set
    # with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    my $UpdateIPSetResponse = $waf->UpdateIPSet(
      {
        'ChangeToken' => 'abcd12f2-46da-4fdb-b8d5-fbd4c466928f',
        'IPSetId'     => 'example1ds3t-46da-4fdb-b8d5-abc321j569j5',
        'Updates'     => [

          {
            'Action'          => 'DELETE',
            'IPSetDescriptor' => {
              'Type'  => 'IPV4',
              'Value' => '192.0.2.44/32'
            }
          }
        ]
      }
    );

    # Results:
    my $ChangeToken = $UpdateIPSetResponse->ChangeToken;

    # Returns a L<Paws::WAF::UpdateIPSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/UpdateIPSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> IPSetId => Str

The C<IPSetId> of the IPSet that you want to update. C<IPSetId> is
returned by CreateIPSet and by ListIPSets.



=head2 B<REQUIRED> Updates => ArrayRef[L<Paws::WAF::IPSetUpdate>]

An array of C<IPSetUpdate> objects that you want to insert into or
delete from an IPSet. For more information, see the applicable data
types:

=over

=item *

IPSetUpdate: Contains C<Action> and C<IPSetDescriptor>

=item *

IPSetDescriptor: Contains C<Type> and C<Value>

=back

You can insert a maximum of 1000 addresses in a single request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIPSet in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

