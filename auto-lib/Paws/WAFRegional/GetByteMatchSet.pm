
package Paws::WAFRegional::GetByteMatchSet;
  use Moose;
  has ByteMatchSetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetByteMatchSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::GetByteMatchSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetByteMatchSet - Arguments for method GetByteMatchSet on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetByteMatchSet on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method GetByteMatchSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetByteMatchSet.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    # To get a byte match set
    # The following example returns the details of a byte match set with the ID
    # exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
    my $GetByteMatchSetResponse = $waf -regional->GetByteMatchSet(
      {
        'ByteMatchSetId' => 'exampleIDs3t-46da-4fdb-b8d5-abc321j569j5'
      }
    );

    # Results:
    my $ByteMatchSet = $GetByteMatchSetResponse->ByteMatchSet;

    # Returns a L<Paws::WAFRegional::GetByteMatchSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/GetByteMatchSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ByteMatchSetId => Str

The C<ByteMatchSetId> of the ByteMatchSet that you want to get.
C<ByteMatchSetId> is returned by CreateByteMatchSet and by
ListByteMatchSets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetByteMatchSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

